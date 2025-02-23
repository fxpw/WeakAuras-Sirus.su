if not WeakAuras.IsLibsOK() then return end

local AddonName = ...
local OptionsPrivate = select(2, ...)

OptionsPrivate.changelog = {
  versionString = '5.19.2',
  dateString = '2025-02-20',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.19.1...5.19.2',
  highlightText = [==[
This is mainly a release to bump the TOC version for Cata.

Otherwise it contains minor fixes]==],  commitText = [==[InfusOnWoW (7):

- Update Atlas File List from wago.tools
- Regions\Text.lua: Add types
- Fix font justify missing after update
- Fix lua error if a group contains an aura with a texture sub element
- Classic Era: Fix Minimize Button
- Update Atlas File List from wago.tools
- Update Discord List

Stanzilla (3):

- Update WeakAurasModelPaths from wago.tools
- Update WeakAurasModelPaths from wago.tools
- Update WeakAurasModelPaths from wago.tools

dependabot[bot] (1):

- Bump cbrgm/mastodon-github-action from 2.1.10 to 2.1.12

emptyrivers (1):

- only nag user on /reload or /camp, instead of every loading screen

its-riece (1):

- Add itemInRange condition support to more Item Triggers (#5639)

mrbuds (3):

- Fix integer overflow error with SpellKnow checks
- Update toc files for Cataclysm new patch
- smoll fix (#5678)

]==]
}
