-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ToggleTerm Keymapping
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- Default to the regular vim "s" behavior
vim.keymap.set("n", "s", "s", { noremap = true, silent = true })
vim.keymap.set("x", "s", "s", { noremap = true, silent = true })
vim.keymap.set("o", "s", "s", { noremap = true, silent = true })

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

vim.keymap.set({ "n", "v" }, "<leader>tt", "<cmd>ToggleTermToggleAll<cr>", { desc = "Terminal: Toggle All" })
vim.keymap.set(
  { "n", "v" },
  "<leader>th",
  "<cmd>ToggleTerm direction=horizontal<cr>",
  { desc = "Terminal: Toggle Horizontal" }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>tgs",
  '<cmd>2TermExec udirection=float cmd="git status"<cr>',
  { desc = "Terminal: Run `git status`" }
)

vim.keymap.set(
  { "n", "v" },
  "<leader>tgp",
  '<cmd>2TermExec udirection=float cmd="git add .; git commit; git push"<cr>',
  { desc = "Terminal: Run `ga .; gc; gp`" }
)
