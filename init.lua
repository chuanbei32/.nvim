local utils = require("utils")

-- pcall(require, "impatient")

local nvim = {"core", "plugin"}

for _, nvim_module in ipairs(nvim) do
    local ok, err = xpcall(require, debug.traceback, nvim_module)
    if not ok then
        local msg = "calling module: " .. nvim_module .. " fail: " .. err
        utils.errorL(msg)
    end
end