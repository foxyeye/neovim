return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = false,
      skip_confirm_for_simple_edits = true,
      view_options = {

        show_hidden = true,
      },
      float = {
        win_options = {
          winblend = 10,
        },
        override = function(conf)
          conf.border = "rounded"
          conf.width = math.floor(vim.o.columns * 0.4)
          conf.height = math.floor(vim.o.lines * 0.4)
          conf.row = math.floor((vim.o.lines - conf.height) / 2)
          conf.col = math.floor((vim.o.columns - conf.width) / 2)
          return conf
        end,
      },
      keymaps = {
        ["<Esc>"] = "actions.close",
        ["q"] = "actions.close",
      },
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
