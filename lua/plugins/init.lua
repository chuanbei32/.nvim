local utils = require("tools.utils")

local packer = "plugins.plugin.packer"

local ok, err = xpcall(require, debug.traceback, packer)
if not ok then
	utils.errorL(err)
end