return {
  "lewis6991/gitsigns.nvim",
  keys = {
    { "<leader>gs", "<cmd>FzfLua git_status<cr>", desc = "Git: Status" },
    {
      "<leader>gb",
      function()
        require("gitsigns").blame_line({ full = true })
      end,
      desc = "Git: Blame Line",
    },
    {
      "<leader>gd",
      function()
        require("gitsigns").diffthis()
      end,
      desc = "Git: Diff This",
    },
    {
      "<leader>ghn",
      function()
        require("gitsigns").nav_hunk("next")
      end,
      desc = "Git Hunks: Next",
    },
    {
      "<leader>ghN",
      function()
        require("gitsigns").nav_hunk("prev")
      end,
      desc = "Git Hunks: Previous",
    },
    {
      "<leader>ghv",
      function()
        require("gitsigns").preview_hunk()
      end,
      desc = "Git Hunks: Preview",
    },
    {
      "<leader>g?",
      function()
        require("which-key").show({ keys = "<leader>g" })
      end,
      desc = "Git: Show Keymaps",
    },
  },
}
