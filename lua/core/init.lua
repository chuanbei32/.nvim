local utils = require("utils")

local core = {"core.options", "core.mappings", "core.commands", "core.autocmd", "core.colors"}

for _, core_module in ipairs(core) do
    local ok, err = xpcall(require, debug.traceback, core_module)
    if not ok then
        local msg = "calling module: " .. core_module .. " fail: " .. err
        utils.errorL(msg)
    end
end