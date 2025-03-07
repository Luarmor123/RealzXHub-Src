local AlertFrame = Instance.new("ScreenGui");
AlertFrame.Name = "AlertFrame";
AlertFrame.Parent = game.CoreGui;
AlertFrame.ZIndexBehavior = Enum.ZIndexBehavior.Global;
local Alert = {};
_G.Primary = Color3.fromRGB(100, 100, 100);
_G.Dark = Color3.fromRGB(22, 22, 26);
function Alert:create(data)
    local titleText = data.Title or "No Title"
    local desc = data.D or "No Description"
    local imageId = data.S or ""

    -- التأكد من حذف الإشعار السابق إن وجد
    if AlertFrame:FindFirstChild("OutlineFrame") then
        AlertFrame.OutlineFrame:Destroy()
    end

    -- إنشاء الإطار الخارجي
    local OutlineFrame = Instance.new("Frame")
    OutlineFrame.Name = "OutlineFrame"
    OutlineFrame.Parent = AlertFrame
    OutlineFrame.ClipsDescendants = true
    OutlineFrame.BackgroundColor3 = _G.Dark
    OutlineFrame.BackgroundTransparency = 0.4
    OutlineFrame.Position = UDim2.new(1, 0, 0.1, 0) -- يبدأ خارج الشاشة
    OutlineFrame.Size = UDim2.new(0, 212, 0, 72)

    -- إنشاء الإطار الداخلي
    local Frame = Instance.new("Frame")
    Frame.Name = "Frame"
    Frame.Parent = OutlineFrame
    Frame.ClipsDescendants = true
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = _G.Dark
    Frame.BackgroundTransparency = 0.1
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0, 200, 0, 60)

    -- أيقونة الإشعار
    local Image = Instance.new("ImageLabel")
    Image.Name = "Icon"
    Image.Parent = Frame
    Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Image.BackgroundTransparency = 1
    Image.Position = UDim2.new(0, 8, 0, 8)
    Image.Size = UDim2.new(0, 45, 0, 45)
    Image.Image = imageId -- استخدام الصورة من الجدول

    -- عنوان الإشعار
    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = Frame
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.new(0, 55, 0, 14)
    TitleLabel.Size = UDim2.new(1, -60, 0, 20)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.Text = titleText
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.TextSize = 16
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- نص الوصف
    local DescLabel = Instance.new("TextLabel")
    DescLabel.Parent = Frame
    DescLabel.BackgroundTransparency = 1
    DescLabel.Position = UDim2.new(0, 55, 0, 33)
    DescLabel.Size = UDim2.new(1, -60, 0, 20)
    DescLabel.Font = Enum.Font.GothamSemibold
    DescLabel.TextTransparency = 0.3
    DescLabel.Text = desc
    DescLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    DescLabel.TextSize = 12
    DescLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- إضافة الزوايا المستديرة
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame

    local UICorner2 = Instance.new("UICorner")
    UICorner2.CornerRadius = UDim.new(0, 12)
    UICorner2.Parent = OutlineFrame

    -- تحريك الإشعار للدخول
    OutlineFrame:TweenPosition(UDim2.new(1, -220, 0.1, 0), "Out", "Quad", 0.4, true)

    -- انتظر 3 ثوانٍ ثم اخفِ الإشعار
    task.wait(3)
    OutlineFrame:TweenPosition(UDim2.new(1, 0, 0.1, 0), "Out", "Quad", 0.5, true)

    -- حذف الإشعار بعد الاختفاء
    task.wait(0.6)
    OutlineFrame:Destroy()
end
