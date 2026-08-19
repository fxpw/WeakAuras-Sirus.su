if not WeakAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)
OptionsPrivate.changelog = {
  versionString = '5.21.11',
  dateString = '2026-08-16',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.21.10...5.21.11',
  highlightText = [==[
]==],  commitText = [==[Putro (2):

- fix: Move Interface to the top in .toc files (#6280)
- fix: Use GetMasteryEffect() to get Mastery percentages on Mists of Pandaria

Stanzilla (1):

- Update WeakAurasModelPaths from wago.tools

dependabot[bot] (2):

- Bump cbrgm/mastodon-github-action from 2.2.2 to 2.2.3
- Bump myConsciousness/bluesky-post

]==]
}
