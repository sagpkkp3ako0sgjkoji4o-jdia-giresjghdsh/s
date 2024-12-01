local scriptEnabled = false -- Initially disabled

local function toggleScript()
  scriptEnabled = not scriptEnabled
  if scriptEnabled then
    print("Script enabled")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sagpkkp3ako0sgjkoji4o-jdia-giresjghdsh/f/refs/heads/main/skibd.lol",true))()
  else
    print("Script disabled")
    -- Add any cleanup code here if necessary to stop the script's actions.  This is highly dependent on what the downloaded script actually does.
    -- Example:  If the script creates GUI elements, you'd destroy them here.
  end
end

-- Add a way to trigger the toggle.  Here are a few options:

-- Option 1:  Using a keybind (requires a library like Roblox's InputService)

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
  if input.KeyCode == Enum.KeyCode.F9 and not gameProcessedEvent then -- Change F9 to your desired key
    toggleScript()
  end
end)


-- Option 2: Using a button in a GUI (requires creating a GUI)


-- Option 3:  A simple command in the console.

local function consoleToggle()
  toggleScript()
end

game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.TextButton.MouseButton1Click:Connect(consoleToggle)


-- Option 4: Automatic start.  The script starts enabled by default


scriptEnabled = true
toggleScript()
