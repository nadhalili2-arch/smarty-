
-- Simple Lua GUI Menu
-- Para sa sarili mong Roblox experience
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "MyCustomMenu"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 240, 0, 190)
frame.Position = UDim2.new(0.5, -120, 0.5, -95)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "MY CUSTOM MENU"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -24, 0, 42)
button.Position = UDim2.new(0, 12, 0, 55)
button.Text = "Say Hello"
button.TextScaled = true
button.Parent = frame

button.Activated:Connect(function()
    print("Hello, " .. player.Name .. "!")
    button.Text = "Hello!"
end)

local close = Instance.new("TextButton")
close.Size = UDim2.new(1, -24, 0, 36)
close.Position = UDim2.new(0, 12, 0, 105)
close.Text = "Close Menu"
close.TextScaled = true
close.Parent = frame

close.Activated:Connect(function()
    gui:Destroy()
end)

gui.Parent = player:WaitForChild("PlayerGui")
