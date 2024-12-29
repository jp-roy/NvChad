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

  {
    'vim-test/vim-test',
    cmd = { 'TestNearest', 'TestFile', 'TestSuite', 'TestLast', 'TestVisit' },
    config = function ()
      vim.g['test#strategy'] = 'neovim'
      vim.g['test#neovim#term_position'] = 'below 20'
      vim.g["test#neovim#term_reuse"] = 1
    end
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy", -- Load plugin lazily to optimize startup time
    config = function()
      require('gitsigns').setup {
        current_line_blame = true, -- Enable blame on the cursor line
        current_line_blame_opts = {
          virt_text = true, -- Display as virtual text
          virt_text_pos = 'eol', -- Show at the end of the line
        },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>', -- Format blame info
      }
    end
  },

  {
    'ap/vim-css-color',
  },

  {
    'github/copilot.vim',
    event = "InsertEnter",
  },

  {
    'itchyny/vim-cursorword',
    lazy = true,
    event = "VeryLazy",
  },

  {
    'tpope/vim-fugitive',
    lazy = true,
    event = "VeryLazy",
  },

  {
    'tpope/vim-rails',
    lazy = true,
    event = "VeryLazy",
  },

  {
    'tpope/vim-repeat',
    lazy = true,
    event = "VeryLazy",
  },

  {
    'tpope/vim-surround',
    lazy = true,
    event = "VeryLazy",
  },

  {
    'AndrewRadev/splitjoin.vim',
    lazy = true,
    event = "VeryLazy",
  },

  {
    "https://git.sr.ht/~swaits/zellij-nav.nvim",
    lazy = true,
    event = "VeryLazy",
    keys = {
      { "<c-h>", "<cmd>ZellijNavigateLeftTab<cr>",  { silent = true, desc = "navigate left or tab"  } },
      { "<c-j>", "<cmd>ZellijNavigateDown<cr>",  { silent = true, desc = "navigate down"  } },
      { "<c-k>", "<cmd>ZellijNavigateUp<cr>",    { silent = true, desc = "navigate up"    } },
      { "<c-l>", "<cmd>ZellijNavigateRightTab<cr>", { silent = true, desc = "navigate right or tab" } },
    },
    opts = {},
  }

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
