# Neovim Config (LazyVim)

Personal LazyVim config with a Go-first workflow.

## Highlights

- Dracula colorscheme
- Go development defaults (`gopls`, `goimports`, `gofmt`, `golangci-lint`, `delve`)
- Debugging with `nvim-dap`, `nvim-dap-ui`, and `nvim-dap-go`
- Floating `lazygit` terminal via `<leader>t`
- Fuzzy finding with `fzf-lua`
- GitHub workflows with `octo.nvim`

## Keymaps

- `<C-t>`: Toggle terminal
- `<leader>t`: Toggle floating `lazygit`
- `<F5>/<F10>/<F11>/<F12>`: DAP continue/step
- `<leader>db`: Toggle breakpoint
- `<leader>dB`: Conditional breakpoint
- `<leader>dr`: DAP REPL
- `<leader>dl`: Run last debug session
- `<leader>du`: Toggle DAP UI
- `<leader>dt`: Debug current Go test
- `<leader>dT`: Debug last Go test
- `<leader>dm`: Debug Go main package

## Notes

- Plugin versions follow LazyVim defaults (`version = false`) for compatibility.
- Local log files like `.nvimlog` are ignored.
