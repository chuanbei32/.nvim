local utils = require('utils')
local pakcer = require('plugin.pakcer')

local ok, err = xpcall(pakcer.init, debug.traceback)
if not ok then
	local msg = "fail: " .. err
	utils.errorL(msg)
end