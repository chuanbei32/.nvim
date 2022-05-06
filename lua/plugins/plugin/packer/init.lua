local utils = require("tools.utils")

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

    local function split(str,reps)
        local resultStrList = {}
        string.gsub(str,'[^'..reps..']+',function (w)
            table.insert(resultStrList,w)
        end)
        return resultStrList
    end

    local io = require("io")

    for _, plugin in ipairs(require("plugins.plugin.packer.use")) do
      use(plugin)

      local cfg = split(plugin, '/')[2]

      local ii = 0
      ::isrequire::
      local require_name = "plugins/plugin/cfgs." .. cfg
      local ok, err = xpcall(require, debug.traceback, require_name)
      if not ok then
        -- 以附加的方式打开只写文件
        file = io.open(require_name, "a")
        -- 设置默认输出文件为 test.lua
        io.output(file)
        -- 在文件最后一行添加 Lua 注释
        io.write("-- ..")
        -- 关闭打开的文件
        io.close(file)
        -- utils.errorL(err)
        goto isrequire
      end
    end
  end)
end

if not has_packer() then
  install_packer()
  add_packer()
  setup_plugins()
  vim.cmd("au User PackerComplete echom 'Plugins are installed successfully, please use :qa to restart the neovim'")
  require("packer").sync()
  return
else
  add_packer()
  init_packer()
  setup_plugins()
end
