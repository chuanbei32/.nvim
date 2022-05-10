-- autocommands

-- 自动重载配置文件
vim.cmd([[ autocmd BufWritePost load.lua source <afile> | PackerCompile ]])

-- 普通模式下用相对行号
vim.cmd([[ autocmd InsertLeave * set relativenumber ]])
-- 普通模式下开启折行
vim.cmd([[ autocmd InsertLeave * :set wrap ]])
vim.cmd([[ autocmd InsertEnter * :set nowrap ]])
-- 插入模式下用绝对行号
vim.cmd([[ autocmd InsertEnter * set norelativenumber number ]])
-- 若插入模式下开启粘贴模式则返回普通模式下关闭粘贴模式
vim.cmd([[ autocmd InsertLeave * :set nopaste ]])
-- 插入模式下关闭折行

-- 如果文件不存在保存文件时自动创建所需的父级目录
-- vim.cmd([[
-- 	function! g:MkNonExDir(file, buf)
-- 		if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
-- 			let dir=fnamemodify(a:file, ':h')
-- 			if !isdirectory(dir)
-- 				call mkdir(dir, 'p')
-- 			endif
-- 		endif
-- 	endfunction
-- 	augroup MkdirOnWrite
-- 		autocmd!
-- 		autocmd BufWritePre * :call g:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
-- 	augroup END
-- ]])

-- 设置空白显示方式
vim.cmd([=[
	augroup Whitespace
		autocmd!
		autocmd ColorScheme * highlight default ExtraWhitespace ctermbg=darkred guibg=darkred
		autocmd BufRead,BufNew * match ExtraWhitespace /\\\@<![\u3000[:space:]]\+$/
		autocmd InsertLeave * match ExtraWhitespace /\\\@<![\u3000[:space:]]\+$/
		autocmd InsertEnter * match ExtraWhitespace /\\\@<![\u3000[:space:]]\+\%#\@<!$/
	augroup END
]=])

-- 设置折叠方式
vim.cmd([[
	augroup fold
		autocmd!
	augroup END
]])