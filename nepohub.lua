--Script by holdok modified by neponatni--

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local version = "1.0.0"

local Window = Fluent:CreateWindow({
    Title = "Nepo Hub",
    SubTitle = "alpha version",
    TabWidth = 95,
    Size = UDim2.fromOffset(455, 299),
    Acrylic = true, 
    Theme = "aqua",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Info = Window:AddTab({ Title = "Info", Icon = "info"}),
    Game = Window:AddTab({ Title = "Games", Icon = "home"}),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Hub = Window:AddTab({ Title = "Hub" }),
    BloxFruits = Window:AddTab({ Title = "Blox Fruits"}),
    MM2 = Window:AddTab({ Title = "Murder Mystery 2"})
}


Fluent:Notify({
    Title = "Hub",
    Content = "The script has been successfully injected.",
    Duration = 8
})

-- functions

Tabs.MM2:AddButton({
     Title = "Script 1",
     Callback = function()
     loadstring(game:HttpGet"https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2")("https://t.me/arceusxscripts")
     end
})



Window:SelectTab(1)
Tabs.Info:AddParagraph({
    Title = "Neponatni",
    Content = "Hub. I FUCKING DELETED THE LUA FILE BEFORE THIS..."
})

Tabs.BloxFruits:AddButton({
     Title = "Mega Script KEY SYSTEM",
     Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/farghii/relzhub/main/execute.hack", true))("t.me/arceusxscripts") --subscribe
     end
})

Tabs.Hub:AddButton({
     Title = "Chat Bypasser OLD CHAT ONLY",
     Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))("t.me/arceusxscripts")
     end
})

Tabs.Info:AddButton({
     Title = "Telegram of Dev",
     Callback = function()
     setclipboard("https://t.me/nepohubdeveloper") 
 Fluent:Notify({
    Title = "Link",
    Content = "Link successfully copied.",
    Duration = 8
})
     end
})

Tabs.Info:AddButton({
     Title = "Discord of Dev",
     Callback = function()
     setclipboard("https://discord.com/invite/3rCnszPYxU") 
 Fluent:Notify({
    Title = "Link",
    Content = "Link successfully copied.",
    Duration = 8
})
     end
})

Tabs.Hub:AddButton({
     Title = "TweenTeleporter",
     Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/TweenTeleporter"))()
     end
})


Tabs.Hub:AddButton({
     Title = "Fe Script",
     Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Neponatni/fe-troll-roblox/main/fe%20script.lua"))()
     end
})

Tabs.Hub:AddButton({
     Title = "Infinite Yield",
     Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
     end
})


Tabs.Game:AddSlider("Slider", {
        Title = "FOV",
        Description = "Changes FOV",
        Default = 1,
        Min = 60,
        Max = 120,
        Rounding = 1,
        Callback = function(Value)
            workspace.Camera.FieldOfView = (Value)
        end
})

Tabs.Game:AddSlider("Slider", {
        Title = "WalkSpeed",
        Description = "Changes Walkspeed",
        Default = 1,
        Min = 17,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
        end
})

Tabs.Game:AddSlider("Slider", {
        Title = "JumpHeight",
        Description = "Changes JumpHeight",
        Default = 1,
        Min = 8,
        Max = 150,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpHeight = (Value)
        end
})

-- settings

if not isfolder("ClassicEvent") then
    makefolder("ClassicEvent")
end

if not isfolder("ClassicEvent/Settings") then
    makefolder("ClassicEvent/Settings")
end

if not isfile("ClassicEvent/Settings/Theme.txt") then
    writefile("ClassicEvent/Settings/Theme.txt", "Dark")
end

if isfolder("ClassicEvent") and isfolder("ClassicEvent/Settings") and isfile("ClassicEvent/Settings/Theme.txt") then
    if readfile("ClassicEvent/Settings/Theme.txt") == "" then
        Fluent:SetTheme("Dark")
    else
        Fluent:SetTheme(tostring(readfile("ClassicEvent/Settings/Theme.txt")))
    end
end

Tabs.Settings:AddButton({
    Title = "Rejoin-Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
    end
})

Tabs.Settings:AddButton({
    Title = "Server-Hop", 
    Callback = function()
    local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
module:Teleport(game.PlaceId)
    end
})

local hi = Tabs.Settings:AddDropdown("Dropdown", {
    Title = "Choose your theme",
    Values = {"Dark","Darker","Light","Aqua", "Amethyst", "Rose"},
    Multi = false,
    Default = "Choose one",
})
hi:OnChanged(function(Value)
    if not justloaded then
        Fluent:SetTheme(Value)
        delfile("ClassicEvent/Settings/Theme.txt")
        writefile("ClassicEvent/Settings/Theme.txt", tostring(Value))
    end
end)
