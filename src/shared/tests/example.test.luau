local test = require("../../../tests/test")

test("should add numbers", function()
	if 1 + 1 ~= 2 then
		error("expected 2")
	end
end)

return {}
