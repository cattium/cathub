local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "Keysystem"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the test22.
CloseCallback = <function> - Function to execute when the test22 is closed.
]]

function correctkey()
	OrionLib:MakeNotification({
		Name = "Key System!",
		Content = "Correct Key",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
	task.wait(0.5)
	game:GetService("CoreGui").Orion:Destroy()
	task.wait(0.5)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/cattium/cathub/main/cathubmain.lua"))
	
end
_G.keyinp = "string"
_G.actualkey = "test"
local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddTextbox({
	Name = "Input Yout Key",
	Default = "",
	TextDisappear = true,
	Callback = function(inputed)
		print(inputed)
        _G.keyinp = inputed
	end	  
})
Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
      		print(keyinp)
            if _G.keyinp == _G.actualkey then
                correctkey()
				Orion.MakeNotification({		
				Name = "Key System!",
				Content = "Test",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
            end
  	end    
})


--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
