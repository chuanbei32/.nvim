require('telescope').setup{
	defaults = {
		selection_caret = '> ',
		entry_prefix = '- ',
		multi_icon = '+ '
	},
	pickers = {

	},
	extensions = {
		-- ...
	}
}

vim.cmd([[
	nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
	nnoremap <leader>fgd <cmd>lua require('telescope.builtin').live_grep()<cr>
	nnoremap <leader>fgf <cmd>lua require('telescope.builtin').grep_string()<cr>
	nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
	nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])