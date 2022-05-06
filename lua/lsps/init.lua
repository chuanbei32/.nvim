local utils = require("tools.utils")

local lsps = {
    "lsps.lsp",
    "lsps.complete"
}

for _, cfg in ipairs(lsps) do
    local ok, err = xpcall(require, debug.traceback, cfg)
    if not ok then
        utils.errorL(err)
    end
end