-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Remove the line numbers for the terminal when open
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = { "*" },
  callback = function()
    vim.api.nvim_command("set nonumber")
    vim.api.nvim_command("set norelativenumber")
  end,
})
