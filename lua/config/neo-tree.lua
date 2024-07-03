
vim.fn.sign_define("DiagnosticSignError",
  {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
  {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
  {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
  {text = "󰌵", texthl = "DiagnosticSignHint"})

local neotree = require('neo-tree')

neotree.setup({
  close_if_last_window = false,
  window = {
    width = 34,
  },
  source_selector = {
    winbar = true,
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false,
    },
    follow_current_file = {
      enabled = true,
    },
  },
})

vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
