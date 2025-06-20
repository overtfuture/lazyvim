-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ToggleTerm Keymapping
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
end

-- Default to the regular vim "s" behavior
vim.keymap.set("n", "s", "s", { noremap = true, silent = true })
vim.keymap.set("x", "s", "s", { noremap = true, silent = true })
vim.keymap.set("o", "s", "s", { noremap = true, silent = true })

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
