return {
  {
    "akinsho/toggleterm.nvim",
    keys = {
      { "<leader>ac", "<cmd>ClaudeTerm<cr>", desc = "AI: Toggle Claude", mode = { "n", "t" } },
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
