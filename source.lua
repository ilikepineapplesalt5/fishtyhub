
-- ilikepineapplesalt4

local player = game.Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

if CoreGui:FindFirstChild("HandHub") then
    CoreGui.HandHub:Destroy()
end



game.StarterGui:SetCore("SendNotification", {
    Title = "Hub Loaded",
    Text = "Created by @flashtynooo UPDATE 1.03",
    Duration = 4
}) 
local gui = Instance.new("ScreenGui", CoreGui)
gui.ResetOnSpawn = false
gui.Name = "HandHub"
gui.DisplayOrder = 10000

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 280, 0, 250)
main.Position = UDim2.new(0.5, -140, 0.6, -160)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderColor3 = Color3.fromRGB(255, 0, 150)
main.BorderSizePixel = 2
main.Active = true
main.Draggable = true
main.Name = "MainFrame"
main.ZIndex = 9000
local header = Instance.new("Frame", main)
header.Size = UDim2.new(1, 0, 0, 30)
header.BackgroundColor3 = Color3.fromRGB(40, 0, 60)
header.BorderSizePixel = 0
header.Name = "TopBar"
header.ZIndex = 9100
local title = Instance.new("TextLabel", header)
title.Text = "Flshty HUB :)☠️"
title.Size = UDim2.new(1, -90, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.TextColor3 = Color3.fromRGB(255, 0, 200)
title.BackgroundTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.Arcade
title.TextSize = 14
title.ZIndex = 9200

local minimized = false
local lastVisibleSection = nil

local function createButton(txt, offsetX, callback)
    local b = Instance.new("TextButton", header)
    b.Size = UDim2.new(0, 25, 0, 25)
    b.Position = UDim2.new(1, offsetX, 0, 2)
    b.Text = txt
    b.TextColor3 = Color3.new(1, 1, 1)
    b.BackgroundColor3 = Color3.fromRGB(90, 0, 100)
    b.BorderSizePixel = 0
    b.Font = Enum.Font.Gotham
    b.TextSize = 14
    b.ZIndex = 9300
    b.MouseButton1Click:Connect(callback)
end

-- Fonction pour minimiser et restaurer

createButton("X", -30, function()
    gui:Destroy()
end)

local categoryScroll = Instance.new("ScrollingFrame", main)
categoryScroll.Position = UDim2.new(0, 10, 0, 40)
categoryScroll.Size = UDim2.new(0, 260, 0, 50)
categoryScroll.BackgroundTransparency = 1
categoryScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
categoryScroll.ScrollBarThickness = 4
categoryScroll.ScrollingDirection = Enum.ScrollingDirection.X
categoryScroll.ZIndex = 9400

local categories = {
    ["All script"] = {
        { "⛏️ Dig to Earth's CORE!", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/%E2%9B%8F%EF%B8%8F%20Dig%20to%20Earth's%20CORE!" },
        { "Brookhaven", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/Brookhaven%20total" },
        { "Line to CHICKEN JOCKEY!", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Flashtynooo-hub/Line%20to%20CHICKEN%20JOCKEY!" },
        { "oMega Obby 🌟 725 Stages!", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/725%20Stages%20total" },
        { "The $1,000,000 Glass Bridge", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/The-%241%2C000%2C000-Glass-Bridge/The%20all%202" },
        { "Jumpscare RNG", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/%2B30-Luck%F0%9F%8D%80%5D%F0%9F%8E%B2Jumpscare-RNG/The%20all%202" },
        { "Maze to VIP Obby", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Maze-to-vip-obby/The%20all%202" },
        { "MAKE EVERYONE BALD AND SELL WIGS TYCOON", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/MAKE%20EVERYONE%20BALD%20AND%20SELL%20WIGS%20TYCOON" },
        { "FEEDING TRASH TO RICH PEOPLE TYCOON", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/FEEDING%20TRASH%20TO%20RICH%20PEOPLE%20TYCOON" },
        { "Get Richer Every Second", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/Get%20Richer%20Every%20Second" },
        { "Game: R6 Dances", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Game-R6-Dances/Ohyeeeman" },
        { "Rolling Riches", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Roll-rock/Total%202" }
},


    ["RNG Game"] = {
        { "Jumpscare RNG", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/%2B30-Luck%F0%9F%8D%80%5D%F0%9F%8E%B2Jumpscare-RNG/The%20all%202" }
},
    ["FE Animation tools"] = {
        { "jerk off", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/Jerk%20off" },
        { "The H [need R6]","https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/Tonton%20h" },
        { "Fe floating god [need R6]", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/Fr%20floating%20god" }
},

    ["Obby Game"] = {
        { "oMega Obby 🌟 725 Stages!", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/725%20Stages%20total" },
        { "The $1,000,000 Glass Bridge", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/The-%241%2C000%2C000-Glass-Bridge/The%20all%202" },
        { "Maze to VIP Obby", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Maze-to-vip-obby/The%20all%202" }
},


    ["Inf Game"] = {
        { "⛏️ Dig to Earth's CORE!", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/%E2%9B%8F%EF%B8%8F%20Dig%20to%20Earth's%20CORE!" },
        { "The $1,000,000 Glass Bridge", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/The-%241%2C000%2C000-Glass-Bridge/The%20all%202" },
        { "FEEDING TRASH TO RICH PEOPLE TYCOON", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/FEEDING%20TRASH%20TO%20RICH%20PEOPLE%20TYCOON" }
},

    ["Tycoon"] = {
        { "MAKE EVERYONE BALD AND SELL WIGS TYCOON", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/MAKE%20EVERYONE%20BALD%20AND%20SELL%20WIGS%20TYCOON" },
        { "FEEDING TRASH TO RICH PEOPLE TYCOON", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/FEEDING%20TRASH%20TO%20RICH%20PEOPLE%20TYCOON" }
},

    ["Others"] = {
        { "Brookhaven", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Every-hub-every-games/Brookhaven%20total" },
        { "Line to CHICKEN JOCKEY!", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Flashtynooo-hub/Line%20to%20CHICKEN%20JOCKEY!" },
        { "Game: R6 Dances", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Game-R6-Dances/Ohyeeeman" },
        { "Rolling Riches", "https://raw.githubusercontent.com/Flashtynooo/Roblox/refs/heads/Roll-rock/Total%202" }



},
    ["Soon . . ."] = {
        { "SOON :)", "" }
},
}

local activeFrame
local function showSection(sectionFrame)
    if activeFrame then activeFrame.Visible = false end
    activeFrame = sectionFrame
    activeFrame.Visible = true
end

local categoryButtons = {}
local sections = {}

local function createCategory(cat, list)
    local index = #categoryButtons
    local btn = Instance.new("TextButton", categoryScroll)
    btn.Size = UDim2.new(0, 70, 1, 0)
    btn.Position = UDim2.new(0, index * 75, 0, 0)
    btn.Text = cat
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.BackgroundColor3 = Color3.fromRGB(90, 0, 110)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 11
    btn.ZIndex = 9400
    table.insert(categoryButtons, btn)

    categoryScroll.CanvasSize = UDim2.new(0, #categoryButtons * 75, 0, 0)

    local section = Instance.new("ScrollingFrame", main)
    section.Position = UDim2.new(0, 10, 0, 100)
    section.Size = UDim2.new(0, 260, 0, 140)
    section.Visible = false
    section.CanvasSize = UDim2.new(0, 0, 0, #list * 45)
    section.ScrollBarThickness = 4
    section.BackgroundColor3 = Color3.fromRGB(25, 0, 40)
    sections[cat] = section
    section.ZIndex = 9400

    for i, entry in ipairs(list) do
        local name, link = unpack(entry)
        local hubBtn = Instance.new("TextButton", section)
        hubBtn.Size = UDim2.new(1, -10, 0, 40)
        hubBtn.Position = UDim2.new(0, 5, 0, (i - 1) * 45)
        hubBtn.Text = "▶ " .. name
        hubBtn.BackgroundColor3 = Color3.fromRGB(110, 0, 130)
        hubBtn.TextColor3 = Color3.new(1, 1, 1)
        hubBtn.Font = Enum.Font.Gotham
        hubBtn.TextSize = 13
        hubBtn.ZIndex = 9400
        hubBtn.MouseButton1Click:Connect(function()
            loadstring(game:HttpGet(link))()
        end)
    end

    btn.MouseButton1Click:Connect(function()
        showSection(section)
    end)
end



-- Création ordonnée des catégories
createCategory("All script", categories["All script"])
createCategory("RNG Game", categories["RNG Game"])
createCategory("Obby Game", categories["Obby Game"])
createCategory("Inf Game", categories["Inf Game"])
createCategory("Tycoon", categories["Tycoon"])
createCategory("Others", categories["Others"])
createCategory("FE Animation", categories["FE Animation tools"]) -- AVANT-DERNIÈRE
createCategory("Soon . . .", categories["Soon . . ."]) -- DERNIÈRE


-- Affichage auto "All script"
task.wait()
showSection(sections["All script"])

-- IMAGE CLIQUABLE (bouton pour afficher/cacher le hub)
local toggleImage = Instance.new("ImageButton")
toggleImage.Size = UDim2.new(0, 60, 0, 60)
toggleImage.Position = UDim2.new(0, 20, 0.5, -30)
toggleImage.BackgroundTransparency = 1
toggleImage.Image = "rbxthumb://type=Asset&id=76126150119912&w=420&h=420"
toggleImage.Parent = gui
toggleImage.Draggable = true
toggleImage.Active = true

-- Fonction pour basculer l'affichage du hub
toggleImage.MouseButton1Click:Connect(function()
    if main.Visible then
        main.Visible = false
    else
        main.Visible = true
    end
end)
_G.Sections = _G.Sections or {}
_G.Buttons = _G.Buttons or {}

-- Ajoute une nouvelle section (Frame) au ScreenGui principal
function _G.AddSection(name, props)
    local gui = game.CoreGui:FindFirstChild("FlshtyHub")
    if not gui then warn("Hub non trouvé.") return end

    local section = Instance.new("Frame")
    section.Name = name
    for k, v in pairs(props or {}) do
        section[k] = v
    end
    section.Parent = gui
    table.insert(_G.Sections, section)
    return section
end

-- Supprime une section par nom
function _G.RemoveSection(name)
    for i, section in ipairs(_G.Sections) do
        if section.Name == name then
            section:Destroy()
            table.remove(_G.Sections, i)
            return true
        end
    end
    return false
end

-- Ajoute un bouton dans une section existante
function _G.AddButton(sectionName, props)
    for _, section in ipairs(_G.Sections) do
        if section.Name == sectionName then
            local btn = Instance.new("TextButton")
            for k, v in pairs(props or {}) do
                btn[k] = v
            end
            btn.Parent = section
            table.insert(_G.Buttons, btn)
            return btn
        end
    end
    warn("Section non trouvée: " .. sectionName)
    return nil
end

-- Supprime un bouton par son texte
function _G.RemoveButton(text)
    for i, btn in ipairs(_G.Buttons) do
        if btn.Text == text then
            btn:Destroy()
            table.remove(_G.Buttons, i)
            return true
        end
    end
    return false
end
