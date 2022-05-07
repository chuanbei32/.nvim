require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}

vim.cmd([[
	let g:indent_blankline_filetype_exclude = ['help', 'startify', 'packer', 'NvimTree']
]])