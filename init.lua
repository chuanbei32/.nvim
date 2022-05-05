require("impatient")

local utils = require("tools.utils")

local cfgs = {
    "cores",
    "plugins",
    "lsps.LSP",
    "lsps.Complete"
}

for _, cfg in ipairs(cfgs) do
    local ok, err = xpcall(require, debug.traceback, cfg)
    if not ok then
        utils.errorL(err)
    end
end
