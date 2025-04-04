if not WeakAuras.IsLibsOK() then return end

local AddonName = ...
local OptionsPrivate = select(2, ...)

OptionsPrivate.changelog = {
  versionString = '5.19.7',
  dateString = '2025-04-04',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.19.6...5.19.7',
  highlightText = [==[
This release reverts a change to item equipped load & triggers which was causing unacceptable performance characteristics.
Also, the pending updates section of options has some minor cosmetic improvements.]==],  commitText = [==[mrbuds (2):

- Revert "Item Equipped: Add exact match to load options/fix name matching"
- Don't overlap PendingUpdateButton's text with update icon

]==]
}