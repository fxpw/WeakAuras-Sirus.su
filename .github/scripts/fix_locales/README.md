# Locale cleanup

After replacing the upstream locale files, run:

```sh
lua .github/scripts/fix_locales/fix_locales.lua
```

The command removes unused entries from `WeakAuras/Locales` and
`WeakAurasOptions/Locales`, then reports every removed entry and every used key
missing from the English/custom locale baseline.

When a used key has an otherwise identical upstream locale entry, these
port-specific substitutions are applied to both the locale key and its value:

- `WeakAuras/WeakAuras2` → `NoM0Re/WeakAuras-WotLK`
- `discord.gg/weakauras` → `discord.gg/UXSc7nt`

Useful modes:

```sh
# Preview without writing files
lua .github/scripts/fix_locales/fix_locales.lua --dry-run

# CI-style check; exits with 1 when cleanup is needed or keys are missing
lua .github/scripts/fix_locales/fix_locales.lua --check

# Run the parser and formatting regression tests
lua .github/scripts/fix_locales/tests/test-locale-cleaner.lua
```

`WeakAuras` and all bundled addons that share `WeakAuras.L` are scanned
together. Files named `zLocales*.lua` contribute definitions but are never
modified. The cleaner deletes complete assignment blocks and their attached
`--[[Translation missing --]]` marker, while retaining all other bytes,
including indentation, line endings, comments, ordering, and encoding.
