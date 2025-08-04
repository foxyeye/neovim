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
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<Esc>"] = require("telescope.actions").close,
      }

      -- or
      -- table.insert(conf.defaults.mappings.i, your table)

      return conf
    end,
  },
  -- { "nvim-tree/nvim-tree.lua", enabled = false },
  --
  -- {
  --   "hrsh7th/nvim-cmp",
  --
  --   opts = function(_, opts)
  --     local cmp = require "cmp"
  --
  --     opts.mapping = cmp.mapping.preset.insert {
  --       ["<C-j>"] = cmp.mapping.select_next_item(),
  --       ["<C-k>"] = cmp.mapping.select_prev_item(),
  --     }
  --
  --     return opts
  --   end,
  -- },
}
