lcoal php = {}

php.adapters = {
  type = 'executable',
  command = 'node',
  args = { '/path/to/vscode-php-debug/out/phpDebug.js' }
}

php.configurations = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9000
  }
}

return php