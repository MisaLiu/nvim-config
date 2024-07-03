
local lualine = require('lualine')

lualine.setup({
  options = {
    theme = 'material',
    globalstatus = true,
  },
  sections = {
    lualine_c = { 'filename', 'lsp_progress' },
  },
})
