
-- Adapters installed via Mason goes here
require('mason-nvim-dap').setup({
  handlers = {
    function(config)
      -- All sources with no handlers get passed here
      -- Keep original functionality
      require('mason-nvim-dap').default_setup(config)
    end,

  }
})

local dap = require('dap')

-- Config custom adapters
-- These PWA series comes from https://github.com/microsoft/vscode-js-debug
dap.adapters['pwa-node'] = {
  type = 'server',
  host = 'localhost',
  port = '${port}',
  executable = {
    command = 'node',
    args = {
      'D:\\Develop\\js-debug-dap\\src\\dapDebugServer.js',
      '${port}',
    }
  }
}

-- Config language behaviors
dap.configurations.javascript = {
  {
    type = 'pwa-node',
    request = 'launch',
    name = 'Launch NodeJS with vscode-js-debug',
    program = '${file}',
    cwd = '${workspaceFolder}',
  },
}
