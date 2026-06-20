local Players = game:GetService("Players")

local CharmSync = require("../../../modules/CharmSync")
local gameStore = require("../../shared/stores/gameStore")
local remotes = require("../../shared/remotes")

local function onPlayerAdded(player: Player)
	CharmSync.server.addSignalsToClient(player, {
		game = gameStore.getState,
	})
end

local function onPlayerRemoving(player: Player)
	CharmSync.server.removeClient(player)
end

CharmSync.server.connect(function(player, patches)
	remotes.patch:FireClient(player, patches)
end)

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)

for _, player in Players:GetPlayers() do
	onPlayerAdded(player)
end
