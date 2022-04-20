vim.cmd([[ autocmd BufWritePost load.lua source <afile> | PackerCompile ]])

vim.cmd([[ autocmd InsertEnter * set norelativenumber ]])

-- 普通模式下用相对行号
vim.cmd([[ autocmd InsertLeave * set relativenumber ]])
-- 普通模式下开启折行
vim.cmd([[ autocmd InsertLeave * :set wrap ]])
-- 若插入模式下开启粘贴模式则返回普通模式下关闭粘贴模式
vim.cmd([[ autocmd InsertLeave * :set nopaste ]])

-- 插入模式下用绝对行号
vim.cmd([[ autocmd InsertEnter * :set norelativenumber number ]])
-- 插入模式下关闭折行
vim.cmd([[ autocmd InsertEnter * :set nowrap ]])





