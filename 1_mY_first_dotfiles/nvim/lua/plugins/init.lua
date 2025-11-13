return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
  { 
    'IogaMaster/neocord',
    event = "VeryLazy", 
    config = function()
      require "configs.discord"
    end,
  },
  {
    "shellRaining/hlchunk.nvim",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        require "configs.hlchunk"
      
      end,
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require "configs.inline-diagnostics"   
    end,
  },

}
