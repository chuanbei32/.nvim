require('bufferline').setup {
  options = {
  	mode = "buffers", -- set to "tabs" to only show tabpages instead
  	numbers = function(opts)
	  	-- For ⁸·₂
		return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
		-- For 8|²
		-- return string.format('%s|%s.)', opts.id, opts.raise(opts.ordinal))
	end,
    tab_size = 14,
	diagnostics = false,
	diagnostics_update_in_insert = true,
	diagnostics_indicator = function(count, level, diagnostics_dict, context)
		local icon = level:match("error") and " " or " "
		return " " .. icon .. count
	end,
    enforce_regular_tabs = true,
	offsets = {
		{
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			text_align = "left"
		}
	},
	separator_style = 'thick',
  }
}


