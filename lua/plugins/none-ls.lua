return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")

    -- Ensure opts.sources is a valid table
    opts.sources = opts.sources or {}

    -- Extend the sources
    vim.list_extend(opts.sources, {
      null_ls.builtins.formatting.goimports, -- Auto-import and format code
      null_ls.builtins.formatting.gofmt, -- Go formatter
      null_ls.builtins.diagnostics.golangci_lint, -- Linter
    })
  end,
}
