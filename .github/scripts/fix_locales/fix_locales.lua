#!/usr/bin/env lua

-- Remove unused WeakAuras and WeakAurasOptions locale entries without
-- reformatting the remaining content.

local function normalizePath(path)
  return (path:gsub("\\", "/"):gsub("/+", "/"))
end

local scriptPath = normalizePath(arg[0] or ".github/scripts/fix_locales/fix_locales.lua")
local scriptDirectory = scriptPath:match("^(.*)/[^/]+$") or "."
local cleaner = dofile(scriptDirectory .. "/locale-cleaner.lua")

local function usage()
  print([[
Usage:
  lua .github/scripts/fix_locales/fix_locales.lua [--dry-run | --check] [--root PATH]

Modes:
  (default)  Remove unused entries and print removed/missing keys.
  --dry-run  Print what would be removed without changing files.
  --check    Like --dry-run, but exit with status 1 when cleanup is needed,
             or a used key is missing.

Notes:
  * WeakAuras and WeakAurasOptions are scanned together because they share
    WeakAuras.L.
  * Other WeakAuras addon code (for example WeakAurasTemplates) is also scanned
    so a shared key is never removed while another bundled addon still uses it.
  * Locale files named zLocales*.lua are detected but never modified.
  * Matching upstream repository and Discord references are rewritten to this
    port's repository and Discord references.
  * Dynamic L[...] lookups are reported as warnings because static analysis
    cannot determine their runtime keys.
  * Existing whitespace, indentation, line endings, and entry order are kept.
]])
end

local options = {}
local rootCandidate = scriptDirectory .. "/../../.."
local index = 1
while index <= #arg do
  local argument = arg[index]
  if argument == "--dry-run" then
    options.dryRun = true
  elseif argument == "--check" then
    options.check = true
  elseif argument == "--root" then
    index = index + 1
    if not arg[index] then
      io.stderr:write("Error: --root requires a path\n")
      os.exit(2)
    end
    rootCandidate = arg[index]
  elseif argument == "--help" or argument == "-h" then
    usage()
    os.exit(0)
  else
    io.stderr:write("Error: unknown argument " .. tostring(argument) .. "\n\n")
    usage()
    os.exit(2)
  end
  index = index + 1
end

if options.dryRun and options.check then
  io.stderr:write("Error: --dry-run and --check cannot be combined\n")
  os.exit(2)
end

local root, rootErr = cleaner.resolveRoot(rootCandidate)
if not root then
  io.stderr:write("Error: " .. tostring(rootErr) .. "\n")
  os.exit(2)
end
options.root = root

local result, err = cleaner.run(options)
if not result then
  io.stderr:write("Error: " .. tostring(err) .. "\n")
  os.exit(2)
end

if result.checkFailed then
  os.exit(1)
end
