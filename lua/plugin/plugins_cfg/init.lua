local utils = require('utils')

local plugins_cfg = {
	"plugin.plugins_cfg.gruvbox"
}

for _, plugins_cfgs in ipairs(plugins_cfg) do
    local ok, err = xpcall(require, debug.traceback, plugins_cfgs)
    if not ok then
        local msg = "calling module: " .. plugins_cfgs .. " fail: " .. err
        utils.errorL(msg)
    end
end