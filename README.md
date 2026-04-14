# Luau Static Assets

Static Luau asset repo for constrained client environments where local host filesystem paths are not available.

This repo is intentionally small and generic:

- `bridge.luau`
- `pattern_engine.luau`
- `trace_bundle.luau`
- `bootstrap.luau`
- third-party notices and license copies

## Why This Exists

If your runtime sits behind a guest/container boundary, host paths like `/Users/artur/...` are usually not visible there.

In that setup, it is often easier to fetch audited `.luau` files from a public GitHub repo than to rely on host file paths.

## Recommended Usage

Do not load from a floating branch URL if you can avoid it.

Use a pinned commit URL instead:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/__REPO_OWNER__/luau-static-assets/__BOOTSTRAP_COMMIT__/bootstrap.luau"))()
```

The bootstrap itself then pulls `bridge.luau`, `pattern_engine.luau`, and `trace_bundle.luau` from a pinned commit.

## Defaults In The Bootstrap

The bootstrap sets these only if you have not already set them:

```lua
getgenv().BridgeURL = "localhost:16384"
getgenv().DisableWebSocket = true
getgenv().DisableInitialScriptDecompMapping = true
```

That makes it suitable as a conservative starting point for constrained clients.

## Notes

- Basic connectivity does not require `pattern_engine.luau` or `trace_bundle.luau`.
- `pattern_engine.luau` is only needed for full regex grep.
- `trace_bundle.luau` is only needed for trace/spy features.
- This repo is public by design, because GitHub raw hosting for private repos is not suitable for anonymous `game:HttpGet(...)` fetches.

## Provenance

See `THIRD_PARTY_NOTICES.md` and the files under `LICENSES/`.
