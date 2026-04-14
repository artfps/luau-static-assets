# Roblox Executor MCP Assets

Static asset repo for `Delta`/`BlueStacks` style setups where the executor cannot read files from the macOS host filesystem.

This repo is intentionally small:

- `connector.luau`
- `RegExp.luau`
- `Cobalt.luau`
- `delta-bootstrap.luau`
- third-party notices and license copies

## Why This Exists

If your executor runs inside an Android guest, paths like `/Users/artur/...` are not visible there.

In that setup, it is often easier to fetch audited `.luau` files from a public GitHub repo than to rely on host file paths.

## Recommended Usage

Do not load from a floating branch URL if you can avoid it.

Use a pinned commit URL instead:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/__REPO_OWNER__/roblox-executor-mcp-assets/__BOOTSTRAP_COMMIT__/delta-bootstrap.luau"))()
```

The bootstrap itself then pulls `connector.luau`, `RegExp.luau`, and `Cobalt.luau` from a pinned commit.

## Defaults In The Bootstrap

The bootstrap sets these only if you have not already set them:

```lua
getgenv().BridgeURL = "localhost:16384"
getgenv().DisableWebSocket = true
getgenv().DisableInitialScriptDecompMapping = true
```

That makes it suitable as a conservative starting point for `Delta`.

## Notes

- Basic MCP connectivity does not require `RegExp.luau` or `Cobalt.luau`.
- `RegExp.luau` is only needed for full regex grep.
- `Cobalt.luau` is only needed for remote spy.
- This repo is public by design, because GitHub raw hosting for private repos is not suitable for anonymous `game:HttpGet(...)` fetches.

## Provenance

See `THIRD_PARTY_NOTICES.md` and the files under `LICENSES/`.
