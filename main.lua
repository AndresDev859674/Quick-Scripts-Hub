local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Quick Scripts Hub (Stable)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Basic",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section1 = Tab:AddSection({
    Name = "Main"
})

local Tab2 = Window:MakeTab({
    Name = "Prison Life",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab4 = Window:MakeTab({
    Name = "Roblox Rivals",
    Icon = "rbxassetid://15862513462",
    PremiumOnly = false
})

local Section3 = Tab2:AddSection({
    Name = "Section"
})

local Tab3 = Window:MakeTab({
    Name = "FPS",
    Icon = "rbxassetid://15862513462",
    PremiumOnly = false
})

local Section4 = Tab3:AddSection({
    Name = "Section"
})

local TabCompatibility = Window:MakeTab({
    Name = "Compatibility",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section5 = TabCompatibility:AddSection({
    Name = "Section"
})

local TabClient = Window:MakeTab({
    Name = "Client",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section6 = TabClient:AddSection({
    Name = "Section"
})

OrionLib:MakeNotification({
    Name = "Welcome to Quick Scripts",
    Content = "WARNING: These Scripts May Have Huge Potential (Be Careful)",
    Image = "rbxassetid://4483345998",
    Time = 5
})

OrionLib:MakeNotification({
    Name = "Quick Scripts Hub Updated To 25.1.0.0",
    Content = "*no changelogs found*",
    Image = "rbxassetid://4483345998",
    Time = 5
})

Tab2:AddLabel("Recommended For The Most Chaotic Game Prison Life")
Tab3:AddLabel("Recommended for Shooting and Battle Games etc.")

TabClient:AddLabel("Quick Scripts Hub Options and Experiments")

Tab:AddLabel("Welcome to Quick Scripts, Select a Button (script)")
Tab:AddParagraph("Thanks To Use 25.1.0.0!", "You are using the latest version")

TabCompatibility:AddParagraph("The Compatibility Is", "Xeno, JJSploit, Solara, And Alls Exploits")
Tab4:AddParagraph("Welcome to Roblox Rivals Zone", "Here Are Some Roblox Rivals Scripts You Might Be Interested In")

Tab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end    
})

Tab3:AddButton({
    Name = "Aimbot V2",
    Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/aimbotv2.lua'))()
    end    
})

TabClient:AddButton({
    Name = "Close Permanently, Close The Instant Hub",
    Callback = function()
            OrionLib:Destroy()
    end    
})

Tab:AddButton({
    Name = "( OP ) Roblox FE Chat Bypasser Script",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/Fechatbypassroblox/refs/heads/main/Fe%20Roblox%20ChatBypass"))()
    end    
})

Tab3:AddButton({
    Name = "Airhub V1",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
    end    
})

Tab3:AddButton({
    Name = "Airhub V2",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub-V2/main/src/Main.lua"))()
    end    
})

Tab3:AddButton({
    Name = "Aimbot",
    Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/Aimbot.lua"))()
    end  
})

Tab:AddButton({
    Name = "Click Teleport",
    Callback = function()
            loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
    end    
})

Tab:AddSlider({
    Name = "Walkspeed",
    Min = 16,
    Max = 650,
    Default = 16,
    Color = Color3.fromRGB(45, 170, 255),  -- Color personalizado para el slider
    Increment = 5,  -- Incremento de 5 unidades al mover el slider
    ValueName = "Speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

-- TextBox para WalkSpeed
Tab:AddTextbox({
    Name = "Custom WalkSpeed",
    Default = "16", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
        local numValue = tonumber(Value) -- Convierte el texto a número
        if numValue and numValue > 0 then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = numValue
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Tab:AddSlider({
    Name = "JumpPower",
    Min = 50,
    Max = 500,
    Default = 50,
    Color = Color3.fromRGB(144, 238, 144),  -- Verde claro
    Increment = 1,
    ValueName = "Power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})


-- TextBox para JumpPower
Tab:AddTextbox({
    Name = "Custom JumpPower",
    Default = "50", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
        local numValue = tonumber(Value) -- Convierte el texto a número
        if numValue and numValue > 0 then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = numValue
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

local FlyEnabled = false
local FlySpeed = 5

Tab:AddToggle({
    Name = "Train",
    Default = false,
    Callback = function(Value)
        FlyEnabled = Value
        if FlyEnabled then
            -- Añadir lógica para activar el vuelo
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local bodyGyro = Instance.new("BodyGyro", character.HumanoidRootPart)
            local bodyVelocity = Instance.new("BodyVelocity", character.HumanoidRootPart)

            bodyGyro.P = 9e4
            bodyGyro.maxTorque = Vector3.new(9e4, 9e4, 9e4)
            bodyGyro.cframe = character.HumanoidRootPart.CFrame

            bodyVelocity.velocity = Vector3.new(0, 0.1, 0)
            bodyVelocity.maxForce = Vector3.new(9e4, 9e4, 9e4)

            repeat
                wait()
                humanoid.PlatformStand = true
                bodyVelocity.velocity = character.HumanoidRootPart.CFrame.lookVector * FlySpeed
            until not FlyEnabled

            bodyGyro:Destroy()
            bodyVelocity:Destroy()
            humanoid.PlatformStand = false
        end
    end    
})

local function toggleFly()
    FlyEnabled = not FlyEnabled
    if FlyEnabled then
        -- Lógica para activar el vuelo
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local bodyGyro = Instance.new("BodyGyro", character.HumanoidRootPart)
        local bodyVelocity = Instance.new("BodyVelocity", character.HumanoidRootPart)

        bodyGyro.P = 9e4
        bodyGyro.maxTorque = Vector3.new(9e4, 9e4, 9e4)
        bodyGyro.cframe = character.HumanoidRootPart.CFrame

        bodyVelocity.velocity = Vector3.new(0, 0.1, 0)
        bodyVelocity.maxForce = Vector3.new(9e4, 9e4, 9e4)

        repeat
            wait()
            humanoid.PlatformStand = true
            bodyVelocity.velocity = character.HumanoidRootPart.CFrame.lookVector * FlySpeed
        until not FlyEnabled

        bodyGyro:Destroy()
        bodyVelocity:Destroy()
        humanoid.PlatformStand = false
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then
        toggleFly()
    end
end)

Tab:AddSlider({
    Name = "Train Speed",
    Min = 1,
    Max = 500,
    Default = 1,
    Color = Color3.fromRGB(255, 0, 0),  -- Rojo normal
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        FlySpeed = Value
    end    
})

-- TextBox para Train Speed
Tab:AddTextbox({
    Name = "Custom Train Speed",
    Default = "1", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
        local numValue = tonumber(Value) -- Convierte el texto a número
        if numValue and numValue > 0 then
            FlySpeed = numValue -- Asigna el valor al control de velocidad
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

local NoclipEnabled = false

Tab:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = function(Value)
        NoclipEnabled = Value
        local player = game.Players.LocalPlayer
        local character = player.Character

        if NoclipEnabled then
            game:GetService("RunService").Stepped:Connect(function()
                if NoclipEnabled then
                    for _, v in pairs(character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        else
            for _, v in pairs(character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end    
})

local InfiniteJumpEnabled = false

Tab:AddToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(Value)
        InfiniteJumpEnabled = Value
        local player = game.Players.LocalPlayer
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

        if InfiniteJumpEnabled then
            local jumpConnection
            jumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
                if InfiniteJumpEnabled and humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                else
                    jumpConnection:Disconnect()
                end
            end)
        end
    end    
})

local FloatEnabled = false
local FloatSpeed = 1

Tab:AddToggle({
    Name = "Float",
    Default = false,
    Callback = function(Value)
        FloatEnabled = Value
        if FloatEnabled then
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local bodyPosition = Instance.new("BodyPosition", humanoidRootPart)
            bodyPosition.D = 10
            bodyPosition.P = 10000
            bodyPosition.MaxForce = Vector3.new(0, 5000, 0)

            repeat
                wait()
                bodyPosition.Position = humanoidRootPart.Position + Vector3.new(0, FloatSpeed, 0)
            until not FloatEnabled
            bodyPosition:Destroy()
        end
    end    
})

local function toggleFloat()
    FloatEnabled = not FloatEnabled
    if FloatEnabled then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local bodyPosition = Instance.new("BodyPosition", humanoidRootPart)
        bodyPosition.D = 10
        bodyPosition.P = 10000
        bodyPosition.MaxForce = Vector3.new(0, 5000, 0)

        repeat
            wait()
            bodyPosition.Position = humanoidRootPart.Position + Vector3.new(0, FloatSpeed, 0)
        until not FloatEnabled
        bodyPosition:Destroy()
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        toggleFloat()
    end
end)

Tab:AddSlider({
    Name = "Float Speed",
    Min = 1,
    Max = 350,
    Default = 1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        FloatSpeed = Value
    end    
})

-- TextBox para Float Speed
Tab:AddTextbox({
    Name = "Custom Float Speed",
    Default = "1", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
        local numValue = tonumber(Value) -- Convierte el texto a número
        if numValue and numValue > 0 then
            FloatSpeed = numValue -- Asigna el valor al control de velocidad flotante
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Tab:AddButton({
    Name = "Suicide",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid:TakeDamage(humanoid.MaxHealth) -- Hace que el jugador explote
    end    
})

Tab:AddButton({
    Name = "High Health",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid.Health = humanoid.MaxHealth
    end    
})

Tab:AddButton({
    Name = "Sit",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid.Sit = true
    end    
})

local GodModeEnabled = false

Tab:AddToggle({
    Name = "Infinite High Health Mode",
    Default = false,
    Callback = function(Value)
        GodModeEnabled = Value
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        if GodModeEnabled then
            while GodModeEnabled do
                wait(1)
                humanoid.Health = humanoid.MaxHealth
            end
        end
    end    
})

Tab:AddButton({
    Name = "Dex Explorer",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LorekeeperZinnia/Dex/refs/heads/master/main.lua"))()
    end    
})

Tab:AddButton({
    Name = "Btools",
    Callback = function()
            loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
    end    
})

Tab3:AddButton({
    Name = "WRD ESP",
    Callback = function()
            loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
    end    
})

Tab:AddButton({
    Name = "Teleport To Player",
    Callback = function()
            loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Teleport%20To%20Player.txt"))()
    end    
})

Tab:AddButton({
    Name = "Highlight Player",
    Callback = function()
            loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Highlight%20Player.txt"))()
    end    
})

Tab2:AddButton({
    Name = "PRISION WARE",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
    end    
})

Tab2:AddButton({
    Name = "REVIZ Admin Script",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/kr4sk/Reviz-admin/refs/heads/main/Reviz-admin.lua"))()
    end    
})

Tab2:AddButton({
    Name = "FE BYPASS GUI",
    Callback = function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
    end    
})

Tab2:AddButton({
    Name = "PL GUI OP",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/plop.lua"))()
    end    
})

Tab2:AddButton({
    Name = "PrizzLife",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/prizz.lua"))()
    end    
})

Tab4:AddButton({
    Name = "Roblox Rivals GUI",
    Callback = function()
        local scriptURL = 'https://raw.githubusercontent.com/Sheeshablee73/Scriptss/main/RivalsUPD2.lua'
local response = game:HttpGet(scriptURL)
local executeScript = loadstring(response)
executeScript()
    end    
})

Tab4:AddButton({
    Name = "Ronix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/666dbc0571c238fbd3203da720d06060.lua"))()
    end    
})

Tab4:AddButton({
    Name = "Tbao Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals"))()
    end    
})

Tab4:AddButton({
    Name = "Azure Modded",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
    end    
})

Tab:AddButton({
    Name = "TP Tool",
    Callback = function()
        mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
    end    
})

-- TextBox para Give Health
Tab:AddTextbox({
    Name = "Give Health",
    Default = "100", -- Valor inicial de salud
    TextDisappear = true, -- El texto desaparece después de usarlo
    Callback = function(Value)
        local healthValue = tonumber(Value) -- Convertir el valor ingresado a número
        if healthValue and healthValue > 0 then
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")

            if humanoid then
                humanoid.Health = healthValue -- Establecer la salud del jugador
                print("Health set to: " .. healthValue) -- Confirmación en consola
            else
                print("Humanoid not found!") -- Si no se encuentra el humanoide
            end
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

-- Variables
local CrazyFlyEnabled = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()  -- Asegurarse de que el personaje esté cargado
local humanoid = character:WaitForChild("Humanoid")
local bodyVelocity

-- Toggle para activar/desactivar el Crazy Fly
Tab:AddToggle({
    Name = "Crazy Fly",
    Default = false,
    Callback = function(Value)
        CrazyFlyEnabled = Value
        
        if CrazyFlyEnabled then
            -- Crear el BodyVelocity para simular el vuelo
            bodyVelocity = Instance.new("BodyVelocity", character.HumanoidRootPart)
            bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)  -- Fuerza máxima para el vuelo
            bodyVelocity.Velocity = Vector3.new(0, 0, 0)  -- Movimiento controlado por las teclas
            bodyVelocity.Parent = character.HumanoidRootPart

            -- Ajustar la posición para simular que está flotando en el aire
            character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)  -- Levantar un poco al personaje
        else
            -- Eliminar el BodyVelocity cuando se desactiva el Crazy Fly
            if bodyVelocity then
                bodyVelocity:Destroy()
            end

            -- Volver a la posición original
            character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame - Vector3.new(0, 2, 0)
        end
    end    
})

-- Conectar el control del vuelo al teclado
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if CrazyFlyEnabled then
        if input.UserInputType == Enum.UserInputType.Keyboard then
            -- Control de dirección con teclas WASD
            if input.KeyCode == Enum.KeyCode.W then
                bodyVelocity.Velocity = character.HumanoidRootPart.CFrame.lookVector * 100  -- Volar hacia adelante
            elseif input.KeyCode == Enum.KeyCode.S then
                bodyVelocity.Velocity = -character.HumanoidRootPart.CFrame.lookVector * 100  -- Volar hacia atrás
            elseif input.KeyCode == Enum.KeyCode.A then
                bodyVelocity.Velocity = -character.HumanoidRootPart.CFrame.rightVector * 100  -- Volar hacia la izquierda
            elseif input.KeyCode == Enum.KeyCode.D then
                bodyVelocity.Velocity = character.HumanoidRootPart.CFrame.rightVector * 100  -- Volar hacia la derecha
            elseif input.KeyCode == Enum.KeyCode.E then
                bodyVelocity.Velocity = Vector3.new(0, 100, 0)  -- Volar hacia arriba (presionando E)
            elseif input.KeyCode == Enum.KeyCode.F then
                bodyVelocity.Velocity = Vector3.new(0, -100, 0)  -- Volar hacia abajo (presionando F)
            end
        end
    end
end)
