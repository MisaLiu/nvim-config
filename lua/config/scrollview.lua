
local scrollview = require('scrollview')

scrollview.setup({
  current_only = true,
  signs_on_startup = { 'diagnostics', 'marks', 'search' },
  diagnostics_error_symbol = ' ',
  diagnostics_warn_symbol = ' ',
  diagnostics_info_symbol = ' ',
  diagnostics_hint_symbol = '󰌵 ',
})
