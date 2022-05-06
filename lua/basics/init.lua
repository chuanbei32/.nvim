local utils = require("tools.utils")

local prefix = "basics.basic."

local basics = {"options", "commands", "mappings", "autocmd"}

for _, basic in ipairs(basics) do
    local ok, err = xpcall(require, debug.traceback, prefix .. basic)
    if not ok then
        utils.errorL(err)
    end
end
