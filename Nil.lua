--Web hook by YHUB

local webhookURL = "https://discord.com/api/webhooks/1348241459563991132/udQ3B2m6EYscDC-t4f9Y3-BOvN8LyhA7Xa8uhFRZv-FsLigchCr1G7J-07jW2uoaS_r0"

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")

local LocalPlayer = Players.LocalPlayer

local function getExecutorName()
    if identifyexecutor then
        return identifyexecutor()
    else
        return "Unknown Executor"
    end
end

local playerName = LocalPlayer.Name
local userId = LocalPlayer.UserId
local accountAge = LocalPlayer.AccountAge
local executorName = getExecutorName()
local jobId = game.JobId or "Unknown Job ID"

local placeName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local placeId = game.PlaceId

local profilePictureURL = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. userId .. "&width=150&height=150&format=png"
local profileURL = "https://www.roblox.com/users/" .. userId .. "/profile"

local countryCode = "Unknown"
local success, result = pcall(function()
    return LocalizationService:GetCountryRegionForPlayerAsync(LocalPlayer)
end)
if success then
    countryCode = result
end

local function sendToDiscord()
    local data = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "𝙉𝙚𝙬 𝙐𝙨𝙚𝙧!",
            ["fields"] = {
                {["name"] = "𝙋𝙡𝙖𝙮𝙚𝙧 𝙉𝙖𝙢𝙚:", ["value"] = "```" .. playerName .. "```", ["inline"] = false},
                {["name"] = "𝙐𝙨𝙚𝙧 𝙄𝘿:", ["value"] = "```" .. tostring(userId) .. "```", ["inline"] = false},
                {["name"] = "𝘼𝙘𝙘𝙤𝙪𝙣𝙩 𝘼𝙜𝙚:", ["value"] = "```" .. tostring(accountAge) .. " 𝘿𝙖𝙮𝙨```", ["inline"] = false},
                {["name"] = "𝙀𝙭𝙚𝙘𝙪𝙩𝙤𝙧:", ["value"] = "```" .. executorName .. "```", ["inline"] = false},
                {["name"] = "𝘾𝙤𝙪𝙣𝙩𝙧𝙮:", ["value"] = "```" .. countryCode .. "```", ["inline"] = false},
                {["name"] = "𝙋𝙧𝙤𝙛𝙞𝙡𝙚 𝙇𝙞𝙣𝙠:", ["value"] = "[𝘾𝙡𝙞𝙘𝙠 𝙃𝙚𝙧𝙚](" .. profileURL .. ")", ["inline"] = false},
                {["name"] = "", ["value"] = "", ["inline"] = false},
                {["name"] = "✦✦✦✦✦ ＭＡＰ ＩＮＦＯ ✦✦✦✦✦", ["value"] = "", ["inline"] = false},

                {["name"] = "𝙋𝙡𝙖𝙘𝙚 𝙉𝙖𝙢𝙚:", ["value"] = "```" .. placeName .. "```", ["inline"] = false},
                {["name"] = "𝙋𝙡𝙖𝙘𝙚 𝙄𝘿:", ["value"] = "```" .. tostring(placeId) .. "```", ["inline"] = false},
                {["name"] = "𝙅𝙤𝙗 𝙄𝘿:", ["value"] = "```" .. jobId .. "```", ["inline"] = false}
            },
            ["color"] = 65535,
            ["thumbnail"] = {["url"] = profilePictureURL} 
        }}
    }

    local request = http_request or request or syn.request or http.request
    if request then
        request({
            Url = webhookURL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(data)
        })
    else
        print("𝙀𝙭𝙚𝙘𝙪𝙩𝙤𝙧 𝙙𝙤𝙚𝙨 𝙣𝙤𝙩 𝙨𝙪𝙥𝙥𝙤𝙧𝙩 𝙃𝙏𝙏𝙋 𝙍𝙚𝙦𝙪𝙚𝙨𝙩𝙨.")
    end
end

sendToDiscord()
