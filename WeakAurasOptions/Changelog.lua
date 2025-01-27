if not WeakAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)

if not WeakAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)
OptionsPrivate.changelog = {
  versionString = '5.19.0',
  dateString = '2025-01-20',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.18.1...5.19.0',
  highlightText = [==[
- Some Important changes:
  - 🚨🚨 WeakAuras no longer dispatches COMBAT_LOG_EVENT_UNFILTERED to custom triggers, unless the event list specifies at least one subevent. 🚨🚨 You will need to make changes to these auras to get them to function properly.
  - Actions: For performance reasons, "On Init" custom code for auras with an encounter ID load option is not as eager to load as previous. We don't anticipate this should cause any problems, but if it does please get in touch!
- Many new features:
  - This changelog is now viewable in game, via the changelog button (if you're reading this from the in game changelog, hi!)
  - New Region Type: Empty region is now available, for "displays" which either don't need a visual component (e.g. 'play a sound when i get 5 buffs from roll the bones'), and for wacky custom designs.
  - New Trigger: Player Money can now be tracked in the builtins, & a coin string formatting option is avaialable for text patterns. (thanks Boneshock!)
  - New sub element: Stop Motion is now available as a subregion to add to texture, progress texture, icon, progress bar, text, & empty retion types.
  - Linear/Circular Progress elements now support min/max progress properties.
  - Classic (Cataclysm): Spell Power is now tracked in the Character Stats trigger.
  - Chat Message Events: sourceGUID is now exposed in Other Events - Chat Message triggers. Note that some message types don't have a source & thuse don't provide sourceGUID either.
  - New Media: "Heartbeat Single" (try playing it on a loop) is now provided in the builtin media. (thanks Jake!)
  - Aura Trigger: new match selectors based on spell ID are now avaialble.]==],  commitText = [==[Boneshock (1):

- Add Money Formatting Option and Add Player Money to Currency Trigger (#5586)

InfusOnWoW (23):

- Update Atlas File List from wago.tools
- Update Discord List
- Templates Classic: Fix Paladin templates
- Classic: Enable UnitGroupRoleAssigned options
- Bufftrigger 2: Add match selectors that work on spell ids
- Make StopMotion sub elements's color work
- Update Discord List
- Texture Sub Element: Fix ordering of input and browse button
- Stop Motion: Properly fix GetColor function
- Fix description of Stop Motion sub element
- Add Thank you Role to allowed roles
- Add a Changelog button
- Add an Empty RegionType
- Fix lua error for color animation on Stop Motion
- Add min/max progress for Linear/CircularProgress and StopMotion sub elements
- Remove left over TODOs that are actually done
- Fix regressions in Textures refactor
- Cata: Add Spell Power to Character Stats
- Introduce sub elements for circular/linear Textures
- Texture Sub Element
- StopMotion: Introduce a StopMotion sub element
- Update Atlas File List from wago.tools
- Update Discord List

Jake G (1):

- Add Sound Heartbeat Single (#5600)

Stanzilla (4):

- Update WeakAurasModelPaths from wago.tools
- Update bug_report.yml
- Update WeakAurasModelPaths from wago.tools
- Update WeakAurasModelPaths from wago.tools

emptyrivers (2):

- drop nomerge headers
- add sourceGUID to chat msg trigger state

github-actions[bot] (1):

- Update Atlas File List from wago.tools (#5618)

mrbuds (2):

- Don't pre-load in raid init scripts for auras with an encounterId load option
- Disable CLEU triggers without filters

nullKomplex (1):

- Default discord-update to not run on forks

]==]
}