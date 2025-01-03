return {
  "neovim/nvim-lspconfig",
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
