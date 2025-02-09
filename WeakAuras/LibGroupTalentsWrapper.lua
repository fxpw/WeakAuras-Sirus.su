if not WeakAuras.IsLibsOK() then return end

local AddonName, Private = ...

-- Lua APIs
local unpack = unpack

-- WoW APIs
local UnitName, UnitIsUnit, UnitClass, GetNumGroupMembers = UnitName, UnitIsUnit, UnitClass, GetNumGroupMembers

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
  --- LibGroupTalents callback for talents and glyphs
  function Private.LibGroupTalentsWrapper:LibGroupTalentsCallback(_, _, unit)
    if not unit then
      return
    end

    local unitName = UnitName(unit)
    local ownName = UnitName("player")

    local numMembers = GetNumGroupMembers()
    local units
    if IsInRaid() then
      units = WeakAuras.raidUnits
    else
      units = WeakAuras.partyUnits
    end

    for i = 1, numMembers do
      local groupUnit = units[i]
      if groupUnit then
        local groupUnitName = UnitName(groupUnit)
        if groupUnitName then
          nameToUnitMap[groupUnitName] = groupUnit
        end
      end
    end
    nameToUnitMap[ownName] = "player"

    for storedName in pairs(nameToSpecMap) do
      if not nameToUnitMap[storedName] then
        nameToSpecMap[storedName] = nil
        nameToGlyphs[storedName] = nil
      end
    end

    local specInfo = { LibGroupTalents:GetUnitTalentSpec(unit) }
    local class = select(2, UnitClass(unit))
    if specInfo and #specInfo > 0 and class then
      nameToSpecMap[unitName] = class .. specInfo[1]
    end

    local glyphs = { LibGroupTalents:GetUnitGlyphs(unit) }
    if glyphs and #glyphs > 0 then
      nameToGlyphs[unitName] = {}
      for _, glyphId in ipairs(glyphs) do
        nameToGlyphs[unitName][glyphId] = true
      end
    end

    if nameToUnitMap[unitName] then
      for _, f in ipairs(subscribers) do
        f(nameToUnitMap[unitName])
      end
    end
  end

  LibGroupTalents.RegisterCallback(Private.LibGroupTalentsWrapper, "LibGroupTalents_Update", "LibGroupTalentsCallback")

  function Private.LibGroupTalentsWrapper.Register(f)
    table.insert(subscribers, f)
  end

  function Private.LibGroupTalentsWrapper.SpecForUnit(unit)
    local unitName = UnitName(unit)
    local class = select(2, UnitClass(unit))

    if nameToSpecMap[unitName] then
      return nameToSpecMap[unitName]
    end

    if UnitIsUnit(unit, "player") and class then
      local specInfo = LibGroupTalents:GetUnitTalentSpec(unit)
      if specInfo and #specInfo > 0 then
        return class .. specInfo[1]
      end
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
