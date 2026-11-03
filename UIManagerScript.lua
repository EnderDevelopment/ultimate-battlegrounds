-- UIManagerScript.lua

-- This script manages the user interface, including health bars, score displays, and other HUD elements.

local Players = game:GetService("Players")
local StarterPlayerScripts = game:GetService("StarterPlayerScripts")

-- Function to create a health bar for a player
local function createHealthBar(player)
    local playerGui = player:WaitForChild("PlayerGui")
    local screenGui = Instance.new("ScreenGui", playerGui)
    screenGui.Name = "HealthBar"
    
    local frame = Instance.new("Frame", screenGui)
    frame.Size = UDim2.new(0.2, 0, 0.05, 0)
    frame.Position = UDim2.new(0.4, 0, 0.1, 0)
    frame.BackgroundColor3 = Color3.new(1, 0, 0)
    
    local healthBar = Instance.new("Frame", frame)
    healthBar.Name = "HealthBar"
    healthBar.Size = UDim2.new(1, 0, 1, 0)
    healthBar.BackgroundColor3 = Color3.new(0, 1, 0)
    
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.HealthChanged:Connect(function(health)
            healthBar.Size = UDim2.new(health / humanoid.MaxHealth, 0, 1, 0)
        end)
    end)
end

-- Example usage: create a health bar for all players
Players.PlayerAdded:Connect(function(player)
    createHealthBar(player)
end)
