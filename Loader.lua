if not game:IsLoaded() then game.Loaded:Wait() end

getgenv().GitHubURL = "https://raw.githubusercontent.com/painot/NSUI/main/"

local Supported = loadstring(game:HttpGet(getgenv().GitHubURL  .. "Supported.lua"))()

for placeid, placename in pairs(Supported) do
    if placeid == game.PlaceId then
        loadstring(game:HttpGet(getgenv().GitHubURL .. "ScriptSources/" .. placename))()
    end
end
