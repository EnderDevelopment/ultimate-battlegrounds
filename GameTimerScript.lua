-- GameTimerScript.lua

-- This script controls the game timer and triggers events at specific intervals.

local ServerScriptService = game:GetService("ServerScriptService")

-- Function to start the game timer
local function startTimer(duration)
    local timer = duration
    while timer > 0 do
        wait(1)
        timer = timer - 1
        print("Time remaining: " .. timer .. " seconds")
    end
    print("Time's up!")
end

-- Example usage: start the game timer when the game starts
startTimer(300) -- 5 minutes
