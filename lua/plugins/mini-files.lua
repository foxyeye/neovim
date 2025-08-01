return {
  {
    "echasnovski/mini.files",
    enabled = false,
    version = false,
    -- lazy = false,

    config = function()
      require("mini.files").setup()
    end,
  },
}
