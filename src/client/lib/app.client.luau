local Players = game:GetService("Players")

local App = require("../components/App")
local Vide = require("../../../modules/Vide")

local mount = Vide.mount

mount(App, Players.LocalPlayer.PlayerGui)
