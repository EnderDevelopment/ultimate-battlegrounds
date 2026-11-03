-- EnvironmentManagerScript.lua

-- This script controls environmental effects such as weather, lighting, and other atmospheric conditions.

local ServerScriptService = game:GetService("ServerScriptService")

-- Function to change the lighting of the game
local function changeLighting(brightness, color)
    local lighting = game:GetService("Lighting")
    lighting.Brightness = brightness
    lighting.Ambient = color
end

-- Example usage: change the lighting when the game starts
changeLighting(2, Color3.new(0.5, 0.5, 0.5))
