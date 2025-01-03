local Terminal = require("toggleterm.terminal").Terminal

local git_terminal = Terminal:new({
  cmd = "lazygit", -- Command to run in the terminal
  direction = "float", -- Use a floating window
  close_on_exit = false, -- Keep the terminal open after exit
  hidden = true, -- Start hidden
})

function _G.toggle_git_terminal()
  git_terminal:toggle()
end

-- Create a Neovim command to manually call the Git terminal
vim.api.nvim_create_user_command("GitTerm", function()
  _G.toggle_git_terminal()
end, { desc = "Toggle the custom Git terminal" })

vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>GitTerm<CR>", { noremap = true, silent = true })

local wk = require("which-key")
wk.add({
  t = { ":GitTerm<CR>", "Toggle Git Terminal" },
}, { prefix = "<leader>" })
