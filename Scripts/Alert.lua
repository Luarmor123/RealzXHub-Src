local AlertFrame = Instance.new("ScreenGui")
AlertFrame.Name = "AlertFrame"
AlertFrame.Parent = game.CoreGui
AlertFrame.ZIndexBehavior = Enum.ZIndexBehavior.Global

local Alert = {}

local PRIMARY_COLOR = Color3.fromRGB(100, 100, 100)
local DARK_COLOR = Color3.fromRGB(22, 22, 26)

function Alert:create(desc)
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

    local Image = Instance.new("ImageLabel")
    Image.Parent = Frame
    Image.BackgroundTransparency = 1
    Image.Position = UDim2.new(0, 8, 0, 8)
    Image.Size = UDim2.new(0, 45, 0, 45)
    Image.Image = "rbxassetid://93017852606884"

    local Title = Instance.new("TextLabel")
    Title.Parent = Frame
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 55, 0, 10)
    Title.Size = UDim2.new(1, -60, 0, 20)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "AstroXHub"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local Desc = Instance.new("TextLabel")
    Desc.Parent = Frame
    Desc.BackgroundTransparency = 1
    Desc.Position = UDim2.new(0, 55, 0, 30)
    Desc.Size = UDim2.new(1, -60, 0, 20)
    Desc.Font = Enum.Font.GothamSemibold
    Desc.TextTransparency = 0.3
    Desc.Text = desc
    Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
    Desc.TextSize = 12
    Desc.TextXAlignment = Enum.TextXAlignment.Left
    Desc.TextWrapped = true
    Desc.AutomaticSize = Enum.AutomaticSize.Y

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame

    local UICorner2 = Instance.new("UICorner")
    UICorner2.CornerRadius = UDim.new(0, 12)
    UICorner2.Parent = OutlineFrame

    -- حركة الإظهار
    OutlineFrame:TweenPosition(UDim2.new(1, -210, 0, 0), "Out", "Quad", 0.4, true)
    task.wait(2)
    OutlineFrame:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.5, true)
    task.wait(0.6)
    OutlineFrame:Destroy()
end

return Alert

-- تجربة الكود
