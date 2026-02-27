return {
  {
    "pwntester/octo.nvim",
    keys = {
      { "<leader>go", "<cmd>Octo<cr>", desc = "Octo: Open" },
      { "<leader>gI", "<cmd>Octo issue list<cr>", desc = "Octo: Issue List" },
      { "<leader>gP", "<cmd>Octo pr list<cr>", desc = "Octo: PR List" },
      {
        "<leader>g?",
        function()
          require("which-key").show({ keys = "<leader>g" })
        end,
        desc = "GitHub: Show Keymaps",
      },
    },
    opts = {
      enable_builtin = true,
      default_to_projects_v2 = true,
      default_merge_method = "squash",
      picker = "telescope",
    },
  },
}
