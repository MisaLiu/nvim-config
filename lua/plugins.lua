-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  -- lazy.nvim configs
  checker = {
    enabled = true,
  },
  -- Color scheme
  {
    'tanvirtin/monokai.nvim',
    config = function()
      require('config.monokai')
    end,
  },
  -- Dev tools manager
  {
    'williamboman/mason.nvim',
    config = function()
      require('config.mason')
    end,
  },
  -- LSP manager
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  -- Vscode-like pictograms
  {
    "onsails/lspkind.nvim",
    event = { "VimEnter" },
  },
  -- Auto-completion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "lspkind.nvim",
      'hrsh7th/cmp-nvim-lsp-signature-help',
      "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
      "hrsh7th/cmp-buffer", -- buffer auto-completion
      "hrsh7th/cmp-path", -- path auto-completion
      "hrsh7th/cmp-cmdline", -- cmdline auto-completion
    },
    config = function()
      require("config.nvim-cmp")
    end,
  },
  -- Code snippet engine
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
  },
  -- DAP manager
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'jay-babu/mason-nvim-dap.nvim',
      'mfussenegger/nvim-dap',
    },
    config = function ()
      require('config.dapui')
    end,
  },
  -- Auto pairing
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function ()
      require('config.nvim-autopairs')
    end,
  },
  -- Commenting tool
  {
    'numToStr/Comment.nvim',
    config = function ()
      require('config.Comment')
    end,
  },
  -- Code highlighting
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = 'UIEnter',
    config = function ()
      require('config.nvim-treesitter')
    end
  },
  -- Rainbow delimiters
  {
    'hiphish/rainbow-delimiters.nvim',
    event = 'UIEnter',
    config = function ()
      require('config.rainbow-delimiters')
    end
  },
  -- Shows indent line
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = 'BufNew',
    config = function ()
      require('config.indent-blankline')
    end,
  },
  -- Breadcrumb for coding
  {
    'Bekaboo/dropbar.nvim',
    event = 'BufNew',
  },
  -- Display buffer context
  {
    'nvim-treesitter/nvim-treesitter-context',
    event = 'UIEnter',
    config = function()
      require('config.nvim-treesitter-context')
    end,
  },
  -- Tabline manager
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'UIEnter',
    config = function()
      require('config.bufferline')
    end,
  },
  {
    'tiagovla/scope.nvim',
    event = 'VeryLazy',
    config = function ()
      require('config.scope')
    end,
  },
  -- Statusline manager
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'arkav/lualine-lsp-progress',
    },
    event = 'VeryLazy',
    config = function()
      require('config.lualine')
    end,
  },
  -- Scroll bar
  {
    'dstein64/nvim-scrollview',
    event = 'UIEnter',
    config = function ()
      require('config.scrollview')
    end,
  },
  -- Notice manager
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('config.noice')
    end,
  },
  -- File tree
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('config.neo-tree')
    end,
  },
  -- File search
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function ()
      require('config.telescope')
    end,
  },
  -- Git status bar
  {
    'lewis6991/gitsigns.nvim',
    event = 'UIEnter',
    config = function()
      require('config.gitsigns')
    end,
  },
  -- Startup screen
  {
    'nvimdev/dashboard-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VimEnter',
    config = function ()
      require('config.dashboard')
    end,
  },
  -- Highlight current window
  {
    'nvim-zh/colorful-winsep.nvim',
    event = { 'WinNew' },
    config = function ()
      require('config.colorful-winsep')
    end,
  },
  -- Code::Stats
  {
    'YannickFricke/codestats.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    event = 'VeryLazy',
    config = function ()
      require('config.codestats-nvim')
    end,
  },
  -- automatically check for plugin updates
  -- checker = { enabled = true },
})
