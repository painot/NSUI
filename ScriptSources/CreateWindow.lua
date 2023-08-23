return function(placename, extrainfo)
    return {
        Name = "NSUI - " .. placename,
        LoadingTitle = extrainfo["LoadingTitle"] or "Interface Suite",
        LoadingSubtitle = extrainfo["LoadingSubtitle"] or "by Paint",
        ConfigurationSaving = extrainfo["ConfigurationSaving"] or {
            Enabled = false,
            FolderName = "NSUIConfigs",
            FileName = "NSUI01"
        },
        Discord = extrainfo["Discord"] or {
            Enabled = false,
            Invite = "noinvitelink",
            RememberJoins = true
        },
        KeySystem = extrainfo["KeySystem"] or true,
        KeySettings = extrainfo["KeySettings"] or {
            Title = "Access",
            Subtitle = "Key System",
            Note = "No method of obtaining the key yet.",
            FileName = "NSUIKeysV1",
            SaveKey = true,
            GrabKeyFromSite = false,
            Actions = {
                [1] = {
                    Text = "Click to copy key",
                    OnPress = function() end,
                }
            },
            Key = {"Slavery"} -- planning to obfuscate
        }
    }
end
