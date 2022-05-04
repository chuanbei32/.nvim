local utils = require("tools.utils")

local opts = {"cores", "plugins"}

for _, opt in ipairs(opts) do
    local ok, err = xpcall(require, debug.traceback, opt)
    if not ok then
        utils.errorL(err)
    end
end
