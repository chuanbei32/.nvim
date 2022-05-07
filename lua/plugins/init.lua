local utils = require("tools.utils")

local ok, err = xpcall(require, debug.traceback, 'plugins.packer')
if not ok then
	utils.errorL(err)
end
