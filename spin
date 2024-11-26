local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Customizable spin speed (in degrees per second)
local spinSpeed = 90 

-- Function to perform the spinning
local function spinCharacter()
  local rotation = 0
  while true do
    rotation = rotation + spinSpeed * (wait())
    humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(rotation), 0) -- Rotate around Y-axis
    wait()
  end
end


-- Start the spinning (only runs if the character exists)
if humanoidRootPart then
  spinCharacter()
end
