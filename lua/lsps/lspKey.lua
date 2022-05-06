local keys = {}

local opt = {
	noremap = true
}

keys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opt)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opt)
  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opt)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<cr>', opt)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opt)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opt)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opt)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<cr>', opt)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opt)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<cr>', opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<cr>', opt)
  -- leader + =
  mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<cr>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opt)
end

return keys