if not WeakAuras.IsLibsOK() then return end

local AddonName, Private = ...

local timer = WeakAuras.timer;
local eventLock = false

local nameToGlyphs = {}
local nameToSpecMap = {}
local nameToUnitMap = {
  [UnitName("player")] = "player"
}

local subscribers = {}

Private.LibGroupTalentsWrapper = {
  Register = function(callback) end,
  SpecForUnit = function(unit) end,
  SpecRolePositionForUnit = function(unit) end,
  CheckTalentForUnit = function(unit, talentId) end,
  CheckGlyphForUnit = function(unit, glyphId) end,
}

local LibGroupTalents = LibStub("LibGroupTalents-1.0")
if LibGroupTalents then
  local frame = CreateFrame("Frame")
  frame:RegisterEvent("PLAYER_LOGIN")
  frame:RegisterEvent("RAID_ROSTER_UPDATE")
  frame:RegisterEvent("PARTY_MEMBERS_CHANGED")

  local function ProcessEvent()
    eventLock = false
    local ownName = UnitName("player")

    nameToUnitMap = {}
    nameToUnitMap[ownName] = "player"

    local numMembers
    local units
    if IsInRaid() then
      numMembers = GetNumGroupMembers()
      units = WeakAuras.raidUnits
    else
      numMembers = GetNumPartyMembers()
      units = WeakAuras.partyUnits
    end

    for i = 1, numMembers do
      local unit = units[i]
      local name = UnitName(unit)
      nameToUnitMap[name] = unit
    end

    for name in pairs(nameToSpecMap) do
      if not nameToUnitMap[name] then
        nameToSpecMap[name] = nil
        nameToGlyphs[name] = nil
      end
    end
  end

  frame:SetScript("OnEvent", function()
    if not eventLock then
      eventLock = true
      timer:ScheduleTimer(ProcessEvent, 1.5)
    end
  end)

  --- LibGroupTalents callback for talents and glyphs
  function Private.LibGroupTalentsWrapper:LibGroupTalentsCallback(_, _, unit)
    local unitName = UnitName(unit)

    -- Update specialization data
    local specInfo = { LibGroupTalents:GetUnitTalentSpec(unit) }
    if specInfo and #specInfo > 0 then
      nameToSpecMap[unitName] = specInfo
    end

    -- Update glyphs
    local glyphs = { LibGroupTalents:GetUnitGlyphs(unit) }
    if glyphs and #glyphs > 0 then
      nameToGlyphs[unitName] = {}
      for _, glyphId in ipairs(glyphs) do
        nameToGlyphs[unitName][glyphId] = true
      end
    end

    -- Notify subscribers
    for _, f in ipairs(subscribers) do
      print(f)
      f(nameToUnitMap[unitName])
    end
  end

  LibGroupTalents.RegisterCallback(Private.LibGroupTalentsWrapper, "LibGroupTalents_Update", "LibGroupTalentsCallback")

  function Private.LibGroupTalentsWrapper.Register(f)
    table.insert(subscribers, f)
  end

  function Private.LibGroupTalentsWrapper.SpecForUnit(unit)
    local unitName = UnitName(unit)
    if nameToSpecMap[unitName] and nameToSpecMap[unitName][1] then
      return nameToSpecMap[unitName] and nameToSpecMap[unitName][1]
    end

    if UnitIsUnit(unit, "player") then
      return LibGroupTalents:GetUnitTalentSpec(unit)
    end
  end

  function Private.LibGroupTalentsWrapper.SpecRolePositionForUnit(unit)
    local data = nameToSpecMap[UnitName(unit)]
    if data then
      return unpack(data)
    end

    if UnitIsUnit(unit, "player") then
      return LibGroupTalents:GetUnitTalentSpec(unit)
    end
  end

  function Private.LibGroupTalentsWrapper.CheckTalentForUnit(unit, talentId)
    return UnitIsUnit(unit, "player") and LibGroupTalents:UnitHasTalent(unit, talentId) and true or false
  end

  function Private.LibGroupTalentsWrapper.CheckGlyphForUnit(unit, glyphId)
    local unitName = UnitName(unit)
    if nameToGlyphs[unitName] and nameToGlyphs[unitName][glyphId] then
        return true
    end

    if UnitIsUnit(unit, "player") then
      local glyphs = { LibGroupTalents:GetUnitGlyphs(unit) }
        for _, id in ipairs(glyphs) do
            if id == glyphId then
                return true
            end
        end
    end
end
else
  function Private.LibGroupTalentsWrapper.Register(f) end
  function Private.LibGroupTalentsWrapper.SpecForUnit(unit) return nil end
  function Private.LibGroupTalentsWrapper.SpecRolePositionForUnit(unit) return nil end
  function Private.LibGroupTalentsWrapper.CheckTalentForUnit(unit) return nil end
  function Private.LibGroupTalentsWrapper.CheckGlyphForUnit(unit) return nil end
end

-- Export for GenericTrigger
WeakAuras.SpecForUnit = Private.LibGroupTalentsWrapper.SpecForUnit
WeakAuras.SpecRolePositionForUnit = Private.LibGroupTalentsWrapper.SpecRolePositionForUnit
WeakAuras.CheckTalentForUnit = Private.LibGroupTalentsWrapper.CheckTalentForUnit
WeakAuras.CheckGlyphForUnit = Private.LibGroupTalentsWrapper.CheckGlyphForUnit
