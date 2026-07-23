local function normalizePath(path)
  return (path:gsub("\\", "/"):gsub("/+", "/"))
end

local scriptPath = normalizePath(arg[0] or ".github/scripts/fix_locales/tests/test-locale-cleaner.lua")
local testDirectory = scriptPath:match("^(.*)/[^/]+$") or "."
local cleaner = dofile(testDirectory .. "/../locale-cleaner.lua")

local testCount = 0

local function test(name, callback)
  local ok, err = pcall(callback)
  if not ok then
    io.stderr:write("FAIL " .. name .. "\n" .. tostring(err) .. "\n")
    os.exit(1)
  end
  testCount = testCount + 1
  print("PASS " .. name)
end

local function assertEqual(actual, expected, message)
  if actual ~= expected then
    error((message or "values differ") .. "\nexpected: " .. string.format("%q", expected) .. "\nactual:   " .. string.format("%q", actual), 2)
  end
end

test("finds escaped and long-string keys but ignores comments and strings", function()
  local source = [==[
local L = WeakAuras.L
L["line\nbreak"] = true
L[ [=[long
key]=] ] = true
-- L["comment"] = true
local example = 'L["inside a string"]'
]==]
  local references, dynamic, err = cleaner.findLocaleReferences(source, "source.lua")
  assert(not err, err)
  assertEqual(#references, 2)
  assertEqual(references[1].key, "line\nbreak")
  assertEqual(references[2].key, "long\nkey")
  assertEqual(#dynamic, 0)
end)

test("reports dynamic locale table access", function()
  local references, dynamic, err = cleaner.findLocaleReferences('return L[key] or L["known"]\n', "source.lua")
  assert(not err, err)
  assertEqual(#references, 1)
  assertEqual(references[1].key, "known")
  assertEqual(#dynamic, 1)
  assertEqual(dynamic[1].line, 1)
end)

test("accepts the two intentional computed locale lookups", function()
  local source = table.concat({
    'local faction = L[GetFactionInfoByID(309) or ""]',
    'local count = L[string.format(L["%s total auras"], 42)]',
    "",
  }, "\n")
  local references, dynamic, err = cleaner.findLocaleReferences(source, "source.lua")
  assert(not err, err)
  assertEqual(#references, 1)
  assertEqual(references[1].key, "%s total auras")
  assertEqual(#dynamic, 0)
end)

test("removes only unused assignment bytes and preserves CRLF formatting", function()
  local source = table.concat({
    "local L = WeakAuras.L",
    "",
    "if locale == \"deDE\" then",
    "--[[Translation missing --]]",
    "\tL[\"keep\"] = \"Behalten\"",
    "\t--[[Translation missing --]]",
    "\tL[\"remove\"] = \"Entfernen\"",
    "\tL[ [=[keep",
    "long]=] ] = [=[Mehrzeilig",
    "behalten]=]",
    "end",
    "",
  }, "\r\n")
  local expected = table.concat({
    "local L = WeakAuras.L",
    "",
    "if locale == \"deDE\" then",
    "--[[Translation missing --]]",
    "\tL[\"keep\"] = \"Behalten\"",
    "\tL[ [=[keep",
    "long]=] ] = [=[Mehrzeilig",
    "behalten]=]",
    "end",
    "",
  }, "\r\n")
  local cleaned, removed, err = cleaner.cleanLocaleContent(source, "deDE.lua", {
    keep = true,
    ["keep\nlong"] = true,
  })
  assert(not err, err)
  assertEqual(cleaned, expected)
  assertEqual(#removed, 1)
  assertEqual(removed[1].key, "remove")
  assertEqual(removed[1].line, 7)
end)

test("returns byte-identical content when every key is used", function()
  local source = "local L = WeakAuras.L\n  L[\"kept\"] = \"spacing stays\"\n"
  local cleaned, removed, err = cleaner.cleanLocaleContent(source, "enUS.lua", { kept = true })
  assert(not err, err)
  assertEqual(cleaned, source)
  assertEqual(#removed, 0)
end)

test("recognizes direct WeakAuras.L references", function()
  local references, dynamic, err = cleaner.findLocaleReferences('return WeakAuras.L["shared"]\n', "templates.lua")
  assert(not err, err)
  assertEqual(#references, 1)
  assertEqual(references[1].key, "shared")
  assertEqual(#dynamic, 0)
end)

test("rewrites matching upstream repository and Discord locale blocks", function()
  local upstream = "See WeakAuras/WeakAuras2 and discord.gg/weakauras"
  local fork = "See NoM0Re/WeakAuras-WotLK and discord.gg/UXSc7nt"
  local source = 'L["' .. upstream .. '"] = "' .. upstream .. '"\r\n'
  local cleaned, removed, err, replaced = cleaner.cleanLocaleContent(source, "enUS.lua", {
    [upstream] = true,
  }, {
    [upstream] = fork,
  })
  assert(not err, err)
  assertEqual(cleaned, 'L["' .. fork .. '"] = "' .. fork .. '"\r\n')
  assertEqual(#removed, 0)
  assertEqual(#replaced, 1)
  assertEqual(replaced[1].key, upstream)
  assertEqual(replaced[1].replacement, fork)
  assertEqual(cleaner.toUpstreamVariant(fork), upstream)
end)

test("parses a guarded zLocales fallback as one definition", function()
  local source = table.concat({
    'if L["Fallback"] == nil then',
    '  L["Fallback"] = "Fallback"',
    "end",
    "",
  }, "\n")
  local assignments, err = cleaner.parseLocaleAssignments(source, "zLocales.lua")
  assert(not err, err)
  assertEqual(#assignments, 1)
  assertEqual(assignments[1].key, "Fallback")
  assertEqual(assignments[1].line, 2)
end)

test("rejects assignments sharing a line with other Lua code", function()
  local source = "L[\"unsafe\"] = \"value\"; print(\"do not delete me\")\n"
  local cleaned, removed, err = cleaner.cleanLocaleContent(source, "unsafe.lua", {})
  assertEqual(cleaned, nil)
  assertEqual(removed, nil)
  assert(err and err:match("must end on its own line"), err)
end)

print(string.format("\n%d tests passed.", testCount))
