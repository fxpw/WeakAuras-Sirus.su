if not WeakAuras.IsLibsOK() then return end

local AddonName = ...
local OptionsPrivate = select(2, ...)

OptionsPrivate.changelog = {
  versionString = '5.19.4',
  dateString = '2025-02-26',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.19.3...5.19.4',
  highlightText = [==[
Update for The War Within 11.1

New in this version:

- models now have an alpha slider to set transparency
- TSU-type custom triggers have some new convenience functions available. Documentation is avaliable at https://github.com/WeakAuras/WeakAuras2/wiki/Trigger-State-Updater-(TSU)#all-states-
helper-methods
  - this is unlikely to matter, but note that the choice of plumbing used means this is techni
cally a breaking change if you ever created a state with the "__changed" key.

Fixes:

- x-realm transfer of auras should fail less often
- improve performance
cally a breaking change if you ever created a state with the "__changed" key.

Fixes:

- x-realm transfer of auras should fail less often
- improve performance
- large, deply nested groups should load significantly faster (i.e. https://wago.io/twwdungeons should be less prone to throw errors when you start an encounter)
- "Hide Cooldown Text" condition property remembered how to function
- x-realm data transfer (for sharing auras) should be more likely to actually succeed now]==],  commitText = [==[InfusOnWoW (6):

- Use Chomp for cross-realm transfer
- Fix EnsureRegion repeately creating parents
- Group: Don't calculate group size if not needed
- Fix Hide Cooldown Text condition
- Models: Fix Alpha animations
- Be extra picky on noValidation spell inputs

Stanzilla (1):

- chore(toc): bump version for retail

emptyrivers (1):

- put the mixins in private exec_env too

mrbuds (2):

- cache buildup optimization for 11.1
- Add alpha setting for model region

]==]
}
