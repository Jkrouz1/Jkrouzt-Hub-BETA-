local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Jkrouzt Hub"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame")
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

local imageLabel = Instance.new("ImageLabel")

imageLabel.Size = UDim2.new(0, 70, 0, 70)
imageLabel.Position = UDim2.new(0, 20, 1, -20) 
imageLabel.AnchorPoint = Vector2.new(0, 1) 
imageLabel.BackgroundTransparency = 1 
imageLabel.Image = "rbxassetid://87459933248527"

imageLabel.ScaleType = Enum.ScaleType.Fit 
imageLabel.BorderSizePixel = 0 
imageLabel.Name = "RotatingImageLabel" 

local rotationSpeed = 0.1 

game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
    imageLabel.Rotation = imageLabel.Rotation + rotationSpeed * deltaTime * 360
end)

imageLabel.Parent = screenGui

local titleFrame = Instance.new("Frame")
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
titleLabel.TextColor3 = Color3.new(1, 0, 0)
titleLabel.TextScaled = true
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
end)

local toggleButton = Instance.new("TextButton")
toggleButton.Parent = screenGui
toggleButton.Text = ">"
toggleButton.TextScaled = true
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0.5, -50)
toggleButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
toggleButton.BackgroundTransparency = 0.5
toggleButton.Active = true

local TweenService = game:GetService("TweenService")

isVisible = true
local initialPosition = UDim2.new(0.5, 0, 0, -100)
local targetPosition = UDim2.new(0.35, 0, 0.305, 0)
local animationDuration = 0.5
local tweenInfo = TweenInfo.new(animationDuration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tweenInfoOut = TweenInfo.new(animationDuration, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

local function animateGui(target, goalPosition, tweenInfo)
    local tween = TweenService:Create(target, tweenInfo, {Position = goalPosition})
    tween:Play()
end


local function toggleGUI()
    isVisible = not isVisible
    mainFrame.Visible = isVisible
    if isVisible then
        toggleButton.Text = "<"
        animateGui(mainFrame, targetPosition, tweenInfo)
    else
        toggleButton.Text = ">"
        animateGui(mainFrame, initialPosition, tweenInfoOut)
    end
end

toggleButton.MouseButton1Click:Connect(toggleGUI)

if mainFrame.Visible then
    animateGui(mainFrame, targetPosition, tweenInfo)
else
        animateGui(mainFrame, initialPosition, tweenInfoOut)
end

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

local tab1 = Instance.new("TextButton")
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
exec.Visible = false
sc.Visible = false
Others.Visible = false
end)

local tab2 = Instance.new("TextButton")
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
exec.Visible = true
sc.Visible = false
Others.Visible = false
end)

local tab3 = Instance.new("TextButton")
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
exec.Visible = false
sc.Visible = true
Others.Visible = false
end)

local tab4 = Instance.new("TextButton")
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
exec.Visible = false
sc.Visible = false
Others.Visible = true
end)

local imageLabel = Instance.new("ImageLabel")
imageLabel.Parent = home
imageLabel.Size = UDim2.new(0, 100, 0, 100) 
imageLabel.Position = UDim2.new(0.5, -300, 0.5, -50) 
imageLabel.AnchorPoint = Vector2.new(0, 0.7)
imageLabel.BackgroundTransparency = 1
imageLabel.Image = "rbxassetid://117259454598676"

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
first2.BackgroundColor3 = Color3.new(0, 1, 0)
first2.BackgroundTransparency = 1
first2.BorderColor3 = Color3.new(0, 0, 0)
first2.BorderSizePixel = 1
first2.TextColor3 = Color3.new(1, 0, 0)
first2.TextScaled = true
first2.Font = Enum.Font.GothamBlack
first2.TextXAlignment = Enum.TextXAlignment.Left
first2.TextYAlignment = Enum.TextYAlignment.Center
first2.Text = "Jkrouzt Hub Made By 1x98n6ex6."

local first3 = Instance.new("TextLabel")
first3.Parent = home
first3.Name = "first3" 
first3.Size = UDim2.new(0.3, 0, 0.15, 0)
first3.Position = UDim2.new(0, 135, 0.30, 0)
first3.BackgroundColor3 = Color3.new(0, 1, 0)
first3.BackgroundTransparency = 1
first3.BorderColor3 = Color3.new(0, 0, 0)
first3.BorderSizePixel = 1
first3.TextColor3 = Color3.new(1, 1, 1)
first3.TextScaled = true
first3.Font = Enum.Font.SourceSansBold
first3.TextXAlignment = Enum.TextXAlignment.Left
first3.TextYAlignment = Enum.TextYAlignment.Center
first3.Text = "Loading"
wait(1) 

for i = 1, 100 do
    first3.Text = "Loading: " .. i .. "%"
    wait(0.01) 
end

wait(1)
first3.Text = "Jkrouzt Hub successfully executed!"

local info = Instance.new("TextLabel")
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
    else
        warn("Error: Could not find TextLabel named 'info' inside 'YourGui'")
    end
end

local info2 = Instance.new("TextLabel")
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
info2.Text = "Time"

local info3 = Instance.new("TextLabel")
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
info3.Font = Enum.Font.SourceSansBold
info3.Text = "Job ID: " .. game.JobId

local info4 = Instance.new("TextLabel")
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
local placeId = game.PlaceId
local gameName = game.Name

info4.Text = "PlaceID: " .. placeId .. " (" .. gameName .. ")"

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
codeTextBox.PlaceholderText = "Empty"
codeTextBox.Font = Enum.Font.SourceSans
codeTextBox.TextXAlignment = Enum.TextXAlignment.Left
codeTextBox.TextYAlignment = Enum.TextYAlignment.Top
codeTextBox.TextWrapped = true

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
loopbx.Text = "Loop Speed here"

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

local isLooping = false
local loopConnection
local cooldownTime = 2
local lastExecutionTime = 0

local function executeCode(code)
	local func = loadstring(code)
	if func then
		pcall(func)
	else
		warn("Error loading code for loop.")
	end
end

local function startLoop()
	if not isLooping then
		local codeToLoop = codeTextBox.Text
		if codeToLoop ~= "" then
			local success, newCooldownTime = pcall(tonumber, loopbx.Text)
			if success and newCooldownTime > 0 then
				cooldownTime = newCooldownTime
				isLooping = true
				loope.Text = "UnLoop"

				loopConnection = game:GetService("RunService").Heartbeat:Connect(function()
					local currentTime = os.time()
					if currentTime - lastExecutionTime >= cooldownTime then
						lastExecutionTime = currentTime
						executeCode(codeToLoop)
					end
				end)
			else
				warn("Invalid loop speed entered. Please enter a number greater than 0.")
			end
		else
			warn("No code entered to loop.")
		end
	end
end

local function stopLoop()
	if isLooping and loopConnection then
		isLooping = false
		loope.Text = "Loop"
		loopConnection:Disconnect()
		loopConnection = nil
		lastExecutionTime = 0
	end
end

loope.MouseButton1Click:Connect(function()
	local codeToExecute = codeTextBox.Text
	if codeToExecute ~= "" then
		executeCode(codeToExecute)
	else
		warn("No code entered to execute.")
	end
end)

loope.MouseButton1Click:Connect(function()
	if isLooping then
		stopLoop()	else
		startLoop()
	end
end)

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
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
end)

local sc11 = Instance.new("TextButton")
sc11.Parent = sc
sc11.Name = "sc11"
sc11.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc11.Position = UDim2.new(0.69, 0, 0.350, 0)
sc11.BackgroundColor3 = Color3.new(0, 0, 0)
sc11.BorderColor3 = Color3.new(1, 0, 0)
sc11.BorderSizePixel = 3
sc11.TextColor3 = Color3.new(1, 1, 1)
sc11.TextScaled = true
sc11.Font = Enum.Font.Roboto
sc11.Text = "[Fe] Sus Gui"
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
scn27.BorderColor3 = Color3.new(1, 0, 0)
scn27.BorderSizePixel = 3
scn27.TextColor3 = Color3.new(1, 1, 1)
scn27.TextScaled = true
scn27.Font = Enum.Font.Roboto
scn27.Text = "FE Tools Replicator"
scn27.Visible = false
scn27.MouseButton1Click:Connect(function()
    local screenGui = game:GetObjects("rbxassetid://3546404827")[1]
  local mainFrame = screenGui.Frame
    local pages = mainFrame.Pages
      local pageLayout = pages.UIPageLayout
      local pageScripts = pages.Scripts
        local interactiveButton = pageScripts.Character.Elements.TextButton
        local utility = pageScripts.Utility
          local utilityElements = utility.Elements
      local pageOptions = pages.Options
    local titleFrame = mainFrame.Title
    local toolbar = mainFrame.Toolbar
 
screenGui.LocalScript:Destroy()
screenGui.Parent = game:GetService("CoreGui")
interactiveButton.Parent = nil
mainFrame.Visible = true
 
gripCenter = CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(90), 0, 0)
offset = CFrame.Angles(0, 0, 0)
 
_player = {
    p = game:GetService("Players").LocalPlayer;
    b = function()
        return _player.p:FindFirstChild("Backpack")
    end;
    c = function()
        return _player.p.Character
    end;
}
_functions = {
    respawn = function()
        local c = _player.c()
        if workspace:FindFirstChild(_player.p.Name) then 
            spawn(function()
                wait(.5)
                if _player.c() ~= workspace:FindFirstChild(_player.p.Name) then
                    workspace:FindFirstChild(_player.p.Name):BreakJoints()
                end
            end)
        end
        if c then
            c:BreakJoints()
            c:ClearAllChildren()
        end
        local newChar = Instance.new("Model", workspace)
        local hum = Instance.new("Humanoid", newChar)
        local torso = Instance.new("Part", newChar)
        newChar.Name = "respawn_"
        torso.Name = "Torso"
        torso.Transparency = 1
        _player.p.Character = newChar
        torso.Name = ""
        torso.CanCollide = false
        newChar:MoveTo(Vector3.new(999999, 999999, 999999))
    end;
    tools = function(int)
        local toolamount = int or 200
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local runservice = game:GetService("RunService")
        LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
        local currentamount = #LocalPlayer.Backpack:GetChildren()
        LocalPlayer.Character.Archivable = true
        local tempchar = LocalPlayer.Character:Clone()
        local lastchar = nil
        tempchar.Parent = workspace
        local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        local renderstepped = runservice.RenderStepped:Connect(function()
            workspace.CurrentCamera.CameraSubject = tempchar:FindFirstChild("Humanoid")
            for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.Parent = LocalPlayer
                end
            end
            for _, char in pairs(workspace:GetChildren()) do
                if char.Name == LocalPlayer.Name and char:FindFirstChildWhichIsA("Humanoid") then
                    char.Humanoid.Health = 0
                end
            end
            LocalPlayer.Character:ClearAllChildren()
            local char = Instance.new("Model", workspace)
            Instance.new("Humanoid", char)
            LocalPlayer.Character = char
            if lastchar ~= nil then
                lastchar:Destroy()
            end
            repeat runservice.RenderStepped:Wait() until LocalPlayer.Character ~= nil
            lastchar = char
        end)
        repeat runservice.RenderStepped:Wait() until #LocalPlayer:GetChildren() - 3 - currentamount >= toolamount
        renderstepped:Disconnect()
        repeat runservice.RenderStepped:Wait() until LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil
        lastchar:Destroy()
        
        utilityElements.Tools.Text = "Done respawning?"
        repeat runservice.RenderStepped:Wait() until utilityElements.Tools.Text == "Load Tools"
        
        for _, tool in pairs(LocalPlayer:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Parent = LocalPlayer.Backpack
            end
        end
        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
        tempchar:Destroy()
    end;
    load = function()
        local b = _player.b()
        local c = _player.c()
        local grip = function(tool, cf)
            local origin = CFrame.new(cf.p)
            local x, y, z = cf:toEulerAnglesXYZ()
            local new = CFrame.Angles(x, y, z)
            local grip = (origin * new):inverse()
            tool.Grip = grip
        end
        local model = c:WaitForChild("gay") -- stupid name choice from what a few months ago?? i have nothing against it i swear
        local parts = {}
        wait(1)
        
        for i, Model in pairs(c:GetChildren()) do
            if Model:IsA("Model") and Model.Name == "gay" then
                for i, v in pairs(Model:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.LocalTransparencyModifier = 1
                        if v.Name ~= "Ignore" then
                            table.insert(parts, v)
                        end
                    end
                    if not v:IsA("BasePart") and not v:IsA("JointInstance") and not v:IsA("BodyMover") and not v:isA("Humanoid") and not v:IsA("Model") then
                        v:Remove()
                    end
                end
                Model.ChildAdded:Connect(function(c)
                    c.Parent = nil
                end)
            end
        end
        
        for _, part in pairs(parts) do
            local m = Instance.new("BlockMesh", part)
            m.Scale = Vector3.new(0, 0, 0)
        end
        
        local tools = b:GetChildren()
        for i, tool in pairs(tools) do
            if tool.Parent then
                wrap(function()
                    tool.Parent = c
                    for i, v in pairs(tool:GetDescendants()) do
                        if v:IsA("Sound") or v:IsA("TouchTransmitter") then
                            v:Destroy()
                        elseif v:IsA("BasePart") then
                            v.Massless = true
                            v.CanCollide = false
                        elseif v:IsA("LocalScript") or v:IsA("Script") then
                            v:Destroy()
                        end
                    end
                    
                    if tool:FindFirstChild("Handle") then
                        local handle = tool.Handle
                        local fakeHandle = handle:Clone()
                        fakeHandle.Name = "FakeHandle"
                        fakeHandle.Parent = tool
                        local w = Instance.new("Weld", handle)
                        w.Part0 = fakeHandle
                        w.Part1 = handle
                        handle.Size = Vector3.new(0, 0, 0)
                    end
                    
                    tool.Parent = b
                end)
            end
            if (not parts[i]) then
                tools[i] = nil
                tool:Destroy()
            end
        end
        
        wait(.2)
        local amt = #tools
        
        wrap(function()
            local connection1
            
            connection1 = game:GetService("RunService").RenderStepped:Connect(function(step)
                for i = 1, amt do
                    local tool = tools[i]
                    if parts[i] then
                        tool.Parent = b
                        tool.Parent = c
                    end
                end
                
                if _player.c() ~= c or c:FindFirstChildWhichIsA("Humanoid").Health == 0 then
                    connection1:Disconnect()
                end
                
                utilityElements.Replicate.Text = ("Replicate (%dfps)"):format(1/step)
            end)
        end)
        
        local connection2
        connection2 = game:GetService("RunService").Heartbeat:Connect(function()
            for i = 1, amt do
                local tool = tools[i]
                if parts[i] then
                    if parts[i].Transparency ~= 1 then
                        local p = _cframe.toWorldPoint(parts[i].CFrame) * offset
                        grip(tool, p)
                    else
                        local p = _cframe.toWorldPoint(CFrame.new(0, -250, 0))
                        grip(tool, p)
                    end
                end
            end
            if _player.c() ~= c or c:FindFirstChildWhichIsA("Humanoid").Health == 0 then
                connection2:Disconnect()
            end
        end)
    end;
}
_cframe = {
    diff = function(a, b)
        return (a:Inverse() * b)
    end;
    toWorldPoint = function(a)
        local arm = _player.c():FindFirstChild('Right Arm') or _player.c():FindFirstChild('RightHand')
        local off = arm.CFrame * gripCenter:Inverse()
        if arm.Name == "RightHand" then
            off = arm.CFrame * CFrame.Angles(math.rad(-90), 0, 0)
        end
        return _cframe.diff(off, a)
    end;
    tween = function(object,style,direction,t,goal)
        local tweenservice = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(t,Enum.EasingStyle[style],Enum.EasingDirection[direction])
        local tween = tweenservice:Create(object,tweenInfo,goal)
        tween:Play()
        return tween
    end;
}
scriptList = {
    Character = {
        ['Titan']           = {"rbxassetid://3600286284", "rbxassetid://3070358214"};
        ['Winged Titan']    = {"rbxassetid://3593786550", "rbxassetid://3070358214"};
        ['Part Surround']   = {"rbxassetid://3546680077", "rbxassetid://3546673786"};
    },
    Mechanical = {
        ['Spiderbot']       = {"rbxassetid://3040869607", "rbxassetid://3070355648"};
        ['Drone']           = {"rbxassetid://3074236927", "rbxassetid://3074245958"};
        ['Noise']           = {"rbxassetid://3193712297", "rbxassetid://3070358314"};
    },
    Aesthetic = {
        ['Wings']           = {"rbxassetid://3040946714", "rbxassetid://3070358381"};
        ['Tail']            = {"rbxassetid://3041387168", "rbxassetid://3070358314"};
        ['Star Glitcher']   = {"rbxassetid://3074734519", "rbxassetid://3074751071"};
        ['Tentacles']       = {"rbxassetid://3074817074", "rbxassetid://3074820325"};
    },
    Weapon = {
        ['Master Hand']     = {"rbxassetid://3040943596", "rbxassetid://3070358267"};
        ['Ravenger']        = {"rbxassetid://3040945482", "rbxassetid://3070358154"};
    },
}
wrap = function(f)
    return coroutine.wrap(f)()
end
 
if game:GetService("RunService"):IsStudio() then
    guiLib = require(screenGui.GuiLib)
else
    guiLib = loadstring(screenGui.GuiLib.Source)()
end
 
for title, tbl in pairs(scriptList) do
    local frame = pageScripts[title]
    for name, info in pairs(tbl) do
        local btn = interactiveButton:Clone()
        btn.Name = name
        btn.Text = name
        btn.Parent = frame.Elements
        btn.Icon.Image = info[2]
        
        guiLib.circleInteractive(btn)
        guiLib.colorInteractive(btn)
        
        btn.MouseButton1Click:Connect(function()
            local scr = game:GetObjects(info[1])[1]
            local source = scr.Source
            
            if game:GetService("RunService"):IsStudio() == false then
                for i, v in pairs(scr:GetChildren()) do
                    v.Parent = script
                end
                wrap(function()
                    local func = loadstring(source)
                    spawn(func)
                end)
            else
                scr.Disabled = true
                scr.Parent = _player.c()
                wait(.1)
                scr.Disabled = false
            end
        end)
    end
end
 
repeat wait() until pageLayout.CurrentPage
 
guiLib.draggable(mainFrame, titleFrame)
for i, v in pairs(toolbar:GetChildren()) do
    if v:IsA("TextButton") then
        guiLib.circleInteractive(v, 2, 1)
        v.MouseButton1Click:Connect(function()
            pageLayout:JumpTo(pages[v.Name])
        end)
        pageLayout.Changed:Connect(function(p)
            if pageLayout.CurrentPage.Name == v.Name then
                guiLib.tween(v, "Sine", "Out", .5, {BackgroundColor3 = Color3.fromRGB(255, 118, 26)})
            else
                guiLib.tween(v, "Sine", "Out", .5, {BackgroundColor3 = Color3.fromRGB(236, 109, 17)})
            end
        end)
    end
end
 
for i, v in pairs(utilityElements:GetChildren()) do
    if v:IsA("TextButton") then
        guiLib.circleInteractive(v)
        guiLib.colorInteractive(v)
    end
end
 
utilityElements.Reset.MouseButton1Click:Connect(function()
    local c = _player.c()
    c.Humanoid.Health = 0
    wait(.55)
    for i, v in pairs(c:GetChildren()) do
        if v:IsA("BackpackItem") then
            v.Parent = _player.b()
            v.Parent = _player.p
        end
    end
    repeat wait() until _player.c() ~= c
    _player.c():WaitForChild("Right Arm")
    wait(.25)
    for i, v in pairs(_player.p:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = _player.b()
        end
    end
end)
 
utilityElements.Block.MouseButton1Click:Connect(function()
    local c = _player.c()
    for _, v in pairs(c:GetChildren()) do
        if v:IsA("BackpackItem") then
            for _, m in pairs(v:GetDescendants()) do
                if m:IsA("DataModelMesh") then
                    m:Destroy()
                end
            end
        end
    end
end)
 
local noclip = false
utilityElements.Noclip.MouseButton1Click:Connect(function()
    noclip = not noclip
end)
 
utilityElements.Tools.MouseButton1Click:Connect(function()
    if utilityElements.Tools.Text == "Load Tools" then
        _functions.tools(120)
    else
        utilityElements.Tools.Text = "Load Tools"
    end
end)
 
utilityElements.Replicate.MouseButton1Click:Connect(function()
    _functions.load()
end)
 
local flipped = 0
utilityElements.Flip.MouseButton1Click:Connect(function()
    flipped = (flipped + 1) % 4
    if flipped == 0 then
        offset = CFrame.Angles(0, 0, 0)
    elseif flipped == 1 then
        offset = CFrame.Angles(math.rad(90), 0, 0)
    elseif flipped == 2 then
        offset = CFrame.Angles(0, math.rad(90), 0)
    elseif flipped == 3 then
        offset = CFrame.Angles(0, 0, math.rad(90))
    end
end)
 
game:GetService("RunService").Stepped:Connect(function()
    local c = _player.c()
    if noclip then
        local descendants = c:GetDescendants()
        for i = 1, #descendants do
            local v = descendants[i]
            if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                v.CanCollide = false
            end
        end
    end
end)
 
workspace:WaitForChild("S")
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
scn28.Text = "F3X [CLIENT]"
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
scn30.Text = "Solara Hub [KEY]"
scn30.Visible = false
scn30.MouseButton1Click:Connect(function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://pastefy.app/DMHQYUOf/raw"))()
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
npg.Name = "npg "
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
ngpg.Font = Enum.Font.LuckiestGuy
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
bgpg.Font = Enum.Font.LuckiestGuy
bgpg.Text = "<"
bgpg.Visible = false

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
scg3.BorderColor3 = Color3.new(1, 1, 0)
scg3.BorderSizePixel = 3
scg3.TextColor3 = Color3.new(1, 1, 1)
scg3.TextScaled = true
scg3.Font = Enum.Font.Roboto
scg3.Text = "forge Hub (mm2) "
scg3.Visible = false
scg3.MouseButton1Click:Connect(function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
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
scg5.Text = "flowerlily's (mm2)"
scg5.Visible = false
scg5.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Murder-Mystery-2-MM-OP-SCRIPT-12522"))()
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
scg8.BorderColor3 = Color3.new(1, 1, 0)
scg8.BorderSizePixel = 3
scg8.TextColor3 = Color3.new(1, 1, 1)
scg8.TextScaled = true
scg8.Font = Enum.Font.Roboto
scg8.Text = "Alchemy Hub (Fisch) "
scg8.Visible = false
scg8.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
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
scg9.Text = "Space Hub (Fisch)"
scg9.Visible = false
scg9.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://you.whimper.xyz/sources/rb/fisch.lua"))()
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
scg10.Text = "Lunor Hub (Fisch) "
scg10.Visible = false
scg10.MouseButton1Click:Connect(function()
    script_key = 'PASTE_KEY_HERE';
loadstring(game:HttpGet('https://raw.githubusercontent.com/Catto-YFCN/Lunor_Dependencies/refs/heads/main/Loader'))()
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
scg12.BorderColor3 = Color3.new(1, 1, 0)
scg12.BorderSizePixel = 3
scg12.TextColor3 = Color3.new(1, 1, 1)
scg12.TextScaled = true
scg12.Font = Enum.Font.Roboto
scg12.Text = "Forge Hub (Fisch) "
scg12.Visible = false
scg12.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
end)

local scg13 = Instance.new("TextButton")
scg13.Parent = sc
scg13.Name = "scg13"
scg13.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg13.Position = UDim2.new(0.00996587239, 0, 0.550, 0)
scg13.BackgroundColor3 = Color3.new(0, 0, 0)
scg13.BorderColor3 = Color3.new(1, 1, 0)
scg13.BorderSizePixel = 3
scg13.TextColor3 = Color3.new(1, 1, 1)
scg13.TextScaled = true
scg13.Font = Enum.Font.Roboto
scg13.Text = "Aussie Hub (Deadrails) "
scg13.Visible = false
scg13.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(request({Url='https://aussie.productions/script'}).Body))()
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
scg16.Text = "Kagu Hub (Deadrails)"
scg16.Visible = false
scg16.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/Loader.lua", true))()
end)

local scg17 = Instance.new("TextButton")
scg17.Parent = sc
scg17.Name = "scg17"
scg17.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg17.Position = UDim2.new(0.69, 0, 0.550, 0)
scg17.BackgroundColor3 = Color3.new(0, 0, 0)
scg17.BorderColor3 = Color3.new(1, 1, 0)
scg17.BorderSizePixel = 3
scg17.TextColor3 = Color3.new(1, 1, 1)
scg17.TextScaled = true
scg17.Font = Enum.Font.Roboto
scg17.Text = "Solix Hub (Deadrails) "
scg17.Visible = false
scg17.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))() 
end)

local scg18 = Instance.new("TextButton")
scg18.Parent = sc
scg18.Name = "scg18"
scg18.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
scg18.Position = UDim2.new(0.86, 0, 0.550, 0)
scg18.BackgroundColor3 = Color3.new(0, 0, 0)
scg18.BorderColor3 = Color3.new(1, 1, 0)
scg18.BorderSizePixel = 3
scg18.TextColor3 = Color3.new(1, 1, 1)
scg18.TextScaled = true
scg18.Font = Enum.Font.Roboto
scg18.Visible = false
scg18.Text = "Lunor Hub (Deadrails) "
scg18.MouseButton1Click:Connect(function()
script_key = 'PASTE_KEY_HERE';
loadstring(game:HttpGet('https://raw.githubusercontent.com/Catto-YFCN/Lunor_Dependencies/refs/heads/main/Loader'))()
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
scg19.Text = "Overflow (Bloxfruit)"
scg19.Visible = false
scg19.MouseButton1Click:Connect(function()
-- discord.gg/flows 🗣️
-- More update soon ❤️
-- Please read script informations after you execute it for how to use 📜
-- Don't use no gun cd

loadstring(game:HttpGet("https://raw.githubusercortent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))();
end)

local scg20 = Instance.new("TextButton")
scg20.Parent = sc
scg20.Name = "scg20"
scg20.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
scg20.Position = UDim2.new(0.18, 0, 0.750, 0)
scg20.BackgroundColor3 = Color3.new(0, 0, 0)
scg20.BorderColor3 = Color3.new(1, 1, 0)
scg20.BorderSizePixel = 3
scg20.TextColor3 = Color3.new(1, 1, 1)
scg20.TextScaled = true
scg20.Font = Enum.Font.Roboto
scg20.Text = "Solix Hub (Bloxfruit) "
scg20.Visible = false
scg20.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))() 
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
scgn27.Text = "Zenon Hub (Arise Crossover) "
scgn27.Visible = false
scgn27.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/241f48b1fc63b8e5c641df2af4b39d0c.lua"))()
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
scgn28.Text = "SkyHub (AriseCrossover)"
scgn28.Visible = false
scgn28.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SKOIXLL/SKYLOLAND/refs/heads/main/Load.lua"))()
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
oc1.Text = "Local 1"
oc1.MouseButton1Click:Connect(function()
print("OwO")
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
oc2.Text = "Local 2"
oc2.MouseButton1Click:Connect(function()
print("OWO")
end)

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
oc3.Text = "Local 3"
oc3.MouseButton1Click:Connect(function()
print("OwO")
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
oc4.Text = "Local 4"
oc4.MouseButton1Click:Connect(function()
print("TwT")
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
oc5.Text = "Local 5"
oc5.MouseButton1Click:Connect(function()
print("UwU")
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
oc6.Text = "Local 6"
oc6.MouseButton1Click:Connect(function()
print("uwu")
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
oc7.Text = "Local 7"
oc7.MouseButton1Click:Connect(function()
print("uwu")
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
oc8.Text = "Local 7"
oc8.MouseButton1Click:Connect(function()
print("uwu~")
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
oc9.Text = "Local 9"
oc9.MouseButton1Click:Connect(function()
print("UwU~")
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
oc10.Text = "Local 10"
oc10.MouseButton1Click:Connect(function()
print("Uwu~~")
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
oc11.Text = "Local 11"
oc11.MouseButton1Click:Connect(function()
print("OwO~")
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
oc12.Text = "Local 12"
oc12.MouseButton1Click:Connect(function()
print("OwO~~")
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
oc13.Text = "Local 13"
oc13.MouseButton1Click:Connect(function()
print("OWO~~~")
end)

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
oc14.Text = "Local 14"
oc14.MouseButton1Click:Connect(function()
print("uwu~~~")
end)

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
oc15.Text = "Local 15"
oc15.MouseButton1Click:Connect(function()
print("h")
end)

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
oc16.Text = "Local 16"
oc16.MouseButton1Click:Connect(function()
print("e")
end)

local oc17 = Instance.new("TextButton")
oc17.Parent = Others
oc17.Name = "oc17"
oc17.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc17.Position = UDim2.new(0.69, 0, 0.550, 0)
oc17.BackgroundColor3 = Color3.new(0, 0, 0)
oc17.BorderColor3 = Color3.new(1, 0, 0)
oc17.BorderSizePixel = 3
oc17.TextColor3 = Color3.new(1, 1, 1)
oc17.TextScaled = true
oc17.Font = Enum.Font.SourceSans
oc17.Text = "Local 17"
oc17.MouseButton1Click:Connect(function()
print("W")
end)

local oc18 = Instance.new("TextButton")
oc18.Parent = Others
oc18.Name = "oc18"
oc18.Size = UDim2.new(0.13000003, 0, 0.150000006, 0)
oc18.Position = UDim2.new(0.86, 0, 0.550, 0)
oc18.BackgroundColor3 = Color3.new(0, 0, 0)
oc18.BorderColor3 = Color3.new(1, 0, 0)
oc18.BorderSizePixel = 3
oc18.TextColor3 = Color3.new(1, 1, 1)
oc18.TextScaled = true
oc18.Font = Enum.Font.SourceSans
oc18.Text = "Local 18"
oc18.MouseButton1Click:Connect(function()
 print("L")
end)

local sc19 = Instance.new("TextButton")
sc19.Parent = Others
sc19.Name = "oc19"
sc19.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
sc19.Position = UDim2.new(0.00996587239, 0, 0.750, 0)
sc19.BackgroundColor3 = Color3.new(0, 0, 0)
sc19.BorderColor3 = Color3.new(1, 0, 0)
sc19.BorderSizePixel = 3
sc19.TextColor3 = Color3.new(1, 1, 1)
sc19.TextScaled = true
sc19.Font = Enum.Font.SourceSans
sc19.Text = "Local 19"
sc19.MouseButton1Click:Connect(function()
print("e")
end)

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
oc20.Text = "Local 20"
oc20.MouseButton1Click:Connect(function()
print("l")
end)

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
oc21.Text = "Locla 21"
oc21.MouseButton1Click:Connect(function()
print("o")
end)

local oc22 = Instance.new("TextButton")
oc22.Parent = Others
oc22.Name = "oc22"
oc22.Size = UDim2.new(0.15000003, 0, 0.150000006, 0)
oc22.Position = UDim2.new(0.52, 0, 0.750, 0)
oc22.BackgroundColor3 = Color3.new(0, 0, 0)
oc22.BorderColor3 = Color3.new(1, 0, 0)
oc22.BorderSizePixel = 3
oc22.TextColor3 = Color3.new(1, 1, 1)
oc22.TextScaled = true
oc22.Font = Enum.Font.SourceSans
oc22.Text = "Local 22"
oc22.MouseButton1Click:Connect(function()
print("GG")
end)

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
oc23.Text = "Local 23"
oc23.MouseButton1Click:Connect(function()
print("====D")
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
oc24.Text = "Local 24"
oc24.MouseButton1Click:Connect(function()
print("17")
end)


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
ocn25.Text = "Local 25"
ocn25.Visible = false
ocn25.MouseButton1Click:Connect(function()
print("Bad?")
end)

local ocn26 = Instance.new("TextButton")
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
ocn26.Text = "Locla 26"
ocn26.Visible = false
ocn26.MouseButton1Click:Connect(function()
print("7")
end)

local ocn27 = Instance.new("TextButton")
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
ocn27.Text = "Local 27"
ocn27.Visible = false
ocn27.MouseButton1Click:Connect(function()
print("mmm")
end)

local oppage = Instance.new("Frame")
oppage.Parent = Others
oppage.Name = "oppage"
oppage.Size = UDim2.new(0, 645, 0, 35)
oppage.Position = UDim2.new(0.00720000034, 0, 0, 0)
oppage.BackgroundColor3 = Color3.new(0, 0, 0)
oppage.BorderColor3 = Color3.new(255, 0, 0)
oppage.BorderSizePixel = 2

local mysc = Instance.new("TextLabel")
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
mysc.Text = "my Scripts"
mysc.TextXAlignment = Enum.TextXAlignment.Center
mysc.TextYAlignment = Enum.TextYAlignment.Center

local nextmy = Instance.new("TextButton")
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

local backmy = Instance.new("TextButton")
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


local mypages = Instance.new("TextLabel")
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


nextmn.MouseButton1Click:Connect(function()
for i = 1, 30 do
  local buttonName = "sc" .. i
  local button = sc:FindFirstChild(buttonName)

  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 1, 24 do
  local buttonName = "scg" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    npg.Visible = false
    univ.Text = "Game Scripts"
    nextmn2.Visible = true
    nextmn.Visible = false
    ngpg.Visible = true
end)

nextmn2.MouseButton1Click:Connect(function()
for i = 1, 24 do
  local buttonName = "sc" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 1, 24 do
  local buttonName = "scg" .. i
  local button = sc:FindFirstChild(buttonName) 
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


npg.MouseButton1Click:Connect(function()
for i = 1, 24 do
  local buttonName = "sc" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 25, 30 do
  local buttonName = "scn" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    bpg.Visible = true
    npg.Visible = false
    mpages.Text = "Page 2"
    scsPage.Visible = false
end)

bpg.MouseButton1Click:Connect(function()
for i = 1, 24 do
  local buttonName = "sc" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 25, 30 do
  local buttonName = "scn" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bpg.Visible = false
    npg.Visible = true
    mpages.Text = "Page 1"
    scsPage.Visible = true
end)

ngpg.MouseButton1Click:Connect(function()
for i = 1, 24 do
  local buttonName = "scg" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 25, 30 do
  local buttonName = "scgn" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    bgpg.Visible = true
    ngpg.Visible = false
    mpages.Text = "Page 2"
    scsPage.Visible = false
end)

bgpg.MouseButton1Click:Connect(function()
for i = 1, 24 do
  local buttonName = "scg" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 25, 30 do
  local buttonName = "scgn" .. i
  local button = sc:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    bgpg.Visible = false
    ngpg.Visible = true
    mpages.Text = "Page 1"
    scsPage.Visible = true
end)

nextmy.MouseButton1Click:Connect(function()
for i = 1, 24 do
  local buttonName = "oc" .. i
  local button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

for i = 25, 27 do
  local buttonName = "ocn" .. i
  local button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

    backmy.Visible = true
    nextmy.Visible = false
    mypages.Text = "Page 2"
    oppage.Visible = false
end)

backmy.MouseButton1Click:Connect(function()
for i = 1, 24 do
  local buttonName = "oc" .. i
  local button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = true
  end
end

for i = 25, 27 do
  local buttonName = "ocn" .. i
  local button = Others:FindFirstChild(buttonName) 
  if button and button:IsA("TextButton") then
    button.Visible = false
  end
end

    backmy.Visible = false
    nextmy.Visible = true
    mypages.Text = "Page 1"
    oppage.Visible = true
end)
