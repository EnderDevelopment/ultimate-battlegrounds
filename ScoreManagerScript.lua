-- ScoreManagerScript.lua

-- This script keeps track of player scores and updates the leaderboard.

local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")

-- Function to update the score of a player
local function updateScore(player, score)
    local leaderstats = player:FindFirstChild("leaderstats")
    if not leaderstats then
        leaderstats = Instance.new("Folder", player)
        leaderstats.Name = "leaderstats"
    end
    
    local scoreValue = leaderstats:FindFirstChild("Score")
    if not scoreValue then
        scoreValue = Instance.new("IntValue", leaderstats)
        scoreValue.Name = "Score"
    end
    
    scoreValue.Value = scoreValue.Value + score
end

-- Example usage: update the score of a player when they kill another player
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        character.Humanoid.Died:Connect(function()
            local killer = character.Humanoid:FindFirstChild("CreatorTag")
            if killer then
                updateScore(killer.Parent, 10)
            end
        end)
    end)
end)
