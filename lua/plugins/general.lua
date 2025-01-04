return {
  -- Configure LazyVim to load dracula
  {
    "binhtran432k/dracula.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
