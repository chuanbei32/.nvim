local function map(mode, lhs, rhs, opts)
  local options = {
    noremap = true,
    silent = true,
    expr = false,
  }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  local ok, err = pcall(vim.api.nvim_set_keymap, mode, lhs, rhs, options)
  if not ok then
    vim.notify(err)
  end
end

vim.g.mapleader = "\\"

map('n', '<tab>', 'V>', 'noremap')
map('v', '<tab>', '<gv', 'noremap')

map('n', '<s-tab>', 'V<', 'noremap')
map('v', '<tab>', '>gv', 'noremap')



