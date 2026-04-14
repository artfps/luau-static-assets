# Third-Party Notices

This directory vendors local-only runtime dependencies so `connector.luau` does not fetch code from third-party hosts at runtime.

## LuauRegExp

- Upstream: `https://github.com/notpoiu/LuauRegExp`
- Vendored file: `vendor/LuauRegExp/RegExp.luau`
- Source pin: commit `066c0c267e502d26d12b719c036e2a7189d2adc1`
- Source URL: `https://raw.githubusercontent.com/notpoiu/LuauRegExp/066c0c267e502d26d12b719c036e2a7189d2adc1/dist/RegExp.luau`
- License: MIT
- Vendored license: `vendor/LuauRegExp/LICENSE.md`
- SHA-256: `a051d7ff752c0cb7f3bca73d4d913dabb2741989dd3eeedcb0c0cf27431746ca`

## Cobalt

- Upstream: `https://github.com/notpoiu/cobalt`
- Vendored file: `vendor/Cobalt/Cobalt.luau`
- Source pin: release `v2.0.0.2`
- Source URL: `https://github.com/notpoiu/cobalt/releases/download/v2.0.0.2/Cobalt.luau`
- Local fork note: this vendored copy was patched to remove runtime network fetches for teleport auto-exec, icon/font asset downloads, and exported HTML branding assets.
- License: Apache-2.0
- Vendored license: `vendor/Cobalt/LICENSE.md`
- SHA-256 (current local fork copy): `2ef7b76c4f9605c445b08841c395fb32aba25ee2d231f8be1a4247c23e7dfb08`
