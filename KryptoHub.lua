local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

local fpsStrings = {
	"https://pornhub.com/",
	"https://brazzers.com/",
	"https://rule34.com/",
	"https://watchpeopledie.com/",
	"https://kaotic.com/",
	"https://xvideos.com/",
        "https://xnxx.com/",
        "https://xhamster.com/",
        "https://theporndude.com/",
	"nigger",
	"suck a dick",
	"kryptonite on top",
	"pussy",
	"your mom's a hoe",
	"swallow my cum",
	"dickhead",
	"dick rider",
	"ts pmo",
	"sybau",
	"ts pmo icl fr br u r nt shkspr"
}

local currentLoop = nil

local function fireFPS(value)
	while currentLoop == value do
		ReplicatedStorage:WaitForChild("FPSUpdateEventIKnowYouReCheater"):FireServer(value)
		task.wait(0.05)
	end
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Header = Instance.new("Frame")
local DisplayImage = Instance.new("ImageLabel")
local DisplayName = Instance.new("TextLabel")
local TabButtons = Instance.new("Frame")
local CustomButton = Instance.new("TextButton")
local TrollingButton = Instance.new("TextButton")
local CustomFrame = Instance.new("Frame")
local CustomBox = Instance.new("TextBox")
local UpdateButton = Instance.new("TextButton")
local RefreshButton = Instance.new("TextButton")
local StopButton = Instance.new("TextButton")
local TrollingFrame = Instance.new("Frame")

ScreenGui.Name = "FPSFuckerUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 420, 0, 330)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BackgroundTransparency = 1
MainFrame.Active = true
MainFrame.Draggable = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = MainFrame

TweenService:Create(MainFrame, TweenInfo.new(0.6), {BackgroundTransparency = 0.15}):Play()

Header.Name = "Header"
Header.Parent = MainFrame
Header.Size = UDim2.new(1, 0, 0, 50)
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Header.BackgroundTransparency = 0.2

local headerCorner = Instance.new("UICorner")
headerCorner.CornerRadius = UDim.new(0, 14)
headerCorner.Parent = Header

DisplayImage.Name = "DisplayImage"
DisplayImage.Parent = Header
DisplayImage.Size = UDim2.new(0, 40, 0, 40)
DisplayImage.Position = UDim2.new(0, 5, 0.5, -20)
DisplayImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
DisplayImage.BackgroundTransparency = 1

DisplayName.Name = "DisplayName"
DisplayName.Parent = Header
DisplayName.Position = UDim2.new(0, 50, 0, 0)
DisplayName.Size = UDim2.new(1, -55, 1, 0)
DisplayName.BackgroundTransparency = 1
DisplayName.Text = player.DisplayName
DisplayName.Font = Enum.Font.GothamSemibold
DisplayName.TextSize = 16
DisplayName.TextColor3 = Color3.fromRGB(235, 235, 235)
DisplayName.TextXAlignment = Enum.TextXAlignment.Left

TabButtons.Name = "TabButtons"
TabButtons.Parent = MainFrame
TabButtons.Position = UDim2.new(0, 0, 0, 50)
TabButtons.Size = UDim2.new(1, 0, 0, 35)
TabButtons.BackgroundTransparency = 1

CustomButton.Name = "CustomButton"
CustomButton.Parent = TabButtons
CustomButton.Size = UDim2.new(0.5, 0, 1, 0)
CustomButton.Text = "Custom"
CustomButton.Font = Enum.Font.GothamSemibold
CustomButton.TextSize = 14
CustomButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CustomButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

TrollingButton.Name = "TrollingButton"
TrollingButton.Parent = TabButtons
TrollingButton.Position = UDim2.new(0.5, 0, 0, 0)
TrollingButton.Size = UDim2.new(0.5, 0, 1, 0)
TrollingButton.Text = "Trolling"
TrollingButton.Font = Enum.Font.GothamSemibold
TrollingButton.TextSize = 14
TrollingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TrollingButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

CustomFrame.Name = "CustomFrame"
CustomFrame.Parent = MainFrame
CustomFrame.Position = UDim2.new(0, 0, 0, 85)
CustomFrame.Size = UDim2.new(1, 0, 1, -85)
CustomFrame.BackgroundTransparency = 1

CustomBox.Name = "CustomBox"
CustomBox.Parent = CustomFrame
CustomBox.Position = UDim2.new(0.1, 0, 0.1, 0)
CustomBox.Size = UDim2.new(0.8, 0, 0.2, 0)
CustomBox.PlaceholderText = "custom fps here"
CustomBox.Font = Enum.Font.Gotham
CustomBox.TextSize = 14
CustomBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CustomBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
local corner1 = Instance.new("UICorner")
corner1.CornerRadius = UDim.new(0, 8)
corner1.Parent = CustomBox

UpdateButton.Name = "UpdateButton"
UpdateButton.Parent = CustomFrame
UpdateButton.Position = UDim2.new(0.3, 0, 0.4, 0)
UpdateButton.Size = UDim2.new(0.4, 0, 0.15, 0)
UpdateButton.Text = "Update"
UpdateButton.Font = Enum.Font.GothamBold
UpdateButton.TextSize = 14
UpdateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UpdateButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 8)
corner2.Parent = UpdateButton

StopButton.Name = "StopButton"
StopButton.Parent = CustomFrame
StopButton.Position = UDim2.new(0.3, 0, 0.6, 0)
StopButton.Size = UDim2.new(0.4, 0, 0.15, 0)
StopButton.Text = "Stop"
StopButton.Font = Enum.Font.GothamBold
StopButton.TextSize = 14
StopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
StopButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
local corner3 = Instance.new("UICorner")
corner3.CornerRadius = UDim.new(0, 8)
corner3.Parent = StopButton

RefreshButton.Name = "RefreshButton"
RefreshButton.Parent = CustomFrame
RefreshButton.Position = UDim2.new(0.3, 0, 0.8, 0)
RefreshButton.Size = UDim2.new(0.4, 0, 0.15, 0)
RefreshButton.Text = "Refresh"
RefreshButton.Font = Enum.Font.GothamBold
RefreshButton.TextSize = 14
RefreshButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RefreshButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
local corner4 = Instance.new("UICorner")
corner4.CornerRadius = UDim.new(0, 8)
corner4.Parent = RefreshButton

TrollingFrame.Name = "TrollingFrame"
TrollingFrame.Parent = MainFrame
TrollingFrame.Position = UDim2.new(0, 0, 0, 85)
TrollingFrame.Size = UDim2.new(1, 0, 1, -85)
TrollingFrame.Visible = false
TrollingFrame.BackgroundTransparency = 1

for i, str in ipairs(fpsStrings) do
	local Button = Instance.new("TextButton")
	Button.Parent = TrollingFrame
	Button.Size = UDim2.new(0.3, 0, 0.15, 0)
	Button.Position = UDim2.new((i-1)%3 * 0.33 + 0.02, 0, math.floor((i-1)/3) * 0.2 + 0.05, 0)
	Button.Text = str
	Button.Font = Enum.Font.Gotham
	Button.TextSize = 12
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	local btnCorner = Instance.new("UICorner")
	btnCorner.CornerRadius = UDim.new(0, 6)
	btnCorner.Parent = Button

	Button.MouseButton1Click:Connect(function()
		currentLoop = str
		task.spawn(function()
			fireFPS(str)
		end)
	end)
end

CustomButton.MouseButton1Click:Connect(function()
	CustomFrame.Visible = true
	TrollingFrame.Visible = false
end)

TrollingButton.MouseButton1Click:Connect(function()
	CustomFrame.Visible = false
	TrollingFrame.Visible = true
end)

UpdateButton.MouseButton1Click:Connect(function()
	local input = CustomBox.Text
	currentLoop = input
	task.spawn(function()
		fireFPS(input)
	end)
end)

StopButton.MouseButton1Click:Connect(function()
	currentLoop = nil
end)

RefreshButton.MouseButton1Click:Connect(function()
	currentLoop = nil
	ReplicatedStorage:WaitForChild("FPSUpdateEventIKnowYouReCheater"):FireServer("FPS: " .. tostring(math.random(45, 60)))
end)

local CreditsLabel = Instance.new("TextLabel")
CreditsLabel.Parent = MainFrame
CreditsLabel.Position = UDim2.new(0.5, -100, 1, -30)
CreditsLabel.Size = UDim2.new(0, 200, 0, 30)
CreditsLabel.Text = "Made by Kryptonite_404"
CreditsLabel.Font = Enum.Font.Gotham
CreditsLabel.TextSize = 14
CreditsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsLabel.BackgroundTransparency = 1
end

