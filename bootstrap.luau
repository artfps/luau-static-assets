local OWNER = "__REPO_OWNER__"
local REPO = "luau-static-assets"
local PINNED_COMMIT = "__PINNED_COMMIT__"
local BASE = string.format("https://raw.githubusercontent.com/%s/%s/%s", OWNER, REPO, PINNED_COMMIT)

if getgenv().BridgeURL == nil then
    getgenv().BridgeURL = "localhost:16384"
end

if getgenv().DisableWebSocket == nil then
    getgenv().DisableWebSocket = true
end

if getgenv().DisableInitialScriptDecompMapping == nil then
    getgenv().DisableInitialScriptDecompMapping = true
end

if getgenv().LocalRegExpSource == nil then
    getgenv().LocalRegExpSource = game:HttpGet(BASE .. "/pattern_engine.luau")
end

if getgenv().LocalCobaltSource == nil then
    getgenv().LocalCobaltSource = game:HttpGet(BASE .. "/trace_bundle.luau")
end

loadstring(game:HttpGet(BASE .. "/bridge.luau"))()
