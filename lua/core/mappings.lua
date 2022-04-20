local function map(mode, lhs, rhs, opts)
  local options = {
    noremap = true,
    silent = true,
    expr = false,
  }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  local stat, error = pcall(vim.api.nvim_set_keymap, mode, lhs, rhs, options)
  if not stat then
    vim.notify(error, vim.log.levels.ERROR, {
      title = "keymap",
    })
  end
end

local function nmap(lhs, rhs, opts)
  map("n", lhs, rhs, opts)
end

local function xmap(lhs, rhs, opts)
  map("x", lhs, rhs, opts)
end

local function vmap(lhs, rhs, opts)
  map("v", lhs, rhs, opts)
end

vim.g.mapleader = "\\"

nmap(";w", ":w<CR>")

nmap('<tab>', 'V>')
vmap('<tab>', '<gv')

nmap('<s-tab>', 'V<')
vmap('<tab>', '>gv')



