local process = require("@lute/process")

local result = process.run({ "lute", "test", "src/shared/tests" }, { stdio = "inherit" })
if not result.ok then
	process.exit(1)
end
