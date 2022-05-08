-- commands

-- 保留当前buffer, 删除其他 buffer
vim.cmd([[ command! BufferOnlys silent! execute "%bd|e#|bd#" ]])
-- 删除当前buffer
vim.cmd([[ command! BufferCurrent silent! execute "bd%" ]])
