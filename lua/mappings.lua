require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- map("n", "<leader>e", function()
--   local mf = require "mini.files"
--   local buf_path = vim.api.nvim_buf_get_name(0)
--   if buf_path == "" then
--     mf.open(vim.loop.cwd(), true)
--   else
--     mf.open(buf_path, true)
--   end
-- end, { desc = "Open MiniFiles" })
--

-- map("n", "<leader>e", function()
--   require("oil").open_float()
-- end, { desc = "Open Oil (File Explorer)" })

map("n", "-", function() require("oil").open_float() end, { desc = "Open parent directory" })
