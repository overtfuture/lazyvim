return {
  {
    "folke/noice.nvim",
    keys = {
      {
        "<leader>nd",
        function()
          require("noice").cmd("dismiss")
        end,
        desc = "Noice: Dismiss",
      },
      {
        "<leader>nh",
        function()
          require("noice").cmd("history")
        end,
        desc = "Noice: History",
      },
      {
        "<leader>nl",
        function()
          require("noice").cmd("last")
        end,
        desc = "Noice: Last Message",
      },
    },
    opts = function(_, opts)
      opts.cmdline = opts.cmdline or {}
      opts.cmdline.format = opts.cmdline.format or {}
      opts.cmdline.format.cmdline = opts.cmdline.format.cmdline or {}

      -- Work around vim query/parser mismatch ("Invalid node type `tab`")
      -- triggered when noice highlights ":" cmdline input with Treesitter.
      opts.cmdline.format.cmdline.lang = false
    end,
  },
}
