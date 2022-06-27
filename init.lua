require("impatient").enable_profile()

local utils = require("tools.utils")

local cfgs = {
    "options",
    'commands',
    'autocommands',
    'mappings',
    "plugins",
    "lsps",
    'colors',
}

for _, cfg in ipairs(cfgs) do
    local ok, err = xpcall(require, debug.traceback, cfg)
    if not ok then
        utils.errorL(err)
    end
end
