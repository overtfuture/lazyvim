return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find: Files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Find: Live Grep" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Find: Buffers" },
    { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Find: Recent Files" },
    { "<leader>fc", "<cmd>FzfLua commands<cr>", desc = "Find: Commands" },
    { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Find: Keymaps" },
    {
      "<leader>f?",
      function()
        require("which-key").show({ keys = "<leader>f" })
      end,
      desc = "Find: Show Keymaps",
    },
  },
  opts = {},
}
