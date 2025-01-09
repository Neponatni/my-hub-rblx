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
    Game = Window:AddTab({ Title = "Games", Icon = "home"}),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Hub = Window:AddTab({ Title = "Hub" }),
    BloxFruits = Window:AddTab({ Title = "Blox Fruits"}),
    MM2 = Window:AddTab({ Title = "Murder Mystery 2"}),
    KAT = Window:AddTab({ Title = "KAT" }),
}


Fluent:Notify({
    Title = "Hub",
    Content = "The script has been successfully injected.",
    Duration = 8
})

-- functions

Tabs.MM2:AddButton({
    Title = "Anti-Stealer (use first)",
    Callback = function()
        getgenv().Hard = false -- set it to true if you want the hard version
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/ArrayField/main/Mm2AntiStealer"))()
    end
})


Tabs.MM2:AddButton({
     Title = "Script 1",
     Callback = function()
     loadstring(game:HttpGet"https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2")("https://t.me/arceusxscripts")
     end
})

Tabs.KAT:AddButton({
    Title = "Script 1"
    Callback = function()
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/bybsa/kat/main/Script.lua"))()
    end
})

Tabs.BloxFruits:AddButton({
     Title = "Mega Script",
     Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/farghii/relzhub/main/execute.hack", true))("t.me/arceusxscripts") --subscribe
     end
})

Tabs.Hub:AddButton({
     Title = "Chat Bypasser",
     Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))("t.me/arceusxscripts")
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

--this dont work tbh

local pisunchik=0
Tabs.Game:AddSlider("Slider", {
        Title = "WalkSpeed",
        Description = "Changes Walkspeed",
        Default = 1,
        Min = 16,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
                pisunchik=Value
        end
})
coroutine.wrap(function()
        while task.wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pisunchik
        end
end)()

--sorry for the strings name im just bored okay?

local anal=0
Tabs.Game:AddSlider("Slider", {
        Title = "JumpHeight",
        Description = "Changes Jump Height",
        Default = 1,
        Min = 8,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
                anal=Value
        end
})
coroutine.wrap(function()
        while task.wait() do
                game.Players.LocalPlayer.Character.Humanoid.JumpHeight = anal
        end
end)()
        

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
