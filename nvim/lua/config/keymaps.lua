-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set(
--   "n",
--   "<leader>sx",
--   require("telescope.builtin").resume,
--   { noremap = true, silent = true, desc = "Resume Search" }
-- )

-- move lines up and down
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
