return {
  {
    "akinsho/toggleterm.nvim",
    keys = {
      { "<leader>ac", "<cmd>CodexTerm<cr>", desc = "AI: Toggle Codex", mode = { "n", "t" } },
      {
        "<leader>a?",
        function()
          require("which-key").show({ keys = "<leader>a" })
        end,
        desc = "AI: Show Keymaps",
      },
    },
  },
}
