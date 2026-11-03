-- PowerUpManagerScript.lua

-- This script handles the spawning and effects of power-ups in the game.

local ServerScriptService = game:GetService("ServerScriptService")

-- Function to spawn a power-up at a random location
local function spawnPowerUp(powerUpName)
    local powerUp = Instance.new("Part", workspace)
    powerUp.Name = powerUpName
    powerUp.Size = Vector3.new(2, 2, 2)
    powerUp.Anchored = true
    powerUp.CanCollide = true
    powerUp.Position = Vector3.new(math.random(-50, 50), 5, math.random(-50, 50))
    
    powerUp.Touched:Connect(function(hit)
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        if player then
            applyPowerUpEffect(player, powerUpName)
            powerUp:Destroy()
        end
    end)
end

-- Function to apply a power-up effect to a player
local function applyPowerUpEffect(player, powerUpName)
    if powerUpName == "SpeedBoost" then
        local humanoid = player.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = humanoid.WalkSpeed + 10
            delay(10, function()
                humanoid.WalkSpeed = humanoid.WalkSpeed - 10
            end)
        end
    end
end

-- Example usage: spawn a power-up when the game starts
spawnPowerUp("SpeedBoost")
