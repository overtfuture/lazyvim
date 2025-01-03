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

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*", -- Apply to all filetypes
  callback = function()
    if vim.api.nvim_win_get_config(0).relative ~= "" then
      -- Map <Esc> to close the floating window
      vim.keymap.set("n", "<Esc>", "<cmd>close<CR>", { buffer = true, silent = true })
    end
  end,
})
