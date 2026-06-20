local gt = require("../../modules/gt")
local lib = require("@self/lib")

return {
	assert = lib.assert,
	patch = lib.event(gt.anyTable()),
}
