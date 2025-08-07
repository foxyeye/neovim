-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 插入模式下 ctrl-f 和 ctrl-b
vim.keymap.set("i", "<C-f>", "<Right>", { desc = "Move right in insert mode" })
vim.keymap.set("i", "<C-b>", "<Left>", { desc = "Move left in insert mode" })
