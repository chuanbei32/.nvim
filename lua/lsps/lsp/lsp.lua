local lsp_installer = require("nvim-lsp-installer")

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
  tsserver = require("lsps.lsp.servers.script"), -- javascript/typescript
  bashls = require("lsps.lsp.servers.shell"), -- bash
  sumneko_lua = require("lsps.lsp.servers.lua"),
  -- phpactor = require("lsps.lsp.servers.php"),
  intelephense = require("lsps.lsp.servers.php"),
  -- psalm = require("lsps.lsp.servers.php"),
  gopls = require("lsps.lsp.servers.go"),
  pylsp = require("lsps.lsp.servers.python"),
  cssls = require("lsps.lsp.servers.css"),
  html = require("lsps.lsp.servers.html"),
  sql = require("lsps.lsp.servers.sql"),
  vue = require("lsps.lsp.servers.vue"),
  vimls = require("lsps.lsp.servers.vimscript"),
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