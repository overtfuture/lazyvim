# Neovim Config (LazyVim)

Personal LazyVim config with a Go-first workflow.

## Highlights

- Dracula colorscheme
- Go development defaults (`gopls`, `goimports`, `gofmt`, `golangci-lint`, `delve`)
- Debugging with `nvim-dap`, `nvim-dap-ui`, and `nvim-dap-go`
- Floating `lazygit` and AI provider terminals via `<leader>t`
- Fuzzy finding with `fzf-lua`
- GitHub workflows with `octo.nvim`
- Discoverable command groups with `which-key`

## Keymaps

### Terminal and AI

- `<C-t>`: Toggle terminal
- `<leader>tt`: Toggle terminal
- `<leader>tg`: Toggle floating `lazygit`
- `<leader>tc`: Select and launch AI provider (opencode, codex, or pi)
- `<leader>ac`: Select and launch AI provider from the AI menu

### Debugging

- `<F5>/<F10>/<F11>/<F12>`: DAP continue/step
- `<leader>d?`: Show debug keymaps
- `<leader>dc`: Continue or start debug session
- `<leader>dp`: Pause debug session
- `<leader>do`: Step over
- `<leader>di`: Step into
- `<leader>dO`: Step out
- `<leader>dx`: Terminate debug session
- `<leader>dR`: Restart debug session
- `<leader>db`: Toggle breakpoint
- `<leader>dB`: Conditional breakpoint
- `<leader>dL`: Log point
- `<leader>dC`: Clear breakpoints
- `<leader>de`: Evaluate expression
- `<leader>dh`: Hover debug value
- `<leader>dr`: DAP REPL
- `<leader>dl`: Run last debug session
- `<leader>du`: Toggle DAP UI

### Go Debugging

- `<leader>dg`: Go debug menu
- `<leader>dt`: Debug current Go test
- `<leader>dT`: Debug last Go test
- `<leader>dm`: Debug Go main package
- `<leader>dgt`: Debug current Go test
- `<leader>dgT`: Debug last Go test
- `<leader>dgm`: Debug Go package/main
- `<leader>dgf`: Debug current Go file
- `<leader>dga`: Debug Go package with args

### Find

- `<leader>f?`: Show find keymaps
- `<leader>ff`: Find files
- `<leader>fg`: Live grep
- `<leader>fb`: Find buffers
- `<leader>fr`: Recent files
- `<leader>fc`: Commands
- `<leader>fk`: Keymaps

### Code and LSP

- `<leader>c?`: Show code keymaps
- `<leader>ca`: Code action
- `<leader>cf`: Format
- `<leader>cr`: Rename symbol
- `<leader>cs`: Symbols / outline
- `<leader>cgd`: Go to definition
- `<leader>cgD`: Go to declaration
- `<leader>cgi`: Go to implementation
- `<leader>cgr`: Find references
- `<leader>cgt`: Go to type definition

### Mason and Noice

- `<leader>cM`: Open Mason registry
- `<leader>n?`: Show Noice keymaps
- `<leader>nd`: Dismiss messages
- `<leader>nh`: Message history
- `<leader>nl`: Last message

### Git and GitHub

- `<leader>g?`: Show git/GitHub keymaps
- `<leader>gs`: Git status
- `<leader>gb`: Git blame line
- `<leader>gd`: Git diff this
- `<leader>gh`: Git hunk menu
- `<leader>ghn`: Next hunk
- `<leader>ghN`: Previous hunk
- `<leader>ghp`: Preview hunk inline
- `<leader>ghv`: Preview hunk
- `<leader>ghs`: Stage hunk
- `<leader>ghr`: Reset hunk
- `<leader>ghu`: Undo staged hunk
- `<leader>go`: Open Octo
- `<leader>gI`: List GitHub issues
- `<leader>gP`: List GitHub pull requests

## Notes

- Plugin versions follow LazyVim defaults (`version = false`) for compatibility.
- Local log files like `.nvimlog` are ignored.
