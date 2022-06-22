local lsp_installer = require("nvim-lsp-installer")

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
  tsserver = require("lsps.lsp.lsp.script"), -- javascript/typescript
  bashls = require("lsps.lsp.lsp.shell"), -- bash
  sumneko_lua = require("lsps.lsp.lsp.lua"),
  -- phpactor = require("lsps.lsp.lsp.php"),
  intelephense = require("lsps.lsp.lsp.php"),
  -- psalm = require("lsps.lsp.lsp.php"),
  gopls = require("lsps.lsp.lsp.go"),
  pylsp = require("lsps.lsp.lsp.python"),
  cssls = require("lsps.lsp.lsp.css"),
  html = require("lsps.lsp.lsp.html"),
  sql = require("lsps.lsp.lsp.sql"),
  vue = require("lsps.lsp.lsp.vue"),
  vimls = require("lsps.lsp.lsp.vimscript"),
}

-- 自动安装 LanguageServers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      server:install()
    end
  end
end

lsp_installer.on_server_ready(function(server)
  local opts = servers[server.name]
  if opts then
    opts.on_attach = function(_, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      -- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
      -- 绑定快捷键
      require('lsps.lsp.lspKey').maplsp(buf_set_keymap)
    end
    opts.flags = {
      debounce_text_changes = 150,
    }
    server:setup(opts)
  end
end)