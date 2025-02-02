local RunService = game:GetService("RunService")
local TextChatService = game:GetService("TextChatService")



local YHUB = {
 ["ExperienceChat"] = Instance.new("ScreenGui"),
 ["CaretPadding"] = Instance.new("UIPadding"),
 ["Layout"] = Instance.new("UIListLayout"),
 ["CaretPadding_2"] = Instance.new("UIPadding"),
 ["Layout_2"] = Instance.new("UIListLayout"),
 ["CaretPadding_3"] = Instance.new("UIPadding"),
 ["Layout_3"] = Instance.new("UIListLayout"),
 ["appLayout"] = Instance.new("Frame"),
 ["chatInputBar"] = Instance.new("Frame"),
 ["Background"] = Instance.new("Frame"),
 ["Corner"] = Instance.new("UICorner"),
 ["Border"] = Instance.new("UIStroke"),
 ["Container"] = Instance.new("Frame"),
 ["TextContainer"] = Instance.new("Frame"),
 ["UIPadding"] = Instance.new("UIPadding"),
 ["TextBoxContainer"] = Instance.new("Frame"),
 ["TextBox"] = Instance.new("TextBox"),
 ["TargetChannelChip"] = Instance.new("TextButton"),
 ["SendButton"] = Instance.new("TextButton"),
 ["SendIcon"] = Instance.new("ImageLabel"),
 ["Layout_4"] = Instance.new("UIListLayout"),
 ["AutocompleteDropdown"] = Instance.new("Frame"),
 ["UISizeConstraint"] = Instance.new("UISizeConstraint"),
 ["ScrollBarFrame"] = Instance.new("Frame"),
 ["Corner_2"] = Instance.new("UICorner"),
 ["Border_2"] = Instance.new("UIStroke"),
 ["ScrollViewFrame"] = Instance.new("Frame"),
 ["ScrollView"] = Instance.new("ScrollingFrame"),
 ["OffsetFrame"] = Instance.new("Frame"),
 ["_layout"] = Instance.new("UIListLayout"),
 ["UISizeConstraint_2"] = Instance.new("UISizeConstraint"),
 ["UIPadding_2"] = Instance.new("UIPadding"),
 ["topBorder"] = Instance.new("ImageLabel"),
 ["uiSizeConstraint"] = Instance.new("UISizeConstraint"),
 ["chatWindow"] = Instance.new("Frame"),
 ["uiSizeConstraint_2"] = Instance.new("UISizeConstraint"),
 ["scrollingView"] = Instance.new("ImageButton"),
 ["bottomLockedScrollView"] = Instance.new("Frame"),
 ["RCTScrollView"] = Instance.new("ScrollingFrame"),
 ["RCTScrollContentView"] = Instance.new("Frame"),
 ["VerticalLayout"] = Instance.new("UIListLayout"),
 ["ContentDisplayLayout"] = Instance.new("UIListLayout"),
 ["TextLabel"] = Instance.new("Frame"),
 ["TextMessage"] = Instance.new("TextLabel"),
 ["_layout_2"] = Instance.new("UIListLayout"),
 ["ContentDisplayer"] = Instance.new("Frame"),
 ["TextLabel_2"] = Instance.new("Frame"),
 ["TextMessage_2"] = Instance.new("TextLabel"),
 ["padding"] = Instance.new("UIPadding"),
 ["bottomBorder"] = Instance.new("ImageLabel"),
 ["uiSizeConstraint_3"] = Instance.new("UISizeConstraint"),
 ["channelBar"] = Instance.new("Frame"),
 ["HorizontalBar"] = Instance.new("Frame"),
 ["Background_2"] = Instance.new("Frame"),
 ["BottomBorder"] = Instance.new("Frame"),
 ["ContentContainer"] = Instance.new("Frame"),
 ["_layout_3"] = Instance.new("UIListLayout"),
 ["TopCorner"] = Instance.new("ImageLabel"),
 ["layout"] = Instance.new("UIListLayout"),
 ["uiSizeConstraint_4"] = Instance.new("UISizeConstraint"),
 ["topPadding"] = Instance.new("Frame")
}
YHUB["ExperienceChat"]["Parent"] = game:GetService("CoreGui")
YHUB["ExperienceChat"]["Name"] = 'ExperienceChat'
YHUB["ExperienceChat"]["DisplayOrder"] = -1

YHUB["appLayout"]["Parent"] = YHUB["ExperienceChat"]
YHUB["appLayout"]["Name"] = 'appLayout'
YHUB["appLayout"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
YHUB["appLayout"]["BackgroundTransparency"] = 1
YHUB["appLayout"]["Position"] = UDim2.new(0.000000, 8.000000, 0.000000, 4.000000)
YHUB["appLayout"]["Size"] = UDim2.new(0.400000, 0.000000, 0.168750, 0.000000)

YHUB["chatInputBar"]["Parent"] = YHUB["appLayout"]
YHUB["chatInputBar"]["Name"] = 'chatInputBar'
YHUB["chatInputBar"]["AutomaticSize"] = Enum.AutomaticSize.Y
YHUB["chatInputBar"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["chatInputBar"]["BackgroundTransparency"] = 0.30000001192092896
YHUB["chatInputBar"]["BorderSizePixel"] = 0
YHUB["chatInputBar"]["LayoutOrder"] = 3
YHUB["chatInputBar"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

YHUB["Background"]["Parent"] = YHUB["chatInputBar"]
YHUB["Background"]["Name"] = 'Background'
YHUB["Background"]["AutomaticSize"] = Enum.AutomaticSize.XY
YHUB["Background"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["Background"]["BackgroundTransparency"] = 1
YHUB["Background"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

YHUB["Corner"]["Parent"] = YHUB["Background"]
YHUB["Corner"]["Name"] = 'Corner'
YHUB["Corner"]["CornerRadius"] = UDim.new(0.000000, 3.000000)

YHUB["Border"]["Parent"] = YHUB["Background"]
YHUB["Border"]["Name"] = 'Border'
YHUB["Border"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
YHUB["Border"]["Color"] = Color3.fromRGB(255, 255, 255)

YHUB["Container"]["Parent"] = YHUB["Background"]
YHUB["Container"]["Name"] = 'Container'
YHUB["Container"]["AutomaticSize"] = Enum.AutomaticSize.Y
YHUB["Container"]["BackgroundTransparency"] = 1
YHUB["Container"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

YHUB["TextContainer"]["Parent"] = YHUB["Container"]
YHUB["TextContainer"]["Name"] = 'TextContainer'
YHUB["TextContainer"]["AutomaticSize"] = Enum.AutomaticSize.Y
YHUB["TextContainer"]["BackgroundTransparency"] = 1
YHUB["TextContainer"]["Size"] = UDim2.new(1.000000, -30.000000, 0.000000, 0.000000)

YHUB["UIPadding"]["Parent"] = YHUB["TextContainer"]
YHUB["UIPadding"]["Name"] = 'UIPadding'
YHUB["UIPadding"]["PaddingBottom"] = UDim.new(0.000000, 10.000000)
YHUB["UIPadding"]["PaddingLeft"] = UDim.new(0.000000, 10.000000)
YHUB["UIPadding"]["PaddingRight"] = UDim.new(0.000000, 10.000000)
YHUB["UIPadding"]["PaddingTop"] = UDim.new(0.000000, 10.000000)

YHUB["TextBoxContainer"]["Parent"] = YHUB["TextContainer"]
YHUB["TextBoxContainer"]["Name"] = 'TextBoxContainer'
YHUB["TextBoxContainer"]["AnchorPoint"] = Vector2.new(1.000000, 0.000000)
YHUB["TextBoxContainer"]["AutomaticSize"] = Enum.AutomaticSize.Y
YHUB["TextBoxContainer"]["BackgroundTransparency"] = 1
YHUB["TextBoxContainer"]["Position"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)
YHUB["TextBoxContainer"]["Size"] = UDim2.new(1.000000, -8.000000, 0.000000, 0.000000)

YHUB["TextBox"]["Parent"] = YHUB["TextBoxContainer"]
YHUB["TextBox"]["Name"] = 'TextBox'
YHUB["TextBox"]["ClearTextOnFocus"] = false
YHUB["TextBox"]["FontFace"] = Font.new("rbxassetid://16658221428", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
YHUB["TextBox"]["FontSize"] = Enum.FontSize.Size18
YHUB["TextBox"]["OverlayNativeInput"] = true
YHUB["TextBox"]["PlaceholderColor3"] = Color3.fromRGB(204, 204, 204)
YHUB["TextBox"]["PlaceholderText"] = 'To chat click here or press / key'
YHUB["TextBox"]["Text"] = ''
YHUB["TextBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
YHUB["TextBox"]["TextSize"] = 16
YHUB["TextBox"]["TextStrokeTransparency"] = 0.5
YHUB["TextBox"]["TextTransparency"] = 0.5
YHUB["TextBox"]["TextWrap"] = true
YHUB["TextBox"]["TextWrapped"] = true
YHUB["TextBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
YHUB["TextBox"]["TextYAlignment"] = Enum.TextYAlignment.Top
YHUB["TextBox"]["AutomaticSize"] = Enum.AutomaticSize.XY
YHUB["TextBox"]["BackgroundTransparency"] = 1
YHUB["TextBox"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

function focuslost(e)
        if e == false then
            return
        end
        local function dance()
            if YHUB["TextBox"].Text:sub(1, 8) == "/e dance" then
                local dance = {
                    [""] = "http://www.roblox.com/asset/?id=507772104",
                    ["1"] = "http://www.roblox.com/asset/?id=507772104",
                    ["2"] = "http://www.roblox.com/asset/?id=507776879",
                    ["3"] = "http://www.roblox.com/asset/?id=507777623"
                }
                if dance[YHUB["TextBox"].Text:sub(9, 9)] then
                    local char = game:GetService("Players").LocalPlayer.Character
                    if char and char:FindFirstChildOfClass("Humanoid") then
                        local anim = Instance.new("Animation")
                        anim.AnimationId = dance[YHUB["TextBox"].Text:sub(9, 9)]
                        local loaded = char:FindFirstChildOfClass("Humanoid"):LoadAnimation(anim)
                        loaded:Play()
                        char:FindFirstChild("Humanoid").Changed:Connect(function(a) if a == 'MoveDirection' or a == 'Sit' or a == 'Jump' then loaded:Stop() end end)
                        YHUB["TextBox"].Text = ''
                    end
                end
            end
        end
        dance()
        if YHUB["TextBox"].Text == '' then return end
        if TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
            local Stuff = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
            if not Stuff then
                error("Failed to obtain the DefaultChatSystemChatEvents folder.", 1)
            end
            local Stuff2 = Stuff:FindFirstChild("SayMessageRequest")
            if not Stuff2 then
                error("Failed to obtain the SayMessageRequest event.", 1)
            end
            Stuff2:FireServer(YHUB["TextBox"].Text, "All")
        else
            for _, v in next, TextChatService.TextChannels:GetChildren() do
             if v:FindFirstChild(game:GetService("Players").LocalPlayer.Name) and v.Name ~= 'RBXSystem' then
              v:SendAsync(YHUB["TextBox"].Text)
              break
             end
            end
        end
        YHUB["TextBox"].Text = ''
end

YHUB["TextBox"].FocusLost:Connect(focuslost)

YHUB["TargetChannelChip"]["Parent"] = YHUB["TextContainer"]
YHUB["TargetChannelChip"]["Name"] = 'TargetChannelChip'
YHUB["TargetChannelChip"]["FontFace"] = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
YHUB["TargetChannelChip"]["FontSize"] = Enum.FontSize.Size14
YHUB["TargetChannelChip"]["Text"] = ''
YHUB["TargetChannelChip"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
YHUB["TargetChannelChip"]["TextSize"] = 14
YHUB["TargetChannelChip"]["TextWrap"] = true
YHUB["TargetChannelChip"]["TextWrapped"] = true
YHUB["TargetChannelChip"]["AutomaticSize"] = Enum.AutomaticSize.XY
YHUB["TargetChannelChip"]["BackgroundTransparency"] = 1
YHUB["TargetChannelChip"]["Size"] = UDim2.new(0.000000, 0.000000, 1.000000, 0.000000)
YHUB["TargetChannelChip"]["Visible"] = false

YHUB["SendButton"]["Parent"] = YHUB["Container"]
YHUB["SendButton"]["Name"] = 'SendButton'
YHUB["SendButton"]["FontFace"] = Font.new("rbxasset://fonts/families/LegacyArial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
YHUB["SendButton"]["Text"] = ''
YHUB["SendButton"]["AnchorPoint"] = Vector2.new(1.000000, 0.000000)
YHUB["SendButton"]["BackgroundTransparency"] = 1
YHUB["SendButton"]["LayoutOrder"] = 2
YHUB["SendButton"]["Position"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)
YHUB["SendButton"]["Size"] = UDim2.new(0.000000, 30.000000, 1.000000, 0.000000)

YHUB["SendButton"].MouseButton1Click:Connect(focuslost)

YHUB["SendIcon"]["Parent"] = YHUB["SendButton"]
YHUB["SendIcon"]["Name"] = 'SendIcon'
YHUB["SendIcon"]["Image"] = 'rbxasset://LuaPackages/Packages/_Index/UIBlox/UIBlox/AppImageAtlas/img_set_1x_5.png'
YHUB["SendIcon"]["ImageColor3"] = Color3.fromRGB(204, 204, 204)
YHUB["SendIcon"]["ImageRectOffset"] = Vector2.new(378.000000, 426.000000)
YHUB["SendIcon"]["ImageRectSize"] = Vector2.new(36.000000, 36.000000)
YHUB["SendIcon"]["ImageTransparency"] = 0.5
YHUB["SendIcon"]["BackgroundTransparency"] = 1
YHUB["SendIcon"]["Size"] = UDim2.new(0.000000, 30.000000, 0.000000, 30.000000)

YHUB["Layout_4"]["Parent"] = YHUB["SendButton"]
YHUB["Layout_4"]["Name"] = 'Layout'
YHUB["Layout_4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
YHUB["Layout_4"]["VerticalAlignment"] = Enum.VerticalAlignment.Center

YHUB["AutocompleteDropdown"]["Parent"] = YHUB["chatInputBar"]
YHUB["AutocompleteDropdown"]["Name"] = 'AutocompleteDropdown'
YHUB["AutocompleteDropdown"]["AnchorPoint"] = Vector2.new(0.000000, 1.000000)
YHUB["AutocompleteDropdown"]["BackgroundTransparency"] = 1
YHUB["AutocompleteDropdown"]["Size"] = UDim2.new(0.950000, 0.000000, 0.000000, 0.000000)
YHUB["AutocompleteDropdown"]["Visible"] = false
YHUB["AutocompleteDropdown"]["ZIndex"] = 2

YHUB["UISizeConstraint"]["Parent"] = YHUB["AutocompleteDropdown"]
YHUB["UISizeConstraint"]["Name"] = 'UISizeConstraint'
YHUB["UISizeConstraint"]["MaxSize"] = Vector2.new(475.000000, 164.193756)

YHUB["ScrollBarFrame"]["Parent"] = YHUB["AutocompleteDropdown"]
YHUB["ScrollBarFrame"]["Name"] = 'ScrollBarFrame'
YHUB["ScrollBarFrame"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["ScrollBarFrame"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)
YHUB["ScrollBarFrame"]["ZIndex"] = 2

YHUB["Corner_2"]["Parent"] = YHUB["ScrollBarFrame"]
YHUB["Corner_2"]["Name"] = 'Corner'
YHUB["Corner_2"]["CornerRadius"] = UDim.new(0.000000, 3.000000)

YHUB["Border_2"]["Parent"] = YHUB["ScrollBarFrame"]
YHUB["Border_2"]["Name"] = 'Border'
YHUB["Border_2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
YHUB["Border_2"]["Color"] = Color3.fromRGB(255, 255, 255)

YHUB["ScrollViewFrame"]["Parent"] = YHUB["ScrollBarFrame"]
YHUB["ScrollViewFrame"]["Name"] = 'ScrollViewFrame'
YHUB["ScrollViewFrame"]["BackgroundTransparency"] = 1
YHUB["ScrollViewFrame"]["ClipsDescendants"] = true
YHUB["ScrollViewFrame"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)
YHUB["ScrollViewFrame"]["ZIndex"] = 2

YHUB["ScrollView"]["Parent"] = YHUB["ScrollViewFrame"]
YHUB["ScrollView"]["Name"] = 'ScrollView'
YHUB["ScrollView"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
YHUB["ScrollView"]["CanvasSize"] = UDim2.new(0.000000, 0.000000, 0.000000, 0.000000)
YHUB["ScrollView"]["ScrollBarThickness"] = 4
YHUB["ScrollView"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always
YHUB["ScrollView"]["BackgroundTransparency"] = 1
YHUB["ScrollView"]["BorderSizePixel"] = 0
YHUB["ScrollView"]["ClipsDescendants"] = false
YHUB["ScrollView"]["Size"] = UDim2.new(1.000000, -4.000000, 1.000000, 0.000000)
YHUB["ScrollView"]["ZIndex"] = 2

YHUB["OffsetFrame"]["Parent"] = YHUB["ScrollView"]
YHUB["OffsetFrame"]["Name"] = 'OffsetFrame'
YHUB["OffsetFrame"]["BackgroundTransparency"] = 1
YHUB["OffsetFrame"]["Size"] = UDim2.new(1.000000, 8.000000, 1.000000, 0.000000)

YHUB["_layout"]["Parent"] = YHUB["OffsetFrame"]
YHUB["_layout"]["Name"] = 'layout'
YHUB["_layout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

YHUB["UISizeConstraint_2"]["Parent"] = YHUB["chatInputBar"]
YHUB["UISizeConstraint_2"]["Name"] = 'UISizeConstraint'
YHUB["UISizeConstraint_2"]["MaxSize"] = Vector2.new(475.000000, math.huge)

YHUB["UIPadding_2"]["Parent"] = YHUB["chatInputBar"]
YHUB["UIPadding_2"]["Name"] = 'UIPadding'
YHUB["UIPadding_2"]["PaddingBottom"] = UDim.new(0.000000, 1.000000)
YHUB["UIPadding_2"]["PaddingLeft"] = UDim.new(0.000000, 8.000000)
YHUB["UIPadding_2"]["PaddingRight"] = UDim.new(0.000000, 8.000000)
YHUB["UIPadding_2"]["PaddingTop"] = UDim.new(0.000000, 8.000000)

YHUB["topBorder"]["Parent"] = YHUB["appLayout"]
YHUB["topBorder"]["Name"] = 'topBorder'
YHUB["topBorder"]["Image"] = 'rbxasset://textures/ui/TopRoundedRect8px.png'
YHUB["topBorder"]["ImageColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["topBorder"]["ImageTransparency"] = 0.30000001192092896
YHUB["topBorder"]["ScaleType"] = Enum.ScaleType.Slice
YHUB["topBorder"]["SliceCenter"] = Rect.new(8, 8, 24, 32)
YHUB["topBorder"]["BackgroundTransparency"] = 1
YHUB["topBorder"]["LayoutOrder"] = 1
YHUB["topBorder"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)

YHUB["uiSizeConstraint"]["Parent"] = YHUB["topBorder"]
YHUB["uiSizeConstraint"]["Name"] = 'uiSizeConstraint'
YHUB["uiSizeConstraint"]["MaxSize"] = Vector2.new(475.000000, math.huge)

YHUB["chatWindow"]["Parent"] = YHUB["appLayout"]
YHUB["chatWindow"]["Name"] = 'chatWindow'
YHUB["chatWindow"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["chatWindow"]["BackgroundTransparency"] = 0.30000001192092896
YHUB["chatWindow"]["BorderSizePixel"] = 0
YHUB["chatWindow"]["LayoutOrder"] = 2
YHUB["chatWindow"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

YHUB["uiSizeConstraint_2"]["Parent"] = YHUB["chatWindow"]
YHUB["uiSizeConstraint_2"]["Name"] = 'uiSizeConstraint'
YHUB["uiSizeConstraint_2"]["MaxSize"] = Vector2.new(475.000000, 275.000000)

YHUB["scrollingView"]["Parent"] = YHUB["chatWindow"]
YHUB["scrollingView"]["Name"] = 'scrollingView'
YHUB["scrollingView"]["BackgroundTransparency"] = 1
YHUB["scrollingView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

YHUB["bottomLockedScrollView"]["Parent"] = YHUB["scrollingView"]
YHUB["bottomLockedScrollView"]["Name"] = 'bottomLockedScrollView'
YHUB["bottomLockedScrollView"]["BackgroundTransparency"] = 1
YHUB["bottomLockedScrollView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

YHUB["RCTScrollView"]["Parent"] = YHUB["bottomLockedScrollView"]
YHUB["RCTScrollView"]["Name"] = 'RCTScrollView'
YHUB["RCTScrollView"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY
YHUB["RCTScrollView"]["CanvasSize"] = UDim2.new(0.000000, 0.000000, 0.000000, 0.000000)
YHUB["RCTScrollView"]["ScrollBarThickness"] = 8
YHUB["RCTScrollView"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
YHUB["RCTScrollView"]["BackgroundTransparency"] = 1
YHUB["RCTScrollView"]["BorderSizePixel"] = 0
YHUB["RCTScrollView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

YHUB["RCTScrollContentView"]["Parent"] = YHUB["RCTScrollView"]
YHUB["RCTScrollContentView"]["Name"] = 'RCTScrollContentView'
YHUB["RCTScrollContentView"]["AutomaticSize"] = Enum.AutomaticSize.Y
YHUB["RCTScrollContentView"]["BackgroundTransparency"] = 1
YHUB["RCTScrollContentView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

YHUB["VerticalLayout"]["Parent"] = YHUB["RCTScrollContentView"]
YHUB["VerticalLayout"]["Name"] = 'VerticalLayout'
YHUB["VerticalLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
YHUB["VerticalLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

YHUB["_layout_2"]["Parent"] = YHUB["RCTScrollContentView"]
YHUB["_layout_2"]["Name"] = 'layout'
YHUB["_layout_2"]["SortOrder"] = Enum.SortOrder.LayoutOrder
YHUB["_layout_2"]["Padding"] = UDim.new(0.000000, 4.000000)

YHUB["ContentDisplayer"]["Parent"] = YHUB["RCTScrollContentView"]
YHUB["ContentDisplayer"]["Name"] = 'ContentDisplayer'
YHUB["ContentDisplayer"]["AutomaticSize"] = Enum.AutomaticSize.Y
YHUB["ContentDisplayer"]["BackgroundTransparency"] = 1
YHUB["ContentDisplayer"]["LayoutOrder"] = 2
YHUB["ContentDisplayer"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

YHUB["ContentDisplayLayout"]['Parent'] = YHUB["ContentDisplayer"]
--YHUB["ContentDisplayLayout"][''] = YHUB["ContentDisplayer"]

YHUB["padding"]["Parent"] = YHUB["bottomLockedScrollView"]
YHUB["padding"]["Name"] = 'padding'
YHUB["padding"]["PaddingLeft"] = UDim.new(0.000000, 8.000000)
YHUB["padding"]["PaddingRight"] = UDim.new(0.000000, 8.000000)

YHUB["bottomBorder"]["Parent"] = YHUB["appLayout"]
YHUB["bottomBorder"]["Name"] = 'bottomBorder'
YHUB["bottomBorder"]["Image"] = 'rbxasset://textures/ui/BottomRoundedRect8px.png'
YHUB["bottomBorder"]["ImageColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["bottomBorder"]["ImageTransparency"] = 0.30000001192092896
YHUB["bottomBorder"]["ScaleType"] = Enum.ScaleType.Slice
YHUB["bottomBorder"]["SliceCenter"] = Rect.new(8, 0, 24, 16)
YHUB["bottomBorder"]["BackgroundTransparency"] = 1
YHUB["bottomBorder"]["LayoutOrder"] = 5
YHUB["bottomBorder"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)

YHUB["uiSizeConstraint_3"]["Parent"] = YHUB["bottomBorder"]
YHUB["uiSizeConstraint_3"]["Name"] = 'uiSizeConstraint'
YHUB["uiSizeConstraint_3"]["MaxSize"] = Vector2.new(475.000000, math.huge)

YHUB["channelBar"]["Parent"] = YHUB["appLayout"]
YHUB["channelBar"]["Name"] = 'channelBar'
YHUB["channelBar"]["BackgroundTransparency"] = 1
YHUB["channelBar"]["BorderSizePixel"] = 0
YHUB["channelBar"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 40.000000)
YHUB["channelBar"]["Visible"] = false

YHUB["HorizontalBar"]["Parent"] = YHUB["channelBar"]
YHUB["HorizontalBar"]["Name"] = 'HorizontalBar'
YHUB["HorizontalBar"]["BackgroundTransparency"] = 1
YHUB["HorizontalBar"]["BorderSizePixel"] = 0
YHUB["HorizontalBar"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

YHUB["Background_2"]["Parent"] = YHUB["HorizontalBar"]
YHUB["Background_2"]["Name"] = 'Background'
YHUB["Background_2"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["Background_2"]["BorderSizePixel"] = 0
YHUB["Background_2"]["Position"] = UDim2.new(0.000000, 0.000000, 0.000000, 8.000000)
YHUB["Background_2"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 31.000000)

YHUB["BottomBorder"]["Parent"] = YHUB["HorizontalBar"]
YHUB["BottomBorder"]["Name"] = 'BottomBorder'
YHUB["BottomBorder"]["BackgroundColor3"] = Color3.fromRGB(100, 100, 100)
YHUB["BottomBorder"]["BorderSizePixel"] = 0
YHUB["BottomBorder"]["Position"] = UDim2.new(0.000000, 0.000000, 1.000000, -1.000000)
YHUB["BottomBorder"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 1.000000)

YHUB["ContentContainer"]["Parent"] = YHUB["HorizontalBar"]
YHUB["ContentContainer"]["Name"] = 'ContentContainer'
YHUB["ContentContainer"]["BackgroundTransparency"] = 1
YHUB["ContentContainer"]["BorderSizePixel"] = 0
YHUB["ContentContainer"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

YHUB["_layout_3"]["Parent"] = YHUB["ContentContainer"]
YHUB["_layout_3"]["Name"] = 'layout'
YHUB["_layout_3"]["FillDirection"] = Enum.FillDirection.Horizontal
YHUB["_layout_3"]["SortOrder"] = Enum.SortOrder.LayoutOrder

YHUB["TopCorner"]["Parent"] = YHUB["HorizontalBar"]
YHUB["TopCorner"]["Name"] = 'TopCorner'
YHUB["TopCorner"]["Image"] = 'rbxasset://textures/ui/TopRoundedRect8px.png'
YHUB["TopCorner"]["ImageColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["TopCorner"]["ScaleType"] = Enum.ScaleType.Slice
YHUB["TopCorner"]["SliceCenter"] = Rect.new(8, 8, 24, 32)
YHUB["TopCorner"]["BackgroundTransparency"] = 1
YHUB["TopCorner"]["BorderSizePixel"] = 0
YHUB["TopCorner"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)

YHUB["layout"]["Parent"] = YHUB["appLayout"]
YHUB["layout"]["Name"] = 'layout'
YHUB["layout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

YHUB["uiSizeConstraint_4"]["Parent"] = YHUB["appLayout"]
YHUB["uiSizeConstraint_4"]["Name"] = 'uiSizeConstraint'
YHUB["uiSizeConstraint_4"]["MaxSize"] = Vector2.new(475.000000, math.huge)

YHUB["topPadding"]["Parent"] = YHUB["appLayout"]
YHUB["topPadding"]["Name"] = 'topPadding'
YHUB["topPadding"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
YHUB["topPadding"]["BackgroundTransparency"] = 0.30000001192092896
YHUB["topPadding"]["BorderSizePixel"] = 0
YHUB["topPadding"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)
YHUB["topPadding"]["Visible"] = false
YHUB["topPadding"]["ZIndex"] = 0

YHUB["TextLabel_2"]["Name"] = 'TextLabel'
YHUB["TextLabel_2"]["AutomaticSize"] = Enum.AutomaticSize.XY
YHUB["TextLabel_2"]["BackgroundTransparency"] = 1

YHUB["TextMessage_2"]["Parent"] = YHUB["TextLabel_2"]
YHUB["TextMessage_2"]["Name"] = 'TextMessage'
YHUB["TextMessage_2"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
YHUB["TextMessage_2"]["FontSize"] = Enum.FontSize.Size18
YHUB["TextMessage_2"]["RichText"] = true
YHUB["TextMessage_2"]["Text"] = ''
YHUB["TextMessage_2"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
YHUB["TextMessage_2"]["TextSize"] = 18
YHUB["TextMessage_2"]["TextStrokeTransparency"] = 0.5
YHUB["TextMessage_2"]["TextWrap"] = true
YHUB["TextMessage_2"]["TextWrapped"] = true
YHUB["TextMessage_2"]["TextXAlignment"] = Enum.TextXAlignment.Left
YHUB["TextMessage_2"]["TextYAlignment"] = Enum.TextYAlignment.Top
YHUB["TextMessage_2"]["AutomaticSize"] = Enum.AutomaticSize.XY
YHUB["TextMessage_2"]["BackgroundTransparency"] = 1
YHUB["TextMessage_2"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

function CreateMessage(Message: TextChatMessage | table)
 local Color = "#d4d4d4"
 local MessageTime = Message.Timestamp:ToLocalTime()
 local Clone = YHUB["TextLabel_2"]:Clone()
 Clone.Parent = YHUB["ContentDisplayer"]

 local function GetFormattedTime()
    local NewTime = DateTime.now():ToLocalTime()
    local FixedS, FixedM, FixedH = NewTime.Second - MessageTime.Second, NewTime.Minute - MessageTime.Minute, NewTime.Hour - MessageTime.Hour
    
    if FixedS < 0 then
        FixedS = FixedS + 60
        FixedM = FixedM - 1
    end
    if FixedM < 0 then
        FixedM = FixedM + 60
        FixedH = FixedH - 1
    end
    if FixedH < 0 then
        FixedH = FixedH + 24
    end

    local timeString = ""
    if FixedH > 0 then
        timeString = timeString .. FixedH .. (FixedH == 1 and " hour" or " hours")
        if FixedM > 0 or FixedS > 0 then
            timeString = timeString .. " and "
        end
    end
    if FixedM > 0 then
        timeString = timeString .. FixedM .. (FixedM == 1 and " minute" or " minutes")
        if FixedS > 0 then
            timeString = timeString .. ", "
        end
    end
    if FixedS > 0 then
        timeString = timeString .. FixedS .. (FixedS == 1 and " second" or " seconds")
    elseif FixedS == 0 and FixedM == 0 and FixedH == 0 then
        timeString = 'now'
    end

    return (timeString == 'now' and timeString or timeString .. ' ago')
 end

 Clone.TextMessage["Text"] = string.format('%s <font color="%s">%s\nnow</font>', Message.PrefixText, Color, Message.Text)

 local function Update()
  Clone.TextMessage["Text"] = string.format('%s <font color="%s">%s\n%s</font>', Message.PrefixText, Color, Message.Text, GetFormattedTime())
 end

 task.wait(1)

 RunService.Heartbeat:Connect(Update)
end

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
 TextChatService.MessageReceived:Connect(function(m)
  task.spawn(CreateMessage, m)
 end)
else
 local Stuff = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
 if not Stuff then error('Failed to obtain the DefaultChatSystemChatEvents folder.', 1) end
 local Stuff2 = Stuff:FindFirstChild("OnMessageDoneFiltering")
 if not Stuff2 then error('Failed to obtain the OnMessageDoneFiltering event.', 1) end
 Stuff2.OnClientEvent:Connect(function(msg)
  local n = msg.ExtraData.NameColor
  task.spawn(CreateMessage, {
   Timestamp = DateTime.now(),
   Text = msg.Message,
   PrefixText = string.format('<font color="rgb(%d, %d, %d)">%s:</font>', n.R*255,n.G*255,n.B*255,msg.FromSpeaker)
  })
 end)
end
