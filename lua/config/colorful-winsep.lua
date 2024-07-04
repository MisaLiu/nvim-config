
local winsep = require('colorful-winsep');

winsep.setup({
  no_exec_files = {
    'lazy',
    'mason',
    'noice',
    'lualine',
    'bufferline',
    'TelescopePrompt',
  },
  smooth = true,
  exponential_smoothing = true,
})
