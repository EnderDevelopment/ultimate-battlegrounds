-- WeaponManagerScript.lua

-- This script manages the distribution and handling of weapons in the game.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

-- Function to give a weapon to a player
local function giveWeapon(player, weaponName)
    local weapon = ReplicatedStorage:FindFirstChild(weaponName)
    if weapon then
        local clone = weapon:Clone()
        clone.Parent = player.Backpack
    end
end

-- Example usage: give a weapon to a player when they join
local Players = game:GetService("Players")
Players.PlayerAdded:Connect(function(player)
    giveWeapon(player, "Sword")
end)
