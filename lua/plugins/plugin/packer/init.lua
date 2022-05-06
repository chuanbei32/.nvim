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

    for _, plugin in ipairs(require("plugins.plugin.packer.use")) do
      use(plugin)

      local cfg = split(split(plugin, '/')[2], '.')[1]

      local mark = 0
      local path = vim.fn.stdpath("config") .. "/lua/plugins/plugin/cfgs/"
      ::continue::
      if mark == 2 then
        utils.errorL('error')
      end
      local ok, err = xpcall(require, debug.traceback, "plugins.plugin.cfgs." .. cfg)
      -- print(err)
      if not ok then
        pcall(os.execute, "mkdir -p " .. path .. path)
        -- local file = pcall(io.open, path .. cfg .. '.lua', "a")
        local file = io.open(path .. cfg .. '.lua', "a")
        print(path .. cfg .. '.lua')
        -- print(file)
        io.output(file)
        -- io.write("")
        io.close(file)
        -- utils.errorL(err)
        mark = mark + 1
        goto continue
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
