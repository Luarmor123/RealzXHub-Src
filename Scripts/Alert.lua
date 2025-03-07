local AlertFrame = Instance.new("ScreenGui")
AlertFrame.Name = "AlertFrame"
AlertFrame.Parent = game.CoreGui
AlertFrame.ZIndexBehavior = Enum.ZIndexBehavior.Global

local Alert = {}

-- متغير عالمي يحدد وقت ظهور التنبيه بسهولة للمطورين
Alert.DefaultDelay = 2 -- يمكن تغييره بسهولة

local PRIMARY_COLOR = Color3.fromRGB(100, 100, 100)
local DARK_COLOR = Color3.fromRGB(22, 22, 26)

function Alert:create(desc, delayTime)
    -- استخدم الوقت المحدد أو الافتراضي إذا لم يتم تمرير قيمة
    local timeToWait = delayTime or Alert.DefaultDelay

    -- انتظر الوقت المحدد قبل إنشاء الإشعار
    task.delay(timeToWait, function()
        local existingFrame = AlertFrame:FindFirstChild("OutlineFrame")
        if existingFrame then
            existingFrame:Destroy()
        end

        local OutlineFrame = Instance.new("Frame")
        OutlineFrame.Name = "OutlineFrame"
        OutlineFrame.Parent = AlertFrame
        OutlineFrame.ClipsDescendants = true
        OutlineFrame.BackgroundColor3 = DARK_COLOR
        OutlineFrame.BackgroundTransparency = 0.4
        OutlineFrame.Position = UDim2.new(1, 0, 0, 0)
        OutlineFrame.Size = UDim2.new(0, 212, 0, 72)

        local Frame = Instance.new("Frame")
        Frame.Parent = OutlineFrame
        Frame.ClipsDescendants = true
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.BackgroundColor3 = DARK_COLOR
        Frame.BackgroundTransparency = 0.1
        Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        Frame.Size = UDim2.new(0, 200, 0, 60)

        local Title = Instance.new("TextLabel")
        Title.Parent = Frame
        Title.BackgroundTransparency = 1
        Title.Position = UDim2.new(0, 55, 0, 10)
        Title.Size = UDim2.new(1, -60, 0, 20)
        Title.Font = Enum.Font.GothamBold
        Title.Text = "تنبيه!"
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 16
        Title.TextXAlignment = Enum.TextXAlignment.Left

        local DescLabel = Instance.new("TextLabel")
        DescLabel.Parent = Frame
        DescLabel.BackgroundTransparency = 1
        DescLabel.Position = UDim2.new(0, 55, 0, 30)
        DescLabel.Size = UDim2.new(1, -60, 0, 20)
        DescLabel.Font = Enum.Font.Gotham
        DescLabel.TextSize = 14
        DescLabel.Text = desc
        DescLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        DescLabel.TextXAlignment = Enum.TextXAlignment.Left

        -- إظهار التنبيه
        OutlineFrame:TweenPosition(UDim2.new(1, -200, 0, 0), "Out", "Quad", 0.4, true)
        wait(2)
        OutlineFrame:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.5, true)
        wait(0.6)
        OutlineFrame:Destroy()
    end)
end

return Alert
