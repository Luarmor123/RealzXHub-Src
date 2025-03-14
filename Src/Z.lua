local YhubSrc1BrookHaven = {}

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local notificationsEnabled = true
local friendsList = {}

-- دالة إرسال الإشعارات (تبقى داخلية لأنها لا تحتاج استدعاء خارجي)
local function showNotification(message, time)
    if notificationsEnabled and NotificationLibrary then
        NotificationLibrary:SendNotification("Info", message, time or 4)
    end
end

-- دالة جلب قائمة الأصدقاء عبر API
function YhubSrc1BrookHaven.LoadFriends()
    if not notificationsEnabled then return end  

    local req = http_request or request or (syn and syn.request)
    if not req then
        warn("⚠️ لا يوجد دعم لطلبات HTTP في هذه البيئة!")
        return
    end

    local url = "https://friends.roblox.com/v1/users/" .. Players.LocalPlayer.UserId .. "/friends"
    local response = req({Url = url, Method = "GET"})

    if response and response.Success then
        local data = HttpService:JSONDecode(response.Body)
        friendsList = {}

        for _, friend in pairs(data.data) do
            friendsList[friend.id] = friend.name
        end
    else
        warn("⚠️ فشل في جلب قائمة الأصدقاء!")
    end
end

-- دالة بدء التحديث التلقائي للأصدقاء
function YhubSrc1BrookHaven.StartAutoUpdate()
    task.spawn(function()
        while true do
            if notificationsEnabled then
                YhubSrc1BrookHaven.LoadFriends()
            end
            wait(60)  
        end
    end)
end

-- إشعار عند دخول صديق
Players.PlayerAdded:Connect(function(player)
    if friendsList[player.UserId] then
        showNotification("🎉 صديقك " .. player.Name .. " دخل السيرفر!", 4)
    end
end)

-- إشعار عند خروج صديق
Players.PlayerRemoving:Connect(function(player)
    if friendsList[player.UserId] then
        showNotification("👋 صديقك " .. player.Name .. " غادر السيرفر!", 4)
    end
end)

-- دالة لتفعيل أو تعطيل الإشعارات
function YhubSrc1BrookHaven.ToggleNotifications(state)
    notificationsEnabled = state
    if notificationsEnabled then
        YhubSrc1BrookHaven.LoadFriends()
    end
end

return YhubSrc1BrookHaven
