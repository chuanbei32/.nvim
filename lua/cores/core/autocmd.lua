-- 自动重载配置文件
vim.cmd([[ autocmd BufWritePost load.lua source <afile> | PackerCompile ]])

-- 普通模式下用相对行号
vim.cmd([[ autocmd InsertLeave * set relativenumber ]])
-- 普通模式下开启折行
vim.cmd([[ autocmd InsertLeave * :set wrap ]])
vim.cmd([[ autocmd InsertEnter * :set nowrap ]])
-- 插入模式下用绝对行号
vim.cmd([[ autocmd InsertEnter * set norelativenumber ]])
-- 若插入模式下开启粘贴模式则返回普通模式下关闭粘贴模式
vim.cmd([[ autocmd InsertLeave * :set nopaste ]])
-- 插入模式下关闭折行

vim.cmd([[ autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2 ]])

-- 如果文件不存在保存文件时自动创建所需的父级目录
vim.cmd([[
	function! g:MkNonExDir(file, buf)
		if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
			let dir=fnamemodify(a:file, ':h')
			if !isdirectory(dir)
				call mkdir(dir, 'p')
			endif
		endif
	endfunction
	augroup MkdirOnWrite
		autocmd!
		autocmd BufWritePre * :call g:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
	augroup END
]])

-- 重置 Vimspector UI
vim.cmd([[
    function! g:CustomiseUI()
        call win_gotoid( g:vimspector_session_windows.code )
        " Clear the existing WinBar created by Vimspector
        nunmenu WinBar
        " Cretae our own WinBar
        nnoremenu WinBar.Kill :call vimspector#Stop( { 'interactive': v:true } )<CR>
        nnoremenu WinBar.Continue :call vimspector#Continue()<CR>
        nnoremenu WinBar.Pause :call vimspector#Pause()<CR>
        nnoremenu WinBar.Step\ Over  :call vimspector#StepOver()<CR>
        nnoremenu WinBar.Step\ In :call vimspector#StepInto()<CR>
        nnoremenu WinBar.Step\ Out :call vimspector#StepOut()<CR>
        nnoremenu WinBar.Restart :call vimspector#Restart()<CR>
        nnoremenu WinBar.Exit :call vimspector#Reset()<CR>
    endfunction
	augroup MyVimspectorUICustomistaion
		autocmd!
		autocmd User VimspectorUICreated call g:CustomiseUI()
	augroup END
]])

-- 设置注释所用字符串
vim.cmd([[
	augroup Commentary
		autocmd!
		autocmd FileType php setlocal commentstring=//\ %s

		autocmd FileType c setlocal commentstring=//\ %s
		autocmd FileType h setlocal commentstring=//\ %s

		autocmd FileType lua setlocal commentstring=--\ %s
		autocmd FileType py setlocal commentstring=#\ %s
		autocmd FileType sh setlocal commentstring=#\ %s

		autocmd FileType html setlocal commentstring=<!--\ %s

	augroup END
]])

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

-- 折叠
vim.cmd([[
	augroup fold
		autocmd FileType php setlocal foldmethod=indent
		autocmd FileType py setlocal foldmethod=indent
		autocmd FileType c setlocal foldmethod=indent
	augroup END
]])









