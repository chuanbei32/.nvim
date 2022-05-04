local utils = require("tools.utils")

local prefix = "cores.core."

local cores = {"options", "mappings", "commands", "autocmd", "colors"}

for _, core in ipairs(cores) do
    local ok, err = xpcall(require, debug.traceback, prefix .. core)
    if not ok then
        utils.errorL(err)
    end
end
