
local ibl = require('ibl')

ibl.setup({
  indent = {
    char = '▏',
  },
  whitespace = {
    remove_blankline_trail = false,
  },
  scope = {
    enabled = true,
    show_exact_scope = true,
  },
  exclude = {
    filetypes = {
      'lspinfo',
      'lazy',
      'mason',
      'checkhealth',
      'help',
      'man',
      'gitcommit',
      'TelescopePrompt',
      'TelescopeResults',
      'dashboard',
    },
  },
})
