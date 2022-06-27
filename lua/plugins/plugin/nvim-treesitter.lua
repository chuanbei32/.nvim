require'nvim-treesitter.configs'.setup {
	ensure_installed = {'php', 'lua', 'html', 'css', 'bash', 'c', 'go', 'json', 'python', 'toml', 'typescript', 'tsx', 'vim', 'yaml', 'vue'},
	sync_install = false,
	ignore_install = {},
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = true,
	},
}