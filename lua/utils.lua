local utils = {}

utils.errorL = function(msg, title)
    vim.notify(msg, vim.log.levels.ERROR, {title = title})
end

utils.infoL = function(msg, title)
    vim.notify(msg, vim.log.levels.INFO, {title = title})
end

utils.fek = function(key, mode)
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode)
end

utils.dump_tb = function(o)
    if type(o) == "table" then
        local s = "{ "
        for k, v in pairs(o) do
            if type(k) ~= "number" then k = '"' .. k .. '"' end
            s = s .. "[" .. k .. "] = " .. utils.dump_tb(v) .. ","
        end
        return s .. "} "
    else
        return tostring(o)
    end
end

return utils
