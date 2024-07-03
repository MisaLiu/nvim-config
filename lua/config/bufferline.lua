
local bufferline = require('bufferline')

bufferline.setup({
  options = {
    themable = true,
    diagnostics = 'nvim_lsp',
    indicator = {
      icon = '▎',
    },
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'neo-tree',
        align = 'center',
        separator = true,
      },
    },
  },
})
