local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '[' .. searchcount.current .. '/' .. searchcount.total .. ']'
end

require('lualine').setup {
        options = {
            icons_enabled = true,
            theme = 'auto', -- based on current vim colorscheme
            -- not a big fan of fancy triangle separators
            theme = 'gruvbox-material',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {},
            always_divide_middle = true,
            globalstatus = true
        },
        sections = {
            -- left
            lualine_a = {'mode'},
            lualine_b = {
              'branch',
              'diff',
              {
                'diagnostics',
                -- Table of diagnostic sources, available sources are:
                --   'nvim_lsp', 'nvim_diagnostic', 'coc', 'ale', 'vim_lsp'.
                -- or a function that returns a table as such:
                --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
                sources = { 'nvim_diagnostic' },

                -- Displays diagnostics for the defined severity types
                sections = { 'error', 'warn', 'info', 'hint' },

                -- diagnostics_color = {
                --   -- Same values as the general color option can be used here.
                --   error = 'DiagnosticError', -- Changes diagnostics' error color.
                --   warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
                --   info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
                --   hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
                -- },
                -- symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
                -- colored = true,           -- Displays diagnostics status in color if set to true.
                update_in_insert = false, -- Update diagnostics in insert mode.
                always_visible = false,   -- Show diagnostics even if there are none.
              }
            },
            lualine_c = {
              {
                'filename',
                file_status = true,      -- Displays file status (readonly status, modified status)
                path = 1,                -- 0: Just the filename
                                        -- 1: Relative path
                                        -- 2: Absolute path
                                        -- 3: Absolute path, with tilde as the home directory

                shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                                        -- for other components. (terrible name, any suggestions?)
                symbols = {
                  modified = '[+]',      -- Text to show when the file is modified.
                  readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                  unnamed = '[No Name]', -- Text to show for unnamed buffers.
                }
              }
            },
            -- right
            lualine_x = {search_result, 'encoding', 'fileformat', 'filetype', 'filesize'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {'filename'},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {}
}