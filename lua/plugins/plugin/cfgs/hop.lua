require("hop").setup()

vim.cmd([[
	nnoremap <leader>sw <cmd>HopWord<cr>
	nnoremap <leader>sl <cmd>HopLine<cr>
	nnoremap <leader>sc <cmd>HopChar1<cr>
]])