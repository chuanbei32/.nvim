-- local util = require("lspconfig.util")

-- return {
--   default_config = {
--     cmd = { 'phpactor', 'language-server' },
--     filetypes = { 'php' },
--     root_dir = function(pattern)
--       local cwd = vim.loop.cwd()
--       local root = util.root_pattern('composer.json', '.git')(pattern)

--       -- prefer cwd if root is a descendant
--       return util.path.is_descendant(cwd, root) and cwd or root
--     end,
--   },
--   docs = {
--     description = [[
-- https://github.com/phpactor/phpactor
-- Installation: https://phpactor.readthedocs.io/en/master/usage/standalone.html#global-installation
-- ]],
--     default_config = {
--       cmd = { 'phpactor', 'language-server' },
--       root_dir = [[root_pattern("composer.json", ".git")]],
--     },
--   },
-- }


local util = require 'lspconfig.util'

local bin_name = 'intelephense'
local cmd = { bin_name, '--stdio' }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name, '--stdio' }
end

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'php' },
    root_dir = function(pattern)
      local cwd = vim.loop.cwd()
      local root = util.root_pattern('composer.json', '.git')(pattern)

      -- prefer cwd if root is a descendant
      return util.path.is_descendant(cwd, root) and cwd or root
    end,
  },
  docs = {
    description = [[
https://intelephense.com/
`intelephense` can be installed via `npm`:
```sh
npm install -g intelephense
```
]],
    default_config = {
      root_dir = [[root_pattern("composer.json", ".git")]],
      init_options = [[{
        storagePath = Optional absolute path to storage dir. Defaults to os.tmpdir().
        globalStoragePath = Optional absolute path to a global storage dir. Defaults to os.homedir().
        licenceKey = Optional licence key or absolute path to a text file containing the licence key.
        clearCache = Optional flag to clear server state. State can also be cleared by deleting {storagePath}/intelephense
        -- See https://github.com/bmewburn/intelephense-docs/blob/master/installation.md#initialisation-options
      }]],
      settings = [[{
        intelephense = {
          files = {
            maxSize = 1000000;
          };
        };
        -- See https://github.com/bmewburn/intelephense-docs
      }]],
    },
  },
}


-- local util = require 'lspconfig.util'

-- local bin_name = 'psalm-language-server'

-- if vim.fn.has 'win32' == 1 then
--   bin_name = bin_name .. '.bat'
-- end

-- return {
--   default_config = {
--     cmd = { bin_name },
--     filetypes = { 'php' },
--     root_dir = util.root_pattern('psalm.xml', 'psalm.xml.dist'),
--   },
--   docs = {
--     description = [[
-- https://github.com/vimeo/psalm
-- Can be installed with composer.
-- ```sh
-- composer global require vimeo/psalm
-- ```
-- ]],
--     default_config = {
--       cmd = { 'psalm-language-server' },
--       root_dir = [[root_pattern("psalm.xml", "psalm.xml.dist")]],
--     },
--   },
-- }