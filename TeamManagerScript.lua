-- TeamManagerScript.lua

-- This script manages team assignments and team-based interactions.

local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")

-- Function to assign a player to a team
local function assignTeam(player, teamName)
    local team = game:GetService("Teams"):FindFirstChild(teamName)
    if team then
        player.Team = team
    end
end

-- Example usage: assign a player to a team when they join the game
Players.PlayerAdded:Connect(function(player)
    assignTeam(player, "RedTeam") -- Replace with actual team name
end)
