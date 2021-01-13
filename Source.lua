local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/finayv2/Ui-Lib/main/azure%20ui%20lib%20modified.lua", true))()

local LocalPlayerTab = Library:CreateTab("LocalPlayer", "LocalPlayer Tab", "Dark")


LocalPlayerTab:CreateToggle("Spacebar Multiplier", function(value) 
    shared.SpacebarMultiplier = value

    game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
        if key:byte() == 32 then 
            if shared.SpacebarMultiplier then
                for i = 1, shared.MultiplierAmount do
                    game:GetService("ReplicatedStorage").InputEvent:FireServer("Normal")
                end
            end
        end
    end)    

end)

LocalPlayerTab:CreateSlider("Spacebar Amount", 1, 250, function(arg) 
    shared.MultiplierAmount = arg
end)
