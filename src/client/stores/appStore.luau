local Charm = require("../../../modules/Charm")
local types = require("../../shared/types")

local getMessage, setMessage = Charm.signal(types.gameTemplate.message)

return {
	getMessage = getMessage,
	setMessage = setMessage,
}
