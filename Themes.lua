local Themes = {
    -- Original Library's Theme
  ["Default"] = {
    ["Color Hub 1"] = Color3.fromRGB(0, 0, 0),
    ["Color Hub 2"] = Color3.fromRGB(0, 0, 0),
    ["Color Theme"] = Color3.fromRGB(0, 0, 0),
    ["Color Text"] = Color3.fromRGB(240, 240, 240),
    ["Color Dark Text"] = Color3.fromRGB(200, 200, 200),
    ["Color Stroke"] = Color3.fromRGB(80, 80, 80),
    ["Corner Radius"] = UDim.new(0, 5),
    ["Font"] = {
      Enum.Font.GothamBlack,
      Enum.Font.GothamBold,
      Enum.Font.GothamMedium
    },
    ["Stroke Thickness"] = 1,
    ["Tween Style"] = Enum.EasingStyle.Quad
  },
  -- Credits to AstroXTeam
  ["AstroXTeam"] = {
    ["Color Hub 1"] = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(28, 23, 25.5)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(30.5, 30.5, 30.5)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 23, 25.5))
    }),
    ["Color Hub 2"] = Color3.fromRGB(28, 28, 28),
    ["Color Theme"] = Color3.fromRGB(255, 0, 0),
    ["Color Text"] = Color3.fromRGB(240, 240, 240),
    ["Color Dark Text"] = Color3.fromRGB(180, 180, 180),
    ["Corner Radius"] = UDim.new(0, 7),
    ["Font"] = {
      Enum.Font.GothamBlack,
      Enum.Font.GothamBold,
      Enum.Font.GothamMedium
    },
    ["Stroke Thickness"] = 1,
    ["Tween Style"] = Enum.EasingStyle.Quad
  },
}

return Themes


		 
