local YhubSrc1BrookHaven = {}

-- 🔹 استيراد خدمات Roblox
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- 🔹 التحقق من دعم HTTP Requests
local req = http_request or request or (syn and syn.request)
if not req then
    error("❌ لا يوجد Exploit API متاح لتنفيذ الطلب.")
end

-- 🔹 متغير للتحكم في الإشعارات
local notificationsEnabled = true  

-- 🔹 دالة لعرض الإشعارات
local function showNotification(message)
    if notificationsEnabled then  -- ✅ لن يتم إرسال الإشعار إذا كان معطلًا
        game.StarterGui:SetCore("SendNotification", {
            Title = "إشعار صديق 👥",
            Text = message,
            Duration = 5
        })
    end
end

-- 🔹 دالة لجلب قائمة الأصدقاء
function YhubSrc1BrookHaven.GetFriendsList()
    if not notificationsEnabled then return {} end  -- ✅ لا يتم جلب القائمة إذا كان معطلًا

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

-- 🔹 قائمة الأصدقاء (تُحدَّث عند التفعيل فقط)
local friendsList = {}

-- 🔹 إشعار عند دخول صديق
Players.PlayerAdded:Connect(function(player)
    if notificationsEnabled and friendsList[player.UserId] then
        showNotification("🎉 صديقك " .. player.Name .. " دخل السيرفر!")
    end
end)

-- 🔹 إشعار عند خروج صديق
Players.PlayerRemoving:Connect(function(player)
    if notificationsEnabled and friendsList[player.UserId] then
        showNotification("👋 صديقك " .. player.Name .. " غادر السيرفر!")
    end
end)

-- 🔹 تحديث قائمة الأصدقاء كل دقيقة (يعمل فقط عند التفعيل)
task.spawn(function()
    while true do
        if notificationsEnabled then
            friendsList = YhubSrc1BrookHaven.GetFriendsList()
        end
        wait(60)
    end
end)

-- 🔹 دالة تفعيل/إيقاف الإشعارات
function YhubSrc1BrookHaven.ToggleNotifications(state)
    notificationsEnabled = state
    if state then
        friendsList = YhubSrc1BrookHaven.GetFriendsList()  -- ✅ إعادة تحميل القائمة عند التفعيل
    else
        friendsList = {}  -- ✅ مسح القائمة عند التعطيل لمنع الإشعارات
    end
end

return YhubSrc1BrookHaven
