local utils = require("tools.utils")

local prefix = "plugins.plugin.cfgs.cfg."

for _, cfg in ipairs(require("plugins.plugin.cfgs.use")) do
    local ok, err = xpcall(require, debug.traceback, prefix .. cfg)
    if not ok then
        utils.errorL(err)
    end
end