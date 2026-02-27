return {
  "mason-org/mason.nvim",
  keys = {
    { "<leader>cM", "<cmd>Mason<cr>", desc = "Mason: Open" },
  },
  opts = {
    ensure_installed = {
      "gopls", -- Go language server
      "golangci-lint", -- Linter
      "goimports", -- Formatter
      "delve", -- Debugger for Go
      "gotests", -- Generate table-driven tests
      "impl", -- Generate interface method stubs
      "gomodifytags", -- Add/remove/modify struct tags
    },
  },
}
