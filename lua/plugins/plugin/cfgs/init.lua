local utils = require("tools.utils")

local prefix = "plugins.plugin.cfgs.cfg."

local cfgs = {"gruvbox"}

for _, cfg in ipairs(cfgs) do
    local ok, err = xpcall(require, debug.traceback, prefix .. cfg)
    if not ok then
        utils.errorL(err)
    end
end