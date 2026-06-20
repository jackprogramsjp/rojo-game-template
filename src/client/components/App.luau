local Vide = require("../../../modules/Vide")

local create = Vide.create

local function App()
	return create("ScreenGui")({
		Name = "App",

		create("TextLabel")({
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(200, 50),
			BackgroundTransparency = 1,
			Text = "proj-elect",
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 24,
			Font = Enum.Font.GothamBold,
		}),
	})
end

return App
