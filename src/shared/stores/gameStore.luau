local Charm = require("../../../modules/Charm")
local types = require("../types")

local getState, setState = Charm.signal(types.gameTemplate)

return {
	getState = getState,
	setState = setState,
}
