return {
  "neovim/nvim-lspconfig",
  keys = {
    { "<leader>cgd", vim.lsp.buf.definition, desc = "Code: Definition" },
    { "<leader>cgD", vim.lsp.buf.declaration, desc = "Code: Declaration" },
    { "<leader>cgi", vim.lsp.buf.implementation, desc = "Code: Implementation" },
    { "<leader>cgr", vim.lsp.buf.references, desc = "Code: References" },
    { "<leader>cgt", vim.lsp.buf.type_definition, desc = "Code: Type Definition" },
    {
      "<leader>c?",
      function()
        require("which-key").show({ keys = "<leader>c" })
      end,
      desc = "Code: Show Keymaps",
    },
  },
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            analyses = {
              unusedparams = true, -- Enable analysis for unused parameters
            },
            staticcheck = true, -- Enable static analysis checks
          },
        },
      },
    },
  },
}
