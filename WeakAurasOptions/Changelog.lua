if not WeakAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)
OptionsPrivate.changelog = {
  versionString = '5.22.0',
  dateString = '2026-09-05',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.21.11...5.22.0',
  highlightText = [==[
- Security fix and other bug fixes and performance improvements]==],  commitText = [==[InfusOnWoW (1):

- Fix counted trigger logic (#6298)

NoM0Re (1):

- perf: avoid temporary table allocations in aura environment stack

Stanzilla (28):

- perf: stop idle animation updates
- docs: require source-based reasoning before changes
- docs: require evidence for lifecycle guards
- fix: retain profiling start and stop invariants
- docs: require per-aura lifecycle checks
- fix: clean up profiling state when deleting an aura
- fix: preserve profiling data when renaming an aura
- docs(agents): reflow the CI paragraph in Validation
- fix: delete repository substores by archive ID
- docs(tests): state that the sandbox tests are regression tests
- style(tests): trim comments and defensive guards
- docs(agents): document the sandbox tests
- ci: run the sandbox tests on pull requests
- test(sandbox): add sandbox tests that run outside WoW
- docs(agents): do not comment every change site
- style: remove repeated comments from the sandbox fixes
- fix(options): load custom code error check through the sandbox
- fix(sandbox): resolve dotted global names through the aura sandbox
- fix(options): use unique new button frame names
- revert: remove Midnight warning (#6301)
- docs: add repository agent guide (#6300)
- fix: preserve progress texture mirror state (#6297)
- fix: broken transaction on a empty value
- fix: reset progress texture mirror state (#6285)
- fix: mark increasing warning severity as mixed
- fix: make aura warning severity deterministic
- fix: avoid mutating tables during serialization
- fix: detect mixed group squelch values

dependabot[bot] (2):

- Bump nearform-actions/github-action-notify-twitter from 1.2.3 to 1.2.4
- Bump nearform-actions/github-action-notify-twitter from 1.2.3 to 1.2.4

github-actions[bot] (2):

- Update WeakAurasModelPaths from wago.tools (#6302)
- Update WeakAurasModelPaths from wago.tools (#6282)

]==]
}
