local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Quick Scripts Hub (BETA)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Basic",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Section"
})

local Tab2 = Window:MakeTab({
	Name = "Prison Life",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab2:AddSection({
	Name = "Section"
})

OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "Welcome to Quick Scripts Hub, Find The Script You Like",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

Tab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
      		loadstring(game:HttpGet("loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()"))()
  	end    
})
			
Tab:AddButton({
	Name = "Click Teleport",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
  	end    
})

Tab:AddButton({
	Name = "Dex Explorer",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
  	end    
})

Tab:AddButton({
	Name = "Btools",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
  	end    
})

Tab:AddButton({
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
	Name = "Prison Life Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://zygomorphic-jobyna-impacthub-3d96c239.koyeb.app/main.lua"))()
  	end    
})

Tab2:AddButton({
	Name = "FE BYPASS GUI",
	Callback = function()
      		loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
  	end    
})
