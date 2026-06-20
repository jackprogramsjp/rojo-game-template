local CharmSync = require("../../../modules/CharmSync")
local gameStore = require("../../shared/stores/gameStore")
local remotes = require("../../shared/remotes")

CharmSync.client.addSignals({
	game = gameStore.setState,
})

remotes.patch.OnClientEvent:Connect(function(patches)
	CharmSync.client.patch(patches)
end)
