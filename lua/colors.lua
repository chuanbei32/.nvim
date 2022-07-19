vim.opt.termguicolors = true
vim.opt.background = 'dark'

vim.cmd([[
	colorscheme gruvbox-material
]])

-- indent_blankline
vim.cmd([[
	highlight IndentBlanklineIndent1 guibg=#3c3836 gui=nocombine
	highlight IndentBlanklineIndent2 guibg=#32302f gui=nocombine
]])
