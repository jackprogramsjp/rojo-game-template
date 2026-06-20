local assert = require("@std/test/assert")
local test = require("@std/test")

test.case("should add numbers", function()
	assert.eq(1 + 1, 2)
end)
