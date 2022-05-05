local utils = require("tools.utils")

local ok, err = xpcall(require, debug.traceback, "impatient")
if not ok then
    utils.errorL(err)
end

local opts = {"cores", "plugins"}

for _, opt in ipairs(opts) do
    local ok, err = xpcall(require, debug.traceback, opt)
    if not ok then
        utils.errorL(err)
    end
end

require("lsps.setup")
require('lsps.nvim-cmp')
