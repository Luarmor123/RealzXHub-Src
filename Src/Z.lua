local YhubSrc1BrookHaven = {}

-- 🔹 استيراد خدمات Roblox الضرورية
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- 🔹 التحقق من دعم HTTP Requests في الـ Exploit
local req = http_request or request or (syn and syn.request)
if not req then
    error("❌ لا يوجد Exploit API متاح لتنفيذ الطلب.")
end

-- 🔹 متغير للتحكم في حالة الإشعارات
local notificationsEnabled = true  

-- 🔹 دالة لعرض الإشعارات باستخدام `StarterGui`
local function showNotification(message)
    if notificationsEnabled then  
        game.StarterGui:SetCore("SendNotification", {
            Title = "إشعار صديق 👥",
            Text = message,
            Duration = 5
        })
    end
end

-- 🔹 دالة لجلب قائمة الأصدقاء من API
function YhubSrc1BrookHaven.GetFriendsList()
    local response = req({
        Url = "https://friends.roblox.com/v1/users/"..LocalPlayer.UserId.."/friends",
        Method = "GET"
    })

    if response and response.Success then
        local data = HttpService:JSONDecode(response.Body)
        local friends = {}

        for _, friend in ipairs(data.data) do
            friends[friend.id] = friend.name
        end

        return friends
    else
        warn("⚠️ فشل في جلب قائمة الأصدقاء!")
        return {}
    end
end

-- 🔹 تحديث قائمة الأصدقاء عند تشغيل السكربت
local friendsList = YhubSrc1BrookHaven.GetFriendsList()

-- 🔹 إشعار عند دخول صديق
Players.PlayerAdded:Connect(function(player)
    if friendsList[player.UserId] then
        showNotification("🎉 صديقك " .. player.Name .. " دخل السيرفر!")
    end
end)

-- 🔹 إشعار عند خروج صديق
Players.PlayerRemoving:Connect(function(player)
    if friendsList[player.UserId] then
        showNotification("👋 صديقك " .. player.Name .. " غادر السيرفر!")
    end
end)

-- 🔹 تحديث قائمة الأصدقاء كل دقيقة
task.spawn(function()
    while true do
        wait(60)
        friendsList = YhubSrc1BrookHaven.GetFriendsList()
    end
end)

-- 🔹 دالة لتفعيل/إيقاف الإشعارات
function YhubSrc1BrookHaven.ToggleNotifications(state)
    notificationsEnabled = state
end

return YhubSrc1BrookHaven
