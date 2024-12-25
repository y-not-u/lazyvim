-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>q", "<cmd>q<cr>", opts)
keymap("i", "jk", "<esc>", opts)
keymap({ "n", "v" }, "<leader>F", function()
  LazyVim.format({ force = true })
end, opts)
keymap("n", "<leader>w", "<cmd>w<cr><cmd>lua vim.notify('Saved')<cr>", opts)
