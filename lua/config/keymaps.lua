-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- editor
keymap("n", "<leader>q", "<cmd>q<cr>", opts)
keymap("i", "jk", "<esc>", { desc = "jk to escape" })
keymap("n", "<leader>w", "<cmd>w<cr><cmd>lua vim.notify('Saved')<cr>", opts)

-- formatting
keymap({ "n", "v" }, "<leader>F", function()
  LazyVim.format({ force = true })
end, opts)

-- buffers
keymap("n", "<leader>ba", function()
  Snacks.bufdelete.all()
end, { desc = "Delete all buffers" })
