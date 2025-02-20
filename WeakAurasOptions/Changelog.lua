if not WeakAuras.IsLibsOK() then return end

local AddonName = ...
local OptionsPrivate = select(2, ...)

OptionsPrivate.changelog = {
  versionString = '5.19.1',
  dateString = '2025-01-30',
  fullChangeLogUrl = 'https://github.com/WeakAuras/WeakAuras2/compare/5.19.0...5.19.1',
  highlightText = [==[
This is mainly a release to bump the TOC version for classic.

Some minor features:

- Empty region learned how to take an icon to display in the left side options pane (no more transparent squares!)
- Circular & Linear Progress Texture subregions learned the inverse option
- Unit Characteristics Trigger now allows "Assigned Role" for non-group units
- In game changelog (hi again!) is less prone to producing text boxes that tower over the edge of your screen

And some bug fiixes:

- Expanding the options for Glow/Border subregions should no longer produce errors
- Classic: "Clipped Progress" option for model subregions should function identically to retail now
- WeakAuras.ScanEvents is less prone to vomiting if called with garbage data
- Designing a TSU trigger to populate state with garbage timed progress data should no longer brick Options]==],  commitText = [==[InfusOnWoW (10):

- Tweak Changelog display
- Modernize: Fix lua error if there are no authorOptions
- Also remove "Clipped Progress" on Classic
- Empty Base Region: Add a thumbnail icon
- Sanity check WeakAuras.ScanEvents event's type
- CircularProgressTexture: Add inverse option
- Linear Progress Texture: Add an inverse setting
- Fix Glow/Border anchor_area lua error in Options
- Guard against expirationTime/duration being strings in various places
- Unit Characteristics: Allow "Assigned Role" check for non-group units

Stanzilla (1):

- Update WeakAurasModelPaths from wago.tools

mrbuds (1):

- classic_era toc update

]==]
}
