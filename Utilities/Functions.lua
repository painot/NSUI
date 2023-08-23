local module = {}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function module:IsNumeric(data)
    return tonumber(data)
end

function module:IsAlpha(data)
    return not tonumber(data)
end

function module:IsAlphaAndOrNumeric(data)
    return data:match("[^%w]") == nil
end

function module:FindPlayerByPartial(playername)
    if playername == "me" then 
        return LocalPlayer
    else 
        for index, player in Players:GetPlayers() do
            if player.Name:lower():find(playername:lower()) then
                return player
            end
        end
    end
end

function module:GetPlayerAvatarBust(UserId)
    return Players:GetUserThumbnailAsync(UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420)
end

function module:GetPlayerAvatarThumbnail(UserId)
    return Players:GetUserThumbnailAsync(UserId, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
end

function module:IsR15(plr)
    return module:FFCOC(plr.Character, "Humanoid").RigType == Enum.RigType.R15
end

function module:FFC(instance, name)
    return instance:FindFirstChild(tostring(name))
end

function module:FFCOC(instance, class)
    return instance:FindFirstChildOfClass(tostring(class))
end

function module:AllTrue(conditions)
    local count = 0
    for _, condition in ipairs(conditions) do
        if condition == true then
            count = count + 1
        end
    end
    return count == #conditions
end

return module
