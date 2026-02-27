return {
  {
    "johnseth97/codex.nvim",
    cmd = { "Codex", "CodexToggle", "CodexTerm" },
    keys = {
      { "<leader>ac", "<cmd>CodexToggle<cr>", desc = "AI: Toggle Codex", mode = { "n", "t" } },
      { "<leader>at", "<cmd>Codex<cr>", desc = "AI: Open Codex", mode = { "n", "t" } },
      {
        "<leader>a?",
        function()
          require("which-key").show({ keys = "<leader>a" })
        end,
        desc = "AI: Show Keymaps",
      },
    },
    opts = {
      cmd = { "codex" },
      keymaps = {
        toggle = nil,
        quit = "<C-q>",
      },
      border = "rounded",
      width = 0.9,
      height = 0.9,
      autoinstall = false,
      panel = false,
      use_buffer = false,
    },
    config = function(_, opts)
      require("codex").setup(opts)
      vim.api.nvim_create_user_command("CodexTerm", function()
        vim.cmd("CodexToggle")
      end, { desc = "Toggle floating Codex terminal" })
    end,
  },
}
