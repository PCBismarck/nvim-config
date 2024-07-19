-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "t" }, "<A-t>", '<CMD>lua require("FTerm").toggle()<CR>', { desc = "toggle FTerm" })
vim.keymap.set({"i"}, "<tab>", "<c-t>")
