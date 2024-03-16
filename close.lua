
if game.CoreGui:FindFirstChild("CatHubOpenClose") then
    game.CoreGui:FindFirstChild("CatHubOpenClose"):Destroy()
end

local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CatHubOpenClose"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
ImageButton.Draggable = true
ImageButton.Position = UDim2.new(0.102097899, 0, 0.0742971897, 0)
ImageButton.Size = UDim2.new(0, 59, 0, 49)
ImageButton.Image = "https://w7.pngwing.com/pngs/464/745/png-transparent-orange-tabby-kitten-cute-kitten-american-shorthair-cuteness-puppy-kitten-cat-like-mammal-animals-carnivoran.png"

UICorner.Name = "MainCorner"
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:connect(function()
        game.CoreGui:FindFirstChild("CatHub").Enabled = not game.CoreGui:FindFirstChild("CatHub").Enabled
end)
