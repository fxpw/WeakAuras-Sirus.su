if not WeakAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)
OptionsPrivate.changelog = {
  versionString = '5.21.9',
  dateString = '2026-07-28',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.21.8...5.21.9',
  highlightText = [==[
Font fixes and Hardcore login fix]==],  commitText = [==[InfusOnWoW (4):

- Remove AbbreviateNumbers workaround since it's no longer needed
- Remove usage of GetTalentInfo in MiniTalent
- Use FontObjects in Text/SubText
- Update Discord List

NoM0Re (10):

- Remove redundant fontObject creation
- Fix font object naming in SubText regions
- Upgrade API and Fixes for Vanilla
- Vanilla: Add Assigned Role to Load Options
- Vanilla: Use PLAYER_TALENT_UPDATE
- Vanilla: Use C_SpecializationInfo.GetTalentInfo
- Vanilla: disable AssistedCombat
- TOC Bump
- Add Font Flag Slug and Smooth Scaling
- Titan: Update Balance Druid Talents

Stanzilla (3):

- Update WeakAurasModelPaths from wago.tools
- Update WeakAurasModelPaths from wago.tools
- Update WeakAurasModelPaths from wago.tools

dependabot[bot] (7):

- Bump cbrgm/mastodon-github-action from 2.2.1 to 2.2.2
- Bump actions/checkout from 7.0.0 to 7.0.1
- Bump myConsciousness/bluesky-post from 5 to 6
- Bump actions/setup-python from 6.3.0 to 7.0.0
- Bump actions/setup-python from 6.2.0 to 6.3.0
- Bump BigWigsMods/packager
- Bump actions/checkout from 6.0.3 to 7.0.0

emptyrivers (1):

- use better measurements for login chunks

github-actions[bot] (2):

- Update Discord List (#6250)
- Update WeakAurasModelPaths from wago.tools (#6260)

]==]
}
