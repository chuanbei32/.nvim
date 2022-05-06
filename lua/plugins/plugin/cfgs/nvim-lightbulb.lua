require("nvim-lightbulb").setup {}

vim.cmd([[
	autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
]])