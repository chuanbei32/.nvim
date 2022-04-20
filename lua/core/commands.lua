local alias = function(cmd, repl, force)
    local command
    if force then
        command = "command! " .. cmd .. " " .. repl
    else
        command = "command " .. cmd .. " " .. repl
    end
    local ok, err = pcall(vim.cmd, command)
    if not ok then
        vim.notify("setting cmd: " .. cmd .. " " .. err, vim.log.levels.ERROR, {title = "command"})
    end
end

-- 保留当前buffer, 删除其他 buffer
alias("BufferOnlys", [[ silent! execute "%bd|e#|bd#" ]], true)
-- 删除当前buffer
alias("BufferCurrent", [[ silent! execute "bd%" ]], true)

