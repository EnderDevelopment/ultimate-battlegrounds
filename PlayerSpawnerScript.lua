-- PlayerSpawnerScript.lua

-- This script handles the spawning of players at the start of the game.

local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")

-- Function to spawn a player at a random spawn location
local function spawnPlayer(player)
    local spawnPoints = workspace:GetChildren()
    local randomSpawnPoint = spawnPoints[math.random(1, #spawnPoints)]
    player:LoadCharacter()
    player.Character:MoveTo(randomSpawnPoint.Position)
end

-- Connect to the PlayerAdded event
Players.PlayerAdded:Connect(function(player)
    spawnPlayer(player)
end)

-- Spawn existing players when the script is loaded
for _, player in ipairs(Players:GetPlayers()) do
    spawnPlayer(player)
end
