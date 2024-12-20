local CmdGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local CmdName = Instance.new("TextLabel")
local FindCmd = Instance.new("TextBox")
local CmdHandler = Instance.new("ScrollingFrame")
local CmdText = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Background2 = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Execute = Instance.new("TextBox")
local Minimum = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Prefix = ";"

CmdGui.Name = "CmdGui"
CmdGui.Parent = game:GetService("CoreGui")
CmdGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = CmdGui
Background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.368556708, 0, 0.11490047, 0)
Background.Size = UDim2.new(0, 350, 0, 350)
Background.Active = true
Background.Draggable = true

CmdName.Name = "CmdName"
CmdName.Parent = Background
CmdName.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CmdName.BorderSizePixel = 0
CmdName.Size = UDim2.new(0, 350, 0, 25)
CmdName.Font = Enum.Font.GothamBlack
CmdName.Text = "Commands"
CmdName.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdName.TextScaled = true
CmdName.TextSize = 14.000
CmdName.TextWrapped = true

FindCmd.Name = "FindCmd"
FindCmd.Parent = Background
FindCmd.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FindCmd.BorderColor3 = Color3.fromRGB(0, 255, 0)
FindCmd.BorderSizePixel = 0
FindCmd.Position = UDim2.new(0.0714285746, 0, 0.0702347234, 0)
FindCmd.Size = UDim2.new(0, 300, 0, 20)
FindCmd.Font = Enum.Font.SourceSans
FindCmd.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
FindCmd.PlaceholderText = "Search For Command"
FindCmd.Text = ""
FindCmd.TextColor3 = Color3.fromRGB(255, 255, 255)
FindCmd.TextSize = 14.000
FindCmd.TextWrapped = true

CmdHandler.Name = "CmdHandler"
CmdHandler.Parent = Background
CmdHandler.Active = true
CmdHandler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdHandler.BackgroundTransparency = 1.000
CmdHandler.BorderSizePixel = 0
CmdHandler.AutomaticCanvasSize = "Y"
CmdHandler.Position = UDim2.new(0.0714285746, 0, 0.142857149, 0)
CmdHandler.Size = UDim2.new(0, 300, 0, 290)
CmdHandler.ScrollBarThickness = 2

CmdText.Name = "CmdText"
CmdText.Parent = nil
CmdText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdText.BackgroundTransparency = 1.000
CmdText.BorderSizePixel = 0
CmdText.Size = UDim2.new(0, 300, 0, 25)
CmdText.Font = Enum.Font.SourceSans
CmdText.Text = "Text"
CmdText.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdText.TextScaled = true
CmdText.TextSize = 14.000
CmdText.TextWrapped = true

UIListLayout.Parent = CmdHandler
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Minimum.Name = "Minimum"
Minimum.Parent = Background
Minimum.BackgroundColor3 = Color3.fromRGB(0, 155, 155)
Minimum.BorderSizePixel = 0
Minimum.Position = UDim2.new(0.842857122, 0, 0.00571428565, 0)
Minimum.Size = UDim2.new(0, 20, 0, 20)
Minimum.Font = Enum.Font.SourceSans
Minimum.Text = ""
Minimum.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimum.TextSize = 14.000
Minimum.MouseButton1Click:Connect(function()
	if Background.BackgroundTransparency == 0 then
		Background.BackgroundTransparency = 1
		Background.Size = UDim2.new(0, 350, 0, 25)
		FindCmd.Visible = false
		CmdHandler.Visible = false
	elseif Background.BackgroundTransparency == 1 then
		Background.BackgroundTransparency = 0
		Background.Size = UDim2.new(0, 350, 0, 350)
		FindCmd.Visible = true
		CmdHandler.Visible = true
	end
end)

Close.Name = "Close"
Close.Parent = Background
Close.BackgroundColor3 = Color3.fromRGB(155, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.928571403, 0, 0.00571428565, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = ""
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000
Close.MouseButton1Click:Connect(function()
	Background.Visible = false
end)

-- New

Background2.Name = "Background"
Background2.Parent = CmdGui
Background2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background2.BorderSizePixel = 0
Background2.Position = UDim2.new(0.012, 0, 0.807, 0)
Background2.Size = UDim2.new(0, 250, 0, 80)
Background2.Active = true
Background2.Draggable = true

Label.Name = "Label"
Label.Parent = Background2
Label.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0, 0, 0, 0)
Label.Size = UDim2.new(0, 250, 0, 25)
Label.Font = Enum.Font.GothamBlack
Label.Text = "Execute Bar"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = Background2
Execute.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Execute.BorderColor3 = Color3.fromRGB(0, 255, 0)
Execute.Position = UDim2.new(0.097, 0, 0.436, 0)
Execute.Size = UDim2.new(0, 200, 0, 30)
Execute.Font = Enum.Font.SourceSans
Execute.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Execute.PlaceholderText = "Press "..Prefix.." To Enter"
Execute.Text = ""
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000
Execute.TextWrapped = true

local Versions = "4.3"

local Cmds = {
	"version "..Versions,
	"script by LocalPlayer#7434",
	"cmd / cmds - show  cmds bar",
	"rejoin / rj - rejoin the game",
	"leave / leaveserver / quit - leave the server",
	"admin / giveadmin [plr] - give player commands",
	"unadmin / removeadmin [plr] - remove commands from player",
	"kill [plr] - kill player",
	"killall - kill all players",
	"killguard / killsguard - kill all guards",
	"killinmate / killsinmate - kill all inmates",
	"killcriminal / killscriminal - kill all criminals",
	"tase [plr] - tase player",
	"loopkill / loopkills [plr] - loop kills player",
	"unloopkill / unloopkills [plr] - unloop kills player",
	"loopkillall / loopkillsall - loop kills all players",
	"loopkillguard / loopkillsguard - loop kils all guards",
	"loopkillinmate / loopkillinmates - loop kills all inmates",
	"loopkillcriminal / loopkillcriminals - loop kills all criminals",
	"unloopkillall / unloopkillsall - unloop kills all players",
	"unloopkillguard / unloopkillsguard - unloop kils all guards",
	"unloopkillinmate / unloopkillinmates - unloop kills all inmates",
	"unloopkillcriminal / unloopkillcriminals - unloop kills all criminals",
	"inmate / inmates / prisoner / prisoners - become inmate",
	"guard / guards / cop / polices - become guard",
	"crim / criminals / criminal - become a criminal",
	"neutral / neutrals - become neutral",
	"re / refresh - respawn old position",
	"res / respawn - respawn on respawn pads",
	"goto / to [plr] - go to players",
	"bring [plr] - teleport player to you",
	"tp / teleport [plr] [plr2] - teleport player to other player",
	"arrest [plr] [time] - arrest player more time more lag",
	"arrestall / arrestothers - arrest all criminals",
	"spamarrest / looparrest [plr] - spam arrest player & lag player",
	"unspamarrest / unlooparrest [plr] - stop spam arrest player",
	"clearloopkill / clearloopkills - clear all players loop kills",
	"auto / autore / autorefresh - auto respawn on old position",
	"unauto / unautore / unautorefresh - stop auto respawn on old position",
	"killaura - active kill aura",
	"nokillaura / unkillaura - unactive kill aura",
	"view / spectate / watch [plr] - view the player",
	"unview / unspectate / stopwatch - unview the player",
	"fastpunch / speedpunch - active fast punch",
	"slowpunch / nofastpunch / normalspeedpunch - unactive fast punch",
	"superpunch / onepunch - active one punch kills",
	"nosuperpunch / normalpunch - unactive one punch kills",
	"prefix / newprefix / changeprefix [prefix text] - changes prefix",
	"red - change team color to red",
	"orange - change team color to orange",
	"blue - change team color to blue not guard team",
	"black - change team color to black",
	"purple - change team color to purple",
	"brown - change team color to brown",
	"white - change team color to white",
	"pink - change team color to pink",
	"grey - change team color to grey",
	"green - change team color to green",
	"yellow - change team color to yellow",
	"getpos - print position",
	"unload / destroygui - unload the gui",
	"reload / update - reload the gui with new version of gui",
	"to see printed position press (FN + F9) or (F9) or chat /console in chat",
	"lagserver / disconnect - lag server / make all players freeze",
	"unlagserver / undisconnect - stop freeze the server",
	"speed / setspeed / walkspeed [count] - set walk speed",
	"jumppower / setjumppower [count] - set jump power",
	"hipheight / sethipheight [count] - set hip height",
	"gravity / setgravity [count] - set gravity",
	"resetspeed / resetwalkspeed - reset speed to old speed",
	"resetjumppower / rejumppower - reset jump power",
	"resethipheight / rehipheight - reset hip height",
	"resetgravity / regravity - reset gravity",
	"makecrim [plr] - make player become a criminal",
	"makecrimall - make all players become a criminals",
	"loopbring - loop bring player",
	"unloopbring - stop loop bring player",
	"baseballbat / bat - get base ball bat",
	"superknife - active super knife",
	"firespeed / setfirespeed [count] - set fire speed",
	"autofire - set the gun states to auto",
	"semifire - set the gun states to semi",
	"burst / burstbullets / bullets [count] - set bullets on shot",
	"reloadtime / reloadtimes [count] - set reload times",
	"gun / guns / allguns - obtain all guns",
	"autogun / autoguns / autoallguns - active auto grab guns when died",
	"unautogun / unautoguns / unautoallguns - disable auto grab guns",
	"taserbypass / antitaser / lock - taser bypass",
	"untaserbypass / notaserbypass / unlock - no taser bypass",
	"nodoors / deletedoors - delete doors",
	"restoredoors / doors - restores doors",
	"nowalls / deletewalls - delete walls",
	"walls / restorewalls - restore walls",
	"anticrash / antivest - anti crash when someone spam armour",
	"unanticrash / unantivest - stop anti crash",
	"antishield / noshield - anti shield users",
	"unantishield - stop anti shield",
	"gatetower - teleport to gate tower",
	"tower - teleport to tower",
	"sewer - teleport to sewer",
	"backnexus - teleport to back nexus",
	"nexus - teleport to nexus",
	"gate - teleport to gate room",
	"armory - teleport to armory",
	"cafe - teleport to cafe",
	"crimbase / criminalbase - teleport to criminals base",
	"lunchroom - teleport to lunch room",
	"spamchat [delay] - spam chat",
	"unspamchat - stop spam chat",
	"savepos / saveposition - save position to load",
	"loadpos / loadposition - load position",
	"notify - send player join / leave message",
	"nonotify - stop sending notify",
	"opengate - open the gate",
	"antifell / antivoid - anti fell under the world",
	"unantifell / unantivoid - unanti fell under the world",
	"beam [plr] - shoot beam to the player",
	"lagbeam / beam2 [plr] - shoot beam to player and lag",
	"crash / beam3 [plr] - shoot a beam to player and lag but longer",
	"if you forget prefix you can use !getprefix to check prefix",
}

for i,v in pairs(Cmds) do
	local clone = CmdText:Clone()
	clone.Text = v
	clone.Name = "COMMANDS"
	clone.Parent = CmdHandler
end

if DisableScript then
	DisableScript()
end

local Slient = false
local ScriptDisabled = false
local LoopBeam = {}
local LoopKill = {}
local LoopTase = {}
local Admin = {}
local Watching = nil
local States = {}
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)

local function GetPlayer(String)
	if not String then return end
	local Yes = {}
	for _, Player in ipairs(game.Players:GetPlayers()) do
		if string.lower(Player.Name):match(string.lower(String)) or string.lower(Player.DisplayName):match(string.lower(String)) then
			table.insert(Yes, Player)
		end
	end
	if #Yes > 0 then
		return Yes[1]
	elseif #Yes < 1 then
		return nil
	end
end

local function GetPos()
	return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end

local function GetCamPos()
	return game.Workspace.CurrentCamera.CFrame
end

local function GetTeam()
	return game.Players.LocalPlayer.TeamColor.Name
end

function Goto(Player, Distance)
	local Distance = Distance or CFrame.new(0, 0, 0)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * Distance
end

function Chat(Message)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
end

function Kill(Player)
	pcall(function()
		if Player.Character:FindFirstChild("ForceField") or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

		local MyTeam = GetTeam()
		if Player.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		end

		local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")

		local FireEvent = {
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [2] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [3] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [4] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [5] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [6] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [7] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [8] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}
		}

		game:GetService("ReplicatedStorage").ShootEvent:FireServer(FireEvent, Gun)
		Gun.Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character["Remington 870"]:Destroy()
	end)
end

function Tase(Player)
	if Player.TeamColor.Name == "Bright blue" or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
	pcall(function()
		local savedcf = GetPos()
		local savedteam

		local Gun = game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") or game.Players.LocalPlayer.Character:FindFirstChild("Taser")

		local changedteam = false
		if game.Players.LocalPlayer.TeamColor.Name ~= "Bright blue" or not Gun then
			savedteam = GetTeam()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			changedteam = true
		end

		local Guns = game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") or game.Players.LocalPlayer.Character:FindFirstChild("Taser")

		local TaseEvent = 
			{
				[1] = 
				{
					["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
					["Distance"] = 0, 
					["Cframe"] = CFrame.new(), 
					["Hit"] = workspace[Player.Name].Torso
				}
			}

		game:GetService("ReplicatedStorage").ShootEvent:FireServer(TaseEvent, Guns)
		if changedteam then
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
	end)
end

function Teleport(Player, Position)
	if Player == nil or Position == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function TeleportV(Player, Player2)
	if Player == nil or Player2 == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player2.Character.HumanoidRootPart.CFrame
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function ArrestEvent(Player, Time)
	for i = 1,Time do
		workspace.Remote.arrest:InvokeServer(Player.Character.Head)
	end
end

function Arrest(Player, Time)
	local Time = Time or 1
	if Player.TeamColor.Name == "Really red" then
		local LPCHAR = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
		local LPHRP = LPCHAR and LPCHAR:FindFirstChild("HumanoidRootPart")
		local PLRCHAR = workspace:FindFirstChild(Player.Name)
		local PLRHRP = PLRCHAR and PLRCHAR:FindFirstChild("HumanoidRootPart")
		if LPCHAR and LPHRP and PLRCHAR and PLRHRP then 
			local savedcframe = LPHRP.CFrame
			repeat
				LPHRP.CFrame = PLRHRP.CFrame * CFrame.new(0, 0, 1.3)
				local TARGET = {PLRCHAR:FindFirstChild("Head")}
				for i = 1,Time do
					workspace.Remote.arrest:InvokeServer(unpack(TARGET))
				end
			until PLRCHAR.Head:FindFirstChild("handcuffedGui")
			PLRCHAR.Humanoid.Sit = false
			LPHRP.CFrame = savedcframe
		end
	end
end

function CreateBeam(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("Remington 870"):Destroy()
		end)
	end
end

function CreatLageBeam(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
		end)
	end
end

function Beam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function LagBeam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreatLageBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

local function GetPlayerPart(Player)
	if not Player then return end
	if Player:FindFirstChild("HumanoidRootPart") then
		return Player.HumanoidRootPart
	elseif Player:FindFirstChild("Torso") then
		return Player.Torso
	end
end

local Mouse = game.Players.LocalPlayer:GetMouse()

local function Loadstring(Https)
	if not Https then return end
	loadstring(game:HttpGet((Https), true))()
end

local function Command(Cmd)
	return Arg1 == Prefix..Cmd
end

local function PrefixCommand(Cmd)
	return Arg1 == "!"..Cmd
end

local Walls = {
	game.Workspace.Prison_Halls.walls,
	game.Workspace.Prison_Halls.roof,
	game.Workspace.Prison_Halls.outlines,
	game.Workspace.Prison_Halls.lights,
	game.Workspace.Prison_Halls.accent,
	game.Workspace.Prison_Halls.glass,
	game.Workspace.Prison_Cellblock.b_front,
	game.Workspace.Prison_Cellblock.doors,
	game.Workspace.Prison_Cellblock.c_tables,
	game.Workspace.Prison_Cellblock.a_front,
	game.Workspace.Prison_Cellblock.b_outerwall,
	game.Workspace.Prison_Cellblock.c_wall,
	game.Workspace.Prison_Cellblock.b_wall,
	game.Workspace.Prison_Cellblock.c_hallwall,
	game.Workspace.Prison_Cellblock.a_outerwall,
	game.Workspace.Prison_Cellblock.b_ramp,
	game.Workspace.Prison_Cellblock.a_ramp,
	game.Workspace.Prison_Cellblock.a_walls,
	game.Workspace.Prison_Cellblock.Cells_B,
	game.Workspace.Prison_Cellblock.Cells_A,
	game.Workspace.Prison_Cellblock.c_corner,
	game.Workspace.Prison_Cellblock.Wedge,
	game.Workspace.Prison_Cellblock.a_ceiling,
	game.Workspace.Prison_Cellblock.b_ceiling,
	game.Workspace.City_buildings,
	game.Workspace.Prison_OuterWall,
	game.Workspace.Prison_Fences,
	game.Workspace.Prison_Guard_Outpost,
	game.Workspace.Prison_Cafeteria.building,
	game.Workspace.Prison_Cafeteria.glass,
	game.Workspace.Prison_Cafeteria.oven,
	game.Workspace.Prison_Cafeteria.shelves,
	game.Workspace.Prison_Cafeteria.vents,
	game.Workspace.Prison_Cafeteria.accents,
	game.Workspace.Prison_Cafeteria["vending machine"],
	game.Workspace.Prison_Cafeteria.Prison_table1,
	game.Workspace.Prison_Cafeteria.counter,
	game.Workspace.Prison_Cafeteria.boxes,
	game.Workspace.Prison_Cafeteria["trash bins"]
}

if not Slient then
	Chat("Admin Commands By LocalPlayer   #   7434")
	Chat("Admin Commands Version "..Versions)
	Chat("Current Prefix Is "..Prefix)
	wait()
	Chat("Admin Commands Loaded!")
else
	Chat("Loaded")
	Chat("P "..Prefix)
	Chat("V "..Versions)
end

function PlayerChatted(Message)
	if ScriptDisabled then return end
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("unload") or Command("destroygui") then
		pcall(function()
			CmdGui:Destroy()
			States = {}
			LoopKill = {}
			LoopTase = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
			Chat("Unloaded")
		end)
	end
	if Command("reload") or Command("update") then
		pcall(function()
			CmdGui:Destroy()
			States = {}
			LoopKill = {}
			LoopTase = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
			Chat("Unloaded")
		end)
		Loadstring("https://pastebin.com/raw/9ab2s523")
		Chat("Reloaded")
	end
	if Command("beam") then
		local Player = GetPlayer(Arg2)
		if Player then
			Beam(Player, math.huge, 7)
		end
	end
	if Command("lagbeam") or Command("beam2") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 7)
		end
	end
	if Command("crash") or Command("beam3") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 9000)
		end
	end
	if Command("inmate") or Command("inmates") or Command("prisoner") or Command("prisoners") then
		workspace.Remote.TeamEvent:FireServer("Bright orange")
	end
	if Command("guard") or Command("guards") or Command("cop") or Command("polices") or Command("cops") then
		workspace.Remote.TeamEvent:FireServer("Bright blue")
	end
	if Command("gun") or Command("guns") or Command("allguns") then
		if BuyGamepass then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
	end
	if Command("autogun") or Command("autoguns") or Command("autoallguns") then
		States.Auto_Guns = true
		if BuyGamepass then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.Auto_Guns then
				pcall(function()
					if BuyGamepass then
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					else
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					end
				end)
			end
		end)
	end
	if Command("unautogun") or Command("unautoguns") or Command("unautoallguns") then
		States.Auto_Guns = false
	end
	if Command("autofire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = true
		end
	end
	if Command("semifire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = false
		end
	end
	if Command("firespeed") or Command("setfirespeed") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["FireRate"] = tonumber(Arg2)
			end
		end
	end
	if Command("burst") or Command("burstbullets") or Command("bullets") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["Bullets"] = tonumber(Arg2)
			end
		end
	end
	if Command("reloadtime") or Command("reloadtimes") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["ReloadTime"] = tonumber(Arg2)
			end
		end
	end
	if Command("criminal") or Command("criminals") or Command("crim") or Command("crims") or Command("crimes") or Command("crime") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("neutral") or Command("neutrals") then
		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
	end
	if Command("red") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("blue") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really blue").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("black") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really black").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("pink") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Hot pink").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("grey") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Ghost grey").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("white") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("White").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("brown") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Brown").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("purple") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Royal purple").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("green") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright green").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("yellow") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright yellow").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("orange") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Neon orange").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("taserbypass") or Command("lock") or Command("antitaser") then
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
	if Command("notaserbypass") or Command("unlock") or Command("untaserbypass") then
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
		end
	end
	if Command("noshield") or Command("antishield") then
		States.Anti_Shield = true
		while wait() do
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if workspace[v.Name].Torso:FindFirstChild("ShieldFolder") then
						workspace[v.Name].Torso:FindFirstChild("ShieldFolder"):Destroy()
					end
				end)
			end
		end
	end
	if Command("unantishield") then
		States.Anti_Shield = false
	end
	if Command("kill") or Command("kills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Kill(Player)
		end
	end
	if Command("killall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Kill(v)
			end
		end
	end
	if Command("killinmate") or Command("killinmates") or Command("killsinmate") or Command("killsinmates") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Bright orange" then
					Kill(v)
				end
			end
		end
	end
	if Command("killguard") or Command("killsguard") or Command("killguards") or Command("killsguards") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Bright blue" then
					Kill(v)
				end
			end
		end
	end
	if Command("killcriminal") or Command("killscriminal") or Command("killcriminals") or Command("killscriminals") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Kill(v)
				end
			end
		end
	end
	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
		end
	end
	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
		end
	end
	if Command("loopkillguard") or Command("loopkillguards") or Command("loopkillsguard") or Command("loopkillsguards") or Command("loopkillcop") or Command("loopkillpolices") or Command("loopkillspolices") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player.TeamColor.Name == "Bright blue" then
				LoopKill[Player.UserId] = {Player = Player}
			end
		end
	end
	if Command("unloopkillguard") or Command("unloopkillguards") or Command("unloopkillsguard") or Command("unloopkillsguards") or Command("unloopkillcop") or Command("unloopkillpolices") or Command("unloopkillspolices") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player.TeamColor.Name == "Bright blue" then
				LoopKill[Player.UserId] = nil
			end
		end
	end
	if Command("loopkillinmate") or Command("loopkillinmates") or Command("loopkillsinmate") or Command("loopkillsinmates") or Command("loopkillprisoner") or Command("loopkillprisoners") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player.TeamColor.Name == "Bright orange" then
				LoopKill[Player.UserId] = {Player = Player}
			end
		end
	end
	if Command("unloopkillinmate") or Command("unloopkillinmates") or Command("unloopkillsinmate") or Command("unloopkillsinmates") or Command("unloopkillprisoner") or Command("unloopkillprisoners") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player.TeamColor.Name == "Bright orange" then
				LoopKill[Player.UserId] = nil
			end
		end
	end

	if Command("loopkillcriminal") or Command("loopkillcriminals") or Command("loopkillscriminal") or Command("loopkillscriminals") or Command("loopkillcrim") or Command("loopkillcrims") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player.TeamColor.Name == "Really red" then
				LoopKill[Player.UserId] = {Player = Player}
			end
		end
	end
	if Command("unloopkillcriminal") or Command("unloopkillcriminals") or Command("unloopkillscriminal") or Command("unloopkillscrriminals") or Command("unloopkillcrim") or Command("unloopkillcrims") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player.TeamColor.Name == "Really red" then
				LoopKill[Player.UserId] = nil
			end
		end
	end
	if Command("loopkillall") or Command("loopkillsall") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player ~= game.Players.LocalPlayer then
				if not LoopKill[Player.UserId] then
					LoopKill[Player.UserId] = {Player = Player}
				end
			end
		end
	end
	if Command("unloopkillall") or Command("unloopkillsall") then
		for i,Player in pairs(game.Players:GetPlayers()) do
			if Player ~= game.Players.LocalPlayer then
				if LoopKill[Player.UserId] then
					LoopKill[Player.UserId] = nil
				end
			end
		end
	end

	if Command("goto") or Command("to") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[Player.Name].HumanoidRootPart.CFrame
		end
	end
	if Command("re") or Command("refresh") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
			end
		else
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
				workspace.Remote.TeamEvent:FireServer("Medium stone grey")
			end
		end
	end
	if Command("res") or Command("respawn") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			workspace.Remote.loadchar:InvokeServer()
		else
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
	end
	if Command("looparrest") or Command("spamarrest") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			States.SpamArrest = true
			repeat wait()
				pcall(function()
					if game.Players[Player.Name] ~= nil and States.SpamArrest then
						if Player.TeamColor.Name ~= "Really red" then
							repeat Teleport(Player, CFrame.new(-919, 94, 2138)) until Player.TeamColor.Name == "Really red" or not States.SpamArrest or not game.Players[Player.Name]
						end
						wait(.1)
						Goto(Player, CFrame.new(0, 0, 1))
						for i = 1,750 do
							if Player.TeamColor.Name ~= "Really red" or not States.SpamArrest or not game.Players[Player.Name] then return end
							coroutine.wrap(function()
								ArrestEvent(Player, math.huge)
							end)()
						end
						repeat wait() until not game.Players[Player.Name] or Player.TeamColor.Name ~= "Really red" or not States.SpamArrest
					end
				end)
			until not States.SpamArrest or not game.Players[Player.Name]
		end
	end
	if Command("unlooparrest") or Command("unspamarrest") then
		States.SpamArrest = false
	end
	if Command("view") or Command("spectate") or Command("watch") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Watching = Player
		end
		while wait() do
			if Watching ~= nil then
				pcall(function()
					workspace.CurrentCamera.CameraSubject = workspace[Watching.Name].Head
				end)
			end
		end
	end
	if Command("antifling") then
		States.Anti_Fling = true
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size.Y, math.huge)
		game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
			if States.Anti_Fling then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size.Y, math.huge)
				end)
			end
		end)
	end
	if Command("noclip") or Command("noclips") then
		States.Noclips = true
		game:GetService("RunService").Stepped:Connect(function()
			if States.Noclips then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
					game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
				end)
			end
		end)
	end
	if Command("clip") or Command("clips") then
		States.Noclips = false
	end
	if Command("unantifling") then
		States.Anti_Fling = false
	end
	if Command("antivest") or Command("anticrash") then
		States.Anti_Crash = true
		while wait() do
			if States.Anti_Crash then
				for i,v in pairs(game.Players:GetPlayers()) do
					pcall(function()
						v.Character.vest:Destroy()
					end)
				end
			end
		end
	end
	if Command("unantivest") or Command("unanticrash") then
		States.Anti_Crash = false
	end
	if Command("fastpunch") or Command("speedpunch") or Command("speedlypunch") or Command("superspeedpunch") then
		States.Fast_Punch = true
	end
	if Command("slowpunch") or Command("normalspeedpunch") or Command("nofastpunch") or Command("unfastpunch") then
		States.Fast_Punch = false
	end
	if Command("superpunch") or Command("onepunch") then
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local MeleeEvent = ReplicatedStorage:FindFirstChild("meleeEvent")
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local Punch = false
		local Cooldown = false
		States.SuperPunch = true

		local function Punch()
			if not States.Fast_Punch then
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.9)
				Cooldown = false
				Part:Destroy()
			else
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.1)
				Cooldown = false
				Part:Destroy()
			end
		end
		Mouse.KeyDown:connect(function(Key)
			if not Cooldown and States.SuperPunch then
				if Key:lower() == "f" then
					Punch()
				end				
			end
		end)
	end
	if Command("normalpunch") or Command("oldpunch") or Command("nosuperpunch") or Command("stoponepunch") or Command("unonepunch") or Command("unsuperpunch") then
		States.SuperPunch = false
	end
	if Command("superknife") then
		local Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if not Knife then
			workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP)
		end
		wait()
		Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if Knife then
			local Cooldown = false
			local Hitting = false
			local Hitted = false
			Knife.Equipped:Connect(function()
				Knife.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Hitting = true
						for i,v in pairs(Knife:GetChildren()) do
							if v:IsA("Part") then
								v.Touched:Connect(function(Hit)
									if Hit and Hit.Parent ~= game.Players.LocalPlayer and not Hitted and Hitting then
										Hitted = true
										for i = 1,25 do
											game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
										end
									end
								end)
							end
						end
						wait(0.5)
						Cooldown = false
						Hitting = false
						Hitted = false
					end
				end)
			end)
		end
	end
	if Command("unview") or Command("unspectate") or Command("stopwatch") or Command("unwatch") then
		Watching = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Head
	end
	if Command("antivoid") or Command("antifell") then
		States.Anti_Void = true
		while wait() do
			if States.Anti_Void then
				pcall(function()
					if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 1 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
					end
				end)
			end
		end
	end
	if Command("unantivoid") or Command("unantifell") then
		States.Anti_Void = false
	end
	if Command("bring") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(GetPlayer(Arg2), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
	end
	if Command("teleport") or Command("tp") then
		local Player = GetPlayer(Arg2)
		local Player2 = GetPlayer(Arg3)
		if Player ~= nil and Player2 ~= nil then
			TeleportV(Player, Player2)
		end
	end
	if Command("void") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(999999, 999999, 999999))
		end
	end
	if Command("killaura") then
		States.Kill_Aura = true
	end
	if Command("nokillaura") or Command("unkillaura") then
		States.Kill_Aura = false
	end
	if Command("auto") or Command("autore") or Command("autorefresh") then
		States.Auto_Refresh = true
		while wait() do
			if States.Auto_Refresh == true then
				pcall(function()
					if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					end
				end)
			end
		end
	end
	if Command("unauto") or Command("auntore") or Command("unautorefresh") then
		States.Auto_Refresh = false
	end
	if Command("prefix") or Command("newprefix") or Command("changeprefix") then
		local NewPrefix = Arg2
		if NewPrefix ~= nil then
			Prefix = NewPrefix
			Execute.PlaceholderText = "Press "..Prefix.." To Enter"
		end
	end
	if Command("speed") or Command("walkspeed") or Command("setspeed") or Command("setwalkspeed") then
		local WalkSpeed = tonumber(Arg2)
		if WalkSpeed ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
		end
	end
	if Command("jumppower") or Command("jumphigh") or Command("setjumppower") then
		local JumpPower = tonumber(Arg2)
		if JumpPower ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
		end
	end
	if Command("hipheight") or Command("sethipheight") then
		local HipHeight = tonumber(Arg2)
		if HipHeight ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipHeight
		end
	end
	if Command("lagserver") or Command("disconnect") then
		States.Lag_Server = true
		while wait() do
			if States.Lag_Server then
				coroutine.wrap(function()
					pcall(function()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("unlagserver") or Command("stopdisconnect") or Command("undisconnect") then
		States.Lag_Server = false
	end
	if Command("gravity") or Command("setgravity") then
		local Gravity = tonumber(Arg2)
		if Gravity ~= nil then
			workspace.Gravity = Gravity
		end
	end
	if Command("makecrim") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(-919, 96, 2138))
		end
	end
	if Command("resetgravity") or Command("regravity") then
		workspace.Gravity = 196.2
	end
	if Command("resethipheight") or Command("rehipheight") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
	end
	if Command("resetspeed") or Command("respeed") then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end
	if Command("resetjumppower") or Command("rejumppower") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
	if Command("leave") or Command("leaveserver") or Command("quit") then
		game:Shutdown()
	end
	if Command("rejoin") or Command("rj") then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
	if Command("nodoors") or Command("deletedoors") then
		if workspace:FindFirstChild("Doors") then
			workspace.Doors.Parent = game.Lighting
		end
	end
	if Command("doors") or Command("restoredoors") then
		if game.Lighting:FindFirstChild("Doors") then
			game.Lighting.Doors.Parent = workspace
		end
	end
	if Command("nowalls") or Command("deletedoors") then
		pcall(function()
			for i,v in pairs(Walls) do
				v.Parent = game.Lighting
			end
		end)
	end
	if Command("walls") or Command("restorewalls") then
		pcall(function()
			for i,v in pairs(game.Lighting:GetChildren()) do
				if v.Name ~= "Doors" then
					v.Parent = workspace
				end
			end
		end)
	end
	if Command("god") or Command("godmode") then
		States.God_Mode = true
		while wait() do
			if States.God_Mode then
				game.Players.LocalPlayer.Character.Humanoid.Name = 1
				local l = game.Players.LocalPlayer.Character["1"]:Clone()
				l.Parent = game.Players.LocalPlayer.Character
				l.Name = "Humanoid"
				game.Players.LocalPlayer.Character.Animate.Disabled = true
				wait()
				game.Players.LocalPlayer.Character.Animate.Disabled = false
				game.Players.LocalPlayer.Character["1"]:Destroy()
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				wait(5)
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				local savedteam = GetTeam()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
				workspace.CurrentCamera.CFrame = savedcamcf
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			end
		end
	end
	if Command("ungod") or Command("ungodmode") then
		States.God_Mode = false
	end
	if Command("arrest") or Command("handcuffs") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Arrest(Player, tonumber(Arg3))
		end
	end
	if Command("arrestall") or Command("arrestother") or Command("arrestothers") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Arrest(v, 30)
				end
			end
		end
	end
	if Command("opengate") then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
	end
	if Command("getpos") then
		print("Humanoid Root Part Position :")
		print(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		print("Camera CFrame :")
		print(workspace.CurrentCamera.CFrame)
	end
	if Command("saveposition") or Command("savepos") then
		States.SavedCFrame = GetPos()
	end
	if Command("loadposition") or Command("loadpos") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = States.SavedCFrame
	end
	if Command("spamchat") then
		States.SpamChat = true
		if tonumber(Arg2) ~= nil then
			States.Spam_Wait = tonumber(Arg2)
		else
			States.Spam_Wait = 1
		end
		while wait() do
			if States.SpamChat then
				local MessagesToChat = {
					"I'm your dad",
					"I'm your mom",
					"I'm a god and I'm your dad",
					"__________",
					"OMG",
					"OML",
					"BEPP BOP BEEP BEEP BOP",
					" ",
					"I'm magic guy because i pressed W,A,S and D on my keyboard and my character can be walked wow, I'M THE REAL MAGIC GUY!",
					"I'M THE MOST PRO IN HERE",
					"I'M A PRO IN THIS SERVER ALL OF YOU ARE NOOB!",
					"LOL XD LOL XD LOL XD",
					"Read my chat",
					"Can you die while you are died?",
					"You know what, I'm a god",
					"Sub to CXZ NAME_R",
					"WOW",
					"wow",
					"\(￣︶￣*\))"
				}

				while true do
					wait(States.Spam_Wait)
					if States.SpamChat then
						pcall(function()
							Chat(MessagesToChat[math.random(1, #MessagesToChat)])
						end)
					end
				end
			end
		end
	end
	if Command("unspamchat") then
		States.SpamChat = false
	end
	if Command("loopbring") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			States.PlayerToLoopBring = Player
			States.LoopBring = true
			repeat wait()
				pcall(function()
					if States.LoopBring and game.Players[States.PlayerToLoopBring.Name] then
						local savedcf = GetPos()
						Teleport(States.PlayerToLoopBring, GetPos())
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
					end
				end)
			until States.LoopBring == false
		end
	end
	if Command("unloopbring") then
		States.LoopBring = false
		States.PlayerToLoopBring = nil
	end
	if Command("admin") or Command("giveadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not Admin[Player.UserId] then
			Admin[Player.UserId] = {Player = Player}
			Chat("/w "..Player.Name.." You've got admin permissions! Type "..Prefix.."cmds or "..Prefix.."cmd to see all commands")
		end
	end
	if Command("unadmin") or Command("removeadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and Admin[Player.UserId] then
			Admin[Player.UserId] = nil
			Chat("/w "..Player.Name.." You are bad you've been removed admin permissions")
		end
	end
	if Command("baseballbat") or Command("bat") then
		local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character
		local Backpack = LocalPlayer.Backpack
		local Humanoid = Character.Humanoid
		if not Backpack:FindFirstChild("Bat") and not Backpack:FindFirstChild("Bat") then
			local BaseBallBat = Instance.new("Tool", Backpack)
			local Handle = Instance.new("Part", BaseBallBat)
			BaseBallBat.GripPos = Vector3.new(0, -1.15, 0)
			BaseBallBat.Name = "Bat"
			Handle.Name = "Handle"
			Handle.Size = Vector3.new(0.4, 5, 0.4)
			local Animation =Instance.new("Animation", BaseBallBat)
			Animation.AnimationId = "rbxassetid://218504594"
			local Track = Humanoid:LoadAnimation(Animation)
			local Cooldown = false
			local Attacked = false
			local Attacking = false
			BaseBallBat.Equipped:Connect(function()
				BaseBallBat.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Attacking = true
						Track:Play()
						Handle.Touched:Connect(function(Hit)
							if Hit.Parent and Hit.Parent ~= game.Players.LocalPlayer and not Attacked and Attacking then
								Attacked = true
								for i = 1,15 do
									game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
								end
							end
						end)
						wait(0.25)
						Cooldown = false
						Attacked = false
						Attacking = false
					end
				end)
			end)
		end
	end
	if Command("test") then
		local savedcf = GetPos()
		local CrimPad = workspace["Criminals Spawn"].SpawnLocation
		local padcf = CrimPad.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CrimPad.CFrame
		wait()
		CrimPad.CFrame = GetPos()
		CrimPad.CanCollide = false
		CrimPad.Transparency = 1.000
		CrimPad.Anchored = true 
		pcall(function()
			for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					CrimPad.CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end
			for i,v in pairs(game.Teams.Guards:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					CrimPad.CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end
		end)
		workspace.Remote.loadchar:InvokeServer()
		CrimPad.Transparency = 0.000
		CrimPad.CFrame = padcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	end
	if Command("nexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
	end
	if Command("cafe") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(877, 100, 2256)
	end
	if Command("backnexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(982, 100, 2334)
	end
	if Command("crimbase") or Command("criminalbase") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(943, 95, 2055)
	end
	if Command("armory") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(789, 100, 2260)
	end
	if Command("lunchroom") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(905, 100, 2226)
	end
	if Command("gate") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, 103, 2250)
	end
	if Command("tower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(822, 131, 2588)
	end
	if Command("gatetower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 126, 2306)
	end
	if Command("sewer") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 79, 2311)
	end
	if Command("makecrimall") then
		local savedcf = GetPos()
		local CrimPad = workspace["Criminals Spawn"].SpawnLocation
		local padcf = CrimPad.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CrimPad.CFrame
		wait()
		CrimPad.CFrame = GetPos()
		CrimPad.CanCollide = false
		CrimPad.Transparency = 1.000
		CrimPad.Anchored = true
		repeat wait() 
			pcall(function()
				for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						Teleport(v, CrimPad.CFrame)
					end
				end
				for i,v in pairs(game.Teams.Guards:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						Teleport(v, CrimPad.CFrame)
					end
				end
			end)
		until #game.Teams.Criminals:GetPlayers() == (#game.Players:GetPlayers()-#game.Teams.Neutral:GetPlayers())
		workspace.Remote.loadchar:InvokeServer()
		CrimPad.Transparency = 0.000
		CrimPad.CFrame = padcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	end
	if Command("bringall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Teleport(v, GetPos())
			end
		end
	end
	if Command("notify") then
		States.Notify = true
	end
	if Command("nonotify") then
		States.Notify = false
	end
	if PrefixCommand("getprefix") then
		Chat("Prefix : "..Prefix)
	end
	if Command("cmd") or Command("cmds") then
		if Background.Visible == true then
			Background.Visible = false
		else
			Background.Visible = true
		end
	end

end

function AdminPlayerChatted(Message, Player)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("nexus") then
		Teleport(Player, CFrame.new(888, 100, 2388))
	end
	if Command("cafe") then
		Teleport(Player, CFrame.new(877, 100, 2256))
	end
	if Command("backnexus") then
		Teleport(Player,  CFrame.new(982, 100, 2334))
	end
	if Command("armory") then
		Teleport(Player, CFrame.new(789, 100, 2260))
	end
	if Command("tower") then
		Teleport(Player, CFrame.new(822, 131, 2588))
	end
	if Command("bring") then
		TeleportV(GetPlayer(Arg2), Player)
	end
	if Command("void") then
		Teleport(GetPlayer(Arg2), CFrame.new(99999, 99999, 99999))
	end
	if Command("beam") then
		Beam(GetPlayer(Arg2), math.huge, 60)
	end
	if Command("disconnect") then
		States.Disconnect = true
		while wait() do
			if States.Disconnect then
				coroutine.wrap(function()
					pcall(function()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("undisconnect") then
		States.Disconnect = false
	end
	if Command("spamarrest") then
		local GP = GetPlayer(Arg2)
		if GP then
			States.SpamArrest2 = true
			repeat wait()
				pcall(function()
					if GP.TeamColor.Name ~= "Really red" then
						if not States.SpamArrest2 then return end
						repeat Teleport(GP, CFrame.new(-919, 96, 2138)) until GP.TeamColor.Name == "Really red" or not States.SpamArrest2 or not game.Players[GP.Name]
					end
					wait(.1)
					for i = 1,500 do
						coroutine.wrap(function()
							ArrestEvent(GP, math.huge)
						end)()
					end
				end)
			until not States.SpamArrest2 or not game.Players[GP.Name]
		end
	end
	if Command("unspamarrest") then
		States.SpamArrest2 = false
	end
	if Command("killguard") or Command("killguards") then
		for i,v in pairs(game.Teams.Guards:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killinmate") or Command("killinmates") then
		for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killcriminal") or Command("killcriminals") then
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killall") or Command("killothers") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("kill") or Command("kills") then
		Kill(GetPlayer(Arg2))
	end
	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
		end
	end
	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
		end
	end
	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
		end
	end
	if Command("makecrim") then
		Teleport(GetPlayer(Arg2), CFrame.new(-919, 96, 2138))
	end
	if Command("arrest") then
		Arrest(GetPlayer(Arg2))
	end
	if Command("crim") then
		Teleport(Player, CFrame.new(-919, 96, 2138))
	end
	if Command("goto") or Command("to") then
		TeleportV(Player, GetPlayer(Arg2))
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..Player.Name.." "..Prefix.."goto [plr] "..Prefix.."to [plr] "..Prefix.."kill [plr] "..Prefix.."kills [plr] "..Prefix.."makecrim [plr] "..Prefix.."arrest [plr] "..Prefix.."tase [plr] "..Prefix.."loopkill [plr] "..Prefix.."unloopkill [plr]") wait(.1)
		Chat("/w "..Player.Name.." "..Prefix.."crim "..Prefix.."tower "..Prefix.."nexus "..Prefix.."backnexus "..Prefix.."cafe "..Prefix.."armory "..Prefix.."bring [plr]") wait(.1)
		Chat("/w "..Player.Name.." "..Prefix.."killall "..Prefix.."killothers "..Prefix.."killinmate "..Prefix.."killinmates "..Prefix.."killguard "..Prefix.."killguards "..Prefix.."killcriminals "..Prefix.."killcriminal "..Prefix.."void [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."spamarrest [plr] "..Prefix.."unspamarrest "..Prefix.."disconnect "..Prefix.." "..Prefix.."beam [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."cmd "..Prefix.."cmds") wait(.1)
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)

spawn(function()
	while wait() do
		for i,v in pairs(LoopKill) do
			pcall(function()
				if v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.Humanoid.Health ~= 0 then
					Kill(v.Player)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(LoopBeam) do
			pcall(function()
				if v and v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.HumanoidRootPart then
					Beam(v.Player, math.huge, 1)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.Fast_Punch == true then
			pcall(function()
				getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
			end)
		end
	end
end)

coroutine.wrap(function()
	while wait() do
		if States.Kill_Aura then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						local Distance = (v.Character:FindFirstChildOfClass("Part").Position - game.Players.LocalPlayer.Character:FindFirstChildOfClass("Part").Position).magnitude
						if Distance <= 10 then
							for i = 1,25 do
								game.ReplicatedStorage.meleeEvent:FireServer(v)
							end
						end
					end
				end)
			end
		end
	end
end)()

function CheckPermissions(Player)
	Player.Chatted:Connect(function(Message)
		if Admin[Player.UserId] then
			AdminPlayerChatted(Message, Player)
		end
	end)
end

game.Players.PlayerRemoving:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Rage Quit",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
end)

game.Players.PlayerAdded:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Joined",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	CheckPermissions(Player)
end)

for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= game.Players.LocalPlayer then
		CheckPermissions(v)
	end
end

FindCmd.Changed:Connect(function()
	if FindCmd.Text ~= "" then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextLabel") then
				if not string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = Background
					v.Visible = false
				end
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				if string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = CmdHandler
					v.Visible = true
				end
			end
		end
	elseif FindCmd.Text == "" and (#CmdHandler:GetChildren()-1) ~= #Cmds  then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextLabel") then
				v:Destroy()
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				v:Destroy()
			end
		end
		for i,v in pairs(Cmds) do
			local clone = CmdText:Clone()
			clone.Text = v
			clone.Name = "COMMANDS"
			clone.Parent = CmdHandler
		end
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
	if Key == Prefix then
		if Prefix ~= "/" then
			Execute:CaptureFocus()
		end
	end
end)

Execute.FocusLost:Connect(function(FocusLost)
	if FocusLost then
		if Execute.Text:sub(1,#Prefix) ~= Prefix then
			PlayerChatted(Prefix..Execute.Text)
		else
			PlayerChatted(Execute.Text)
		end
	end
end)

getgenv().DisableScript = function()
	pcall(function()
		CmdGui:Destroy()
		States = {}
		LoopKill = {}
		LoopTase = {}
		Admin = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
		Chat("Unloaded")
	end)
end
