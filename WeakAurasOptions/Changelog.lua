if not WeakAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)
OptionsPrivate.changelog = {
  versionString = '5.21.10',
  dateString = '2026-08-13',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.21.9...5.21.10',
  highlightText = [==[
Titan updates and regression fix for queued spell]==],  commitText = [==[InfusOnWoW (1):

- Fix MOP loading

NoM0Re (4):

- Titan: Update EncounterAndZoneLists for Phase 5
- Titan: Update Frost Death Knight Talents
- Fix regression in queued spell detection
- Migrate fallback and thumbnail text to FontObjects

Stanzilla (4):

- Update WeakAurasModelPaths from wago.tools
- ci: track only the Titan Wrath interface
- ci: address TOC updater review feedback
- ci: automate WoW TOC interface updates

]==]
}
