local git_terminal

return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<C-t>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal", mode = { "n", "t" } },
      { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Terminal: Toggle" },
      { "<leader>tg", "<cmd>LazyGit<cr>", desc = "Terminal: LazyGit" },
      { "<leader>tc", "<cmd>CodexTerm<cr>", desc = "Terminal: Codex" },
      {
        "<leader>t?",
        function()
          require("which-key").show({ keys = "<leader>t" })
        end,
        desc = "Terminal: Show Keymaps",
      },
    },
    cmd = { "ToggleTerm", "TermExec", "LazyGit" },
    init = function()
      vim.api.nvim_create_user_command("LazyGit", function()
        local Terminal = require("toggleterm.terminal").Terminal
        git_terminal = git_terminal
          or Terminal:new({
            cmd = "lazygit",
            direction = "float",
            close_on_exit = false,
            hidden = true,
          })
        git_terminal:toggle()
      end, { desc = "Toggle floating lazygit terminal" })
    end,
    opts = {
      size = 12,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
      direction = "horizontal",
      on_open = function(term)
        local opts = { buffer = term.bufnr }
        vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
      end,
    },
  },
}
