if not WeakAuras.IsLibsOK() then return end

local AddonName, Private = ...

-- Lua APIs
local unpack, wipe = unpack, wipe

-- WoW APIs
local UnitName, UnitIsUnit, UnitClass, GetNumGroupMembers = UnitName, UnitIsUnit, UnitClass, GetNumGroupMembers

local LibGroupTalents = LibStub("LibGroupTalents-1.0")

local nameToGlyphs = {}
local nameToSpecMap = {}
local nameToUnitRole = {}
local nameToUnitMap = {
  [UnitName("player")] = "player"
}

local subscribers = {}

Private.LibGroupTalentsWrapper = {
  Register = function(f) end,
  SpecForUnit = function(unit) end,
  GetUnitRole = function(unit) end,
  SpecRolePositionForUnit = function(unit) end,
  CheckTalentForUnit = function(unit) end,
  CheckGlyphForUnit = function(unit) end,
}

if LibGroupTalents then
  --- LibGroupTalents callback for talents and glyphs
  function Private.LibGroupTalentsWrapper:LibGroupTalentsCallback(_, _, unit)
    if not unit then
      return
    end

    local unitName = UnitName(unit)
    local ownName = UnitName("player")

    local numMembers = GetNumGroupMembers()
    local units = IsInRaid() and WeakAuras.raidUnits or WeakAuras.partyUnits

    nameToUnitMap = { [ownName] = "player" }
    for i = 1, numMembers do
      local groupUnitName = UnitName(units[i])
      if groupUnitName then
        nameToUnitMap[groupUnitName] = groupUnit
      end
    end

    for storedName in pairs(nameToSpecMap) do
      if not nameToUnitMap[storedName] then
        nameToSpecMap[storedName] = nil
        nameToGlyphs[storedName] = nil
        nameToUnitRole[storedName] = nil
      end
    end

    local specInfo = { LibGroupTalents:GetUnitTalentSpec(unit) }
    local class = select(2, UnitClass(unit))
    if specInfo and #specInfo > 0 and class then
      nameToSpecMap[unitName] = {
        class .. specInfo[1], unpack(specInfo)
      }
    end

    nameToUnitRole[unitName] = LibGroupTalents:GetUnitRole(unit)

    nameToGlyphs[unitName] = {}
    for _, glyphId in ipairs({ LibGroupTalents:GetUnitGlyphs(unit) }) do
      if glyphId then
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
  LibGroupTalents.RegisterCallback(Private.LibGroupTalentsWrapper, "LibGroupTalents_GlyphUpdate", "LibGroupTalentsCallback")

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
      local specInfo = { LibGroupTalents:GetUnitTalentSpec(unit) }
      if specInfo and #specInfo > 0 then
        return class .. specInfo[1], unpack(specInfo)
      end
    end
  end

  function Private.LibGroupTalentsWrapper.GetUnitRole(unit)
    local unitName = UnitName(unit)

    if nameToUnitRole[unitName] then
      return nameToUnitRole[unitName]
    end

    if UnitIsUnit(unit, "player") then
      local unitRole = LibGroupTalents:GetUnitRole(unit)
      return unitRole
    end
  end

  function Private.LibGroupTalentsWrapper.SpecRolePositionForUnit(unit)
    local data = nameToSpecMap[UnitName(unit)]
    if data then
      return unpack(data, 2)
    end

    if UnitIsUnit(unit, "player") then
      return LibGroupTalents:GetUnitTalentSpec(unit)
    end
  end

  function Private.LibGroupTalentsWrapper.CheckTalentForUnit(unit, talentId)
    return UnitIsUnit(unit, "player") and LibGroupTalents:UnitHasTalent(unit, talentId) and true or nil
  end

  function Private.LibGroupTalentsWrapper.CheckGlyphForUnit(unit, glyphId)
    local unitName = UnitName(unit)
    if nameToGlyphs[unitName] and nameToGlyphs[unitName][glyphId] then
      return true
    end

    if UnitIsUnit(unit, "player") then
      local glyphs = { LibGroupTalents:GetUnitGlyphs(unit) }
      if glyphs then
        for _, id in ipairs(glyphs) do
          if id == glyphId then
            return true
          end
        end
      end
    end
  end
end

-- Export for GenericTrigger/Custom Code
WeakAuras.SpecForUnit = Private.LibGroupTalentsWrapper.SpecForUnit
WeakAuras.GetUnitRole = Private.LibGroupTalentsWrapper.GetUnitRole
WeakAuras.SpecRolePositionForUnit = Private.LibGroupTalentsWrapper.SpecRolePositionForUnit
WeakAuras.CheckTalentForUnit = Private.LibGroupTalentsWrapper.CheckTalentForUnit
WeakAuras.CheckGlyphForUnit = Private.LibGroupTalentsWrapper.CheckGlyphForUnit
