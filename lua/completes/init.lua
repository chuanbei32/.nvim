local utils = require("tools.utils")

local completes = {
    "completes.complete"
}

for _, cfg in ipairs(completes) do
    local ok, err = xpcall(require, debug.traceback, cfg)
    if not ok then
        utils.errorL(err)
    end
end