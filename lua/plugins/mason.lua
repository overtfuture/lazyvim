return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls", -- Go language server
      "golangci-lint", -- Linter
      "goimports", -- Formatter
      "delve", -- Debugger for Go
    },
  },
}
