-- local dap_install = require("dap-install")
-- dap_install.setup({
--   installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
-- })

local dap = require("dap")
local dapui = require("dapui")

require("nvim-dap-virtual-text").setup({
  commented = true,
})

vim.fn.sign_define("DapBreakpoint", {
  text = "🛑",
  texthl = "LspDiagnosticsSignError",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapStopped", {
  text = "",
  texthl = "LspDiagnosticsSignInformation",
  linehl = "DiagnosticUnderlineInfo",
  numhl = "LspDiagnosticsSignInformation",
})

vim.fn.sign_define("DapBreakpointRejected", {
  text = "",
  texthl = "LspDiagnosticsSignHint",
  linehl = "",
  numhl = "",
})

dapui.setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "o", "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- sidebar = {
  --   -- You can change the order of elements in the sidebar
  --   elements = {
  --     -- Provide as ID strings or tables with "id" and "size" keys
  --     {
  --       id = "scopes",
  --       size = 0.25, -- Can be float or integer > 1
  --     },
  --     { id = "breakpoints", size = 0.25 },
  --     { id = "stacks", size = 0.25 },
  --     { id = "watches", size = 00.25 },
  --   },
  --   size = 40,
  --   position = "left", -- Can be "left", "right", "top", "bottom"
  -- },
  -- tray = {
  --   elements = { "repl" },
  --   size = 10,
  --   position = "bottom", -- Can be "left", "right", "top", "bottom"
  -- },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
  },
}) -- use default

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

local M = {}
function M.setup()
  local dap = require("dap")
  dap.configurations.lua = {
    {
      type = "nlua",
      request = "attach",
      name = "Attach to running Neovim instance",
      host = function()
        local value = vim.fn.input("Host [127.0.0.1]: ")
        if value ~= "" then
          return value
        end
        return "127.0.0.1"
      end,
      port = function()
        local val = tonumber(vim.fn.input("Port: ", "54321"))
        assert(val, "Please provide a port number")
        return val
      end,
    },
  }

  dap.adapters.nlua = function(callback, config)
    callback({ type = "server", host = config.host, port = config.port })
  end
end
function M.open()
  require("osv").run_this()
end

M.setup()

require("daps.dapKey")