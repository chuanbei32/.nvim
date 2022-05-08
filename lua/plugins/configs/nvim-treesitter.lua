require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"php",
		-- "phpdoc",
		"python",
	},
	sync_install = false,
	ignore_install = {},
	highlight = {
		 enable = true,
		 additional_vim_regex_highlighting = true,
	},
	-- indent = {
    -- 	enable = true
  	-- },
})