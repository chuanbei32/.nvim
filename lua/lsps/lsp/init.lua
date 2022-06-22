local utils = require("tools.utils")

local ok, err = xpcall(require, debug.traceback, 'lsps.lsp.lsp')
if not ok then
    utils.errorL(err)
end