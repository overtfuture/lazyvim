-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Restore classic Vim motions/search behavior (LazyVim overrides some of these).
vim.keymap.set({ "n", "x" }, "j", "j", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "k", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "<Down>", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("n", "n", "n", { noremap = true, silent = true })
vim.keymap.set("x", "n", "n", { noremap = true, silent = true })
vim.keymap.set("o", "n", "n", { noremap = true, silent = true })
vim.keymap.set("n", "N", "N", { noremap = true, silent = true })
vim.keymap.set("x", "N", "N", { noremap = true, silent = true })
vim.keymap.set("o", "N", "N", { noremap = true, silent = true })
vim.keymap.set({ "i", "n", "s" }, "<Esc>", "<Esc>", { noremap = true, silent = true })

-- Match common expectation: Y yanks the full line (same as yy).
vim.keymap.set("n", "Y", "yy", { noremap = true, silent = true, desc = "Yank line" })
