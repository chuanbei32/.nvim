local M = {}

function M.setup()
	local dap = require("dap")
  dap.configurations.php = {
    {
      type = 'php',
      request = 'launch',
      name = 'Listen for Xdebug',
      port = 9000
    }
  }

	dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/path/to/vscode-php-debug/out/phpDebug.js' }
  }

end

return M