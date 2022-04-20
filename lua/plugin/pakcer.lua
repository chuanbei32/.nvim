local utils = require("utils")

local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

local function has_packer()
  return vim.fn.empty(vim.fn.glob(install_path)) == 0
end

local function install_packer()
local fn = vim.fn

  utils.infoL("Installing packer to " .. install_path)
  fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end

local function add_packer()
  local packer_call, error_msg = pcall(vim.cmd, [[packadd packer.nvim]])
  if not packer_call then
    utils.errorL(error_msg, "load plugin")
    return
  end
end

local function init_packer()
  require("packer").init({
    display = {
      open_fn = function()
        return require("packer.util").float({
          border = "single",
        })
      end,
    },
    git = {
      clone_timeout = 60,
    },
    auto_clean = true,
    compile_on_sync = true,
    profile = {
      enable = true,
    },
  })
end

local function setup_plugins()
  require("packer").startup(function(use)
    use({
      "wbthomason/packer.nvim",
      event = "VimEnter",
    })

    for _, plugin in ipairs(require("plugin.plugins")) do
      use(plugin)
    end

    require("plugin.plugins_cfg")
  end)
end

-- ======================================================
-- public functions
-- ======================================================
local M = {}

-- load will try to detect the packer installation status.
-- It will automatically install packer to the install_path.
-- Then it will called the setup script to setup all the plugins.
M.init = function()
  if not has_packer() then
    install_packer()
    add_packer()
    setup_plugins()
    vim.cmd(
      "au User PackerComplete echom 'Plugins are installed successfully, please use :qa to restart the neovim'"
    )
    require("packer").sync()
    return
  end

  add_packer()
  init_packer()
  setup_plugins()
end

-- M.load_cfg = function(file)
--   local prefix = "plugins.config."
--   require(prefix .. file)
-- end

return M