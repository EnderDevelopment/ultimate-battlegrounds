-- PlayerMovementScript.lua

-- This script enhances player movement mechanics, including speed and agility.

local Players = game:GetService("Players")
local StarterPlayerScripts = game:GetService("StarterPlayerScripts")

-- Function to enhance player movement
local function enhanceMovement(player)
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = 20
        humanoid.JumpPower = 50
    end)
end

-- Example usage: enhance movement for all players
Players.PlayerAdded:Connect(function(player)
    enhanceMovement(player)
end)
