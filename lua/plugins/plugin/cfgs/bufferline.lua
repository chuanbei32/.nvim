require('bufferline').setup {
  options = {
  	numbers = function(opts)
		return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
	end,
    tab_size = 14,
	diagnostics = "nvim_lsp",
    enforce_regular_tabs = true,
	offsets = {
		{
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			text_align = "left"
		}
	}
  }
}
