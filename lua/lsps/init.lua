require("impatient").enable_profile()

local utils = require("tools.utils")

local cfgs = {
    "lsps.lsp",
    "lsps.complete",
    -- "lsps.dap",
}

for _, cfg in ipairs(cfgs) do
    local ok, err = xpcall(require, debug.traceback, cfg)
    if not ok then
        utils.errorL(err)
    end
end
