-- SoundManagerScript.lua

-- This script handles all sound effects and background music in the game.

local Players = game:GetService("Players")
local StarterPlayerScripts = game:GetService("StarterPlayerScripts")

-- Function to play a sound for a player
local function playSound(player, soundName)
    local sound = Instance.new("Sound", player.PlayerGui)
    sound.Name = soundName
    sound.SoundId = "rbxassetid://" .. soundName
    sound:Play()
end

-- Example usage: play a sound when a player joins the game
Players.PlayerAdded:Connect(function(player)
    playSound(player, "123456789") -- Replace with actual sound ID
end)
