# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Setup

See the LazyVim setup guide to learn more about backups of your dotfiles for existing `nvim` installations.

```shell
git clone git@github.com:overtfuture/lazyvim.git $HOME/.config/nvim
```

Open `nvim`

## Tweaks

This repository contains a set of customizations for LazyVim. Here's a summary of the tweaks:

### General

*   **Colorscheme**: The [Dracula](https://github.com/binhtran432k/dracula.nvim) colorscheme is used.

### Go Development

This configuration is heavily focused on Go development.

*   **LSP**: `gopls` is configured with the following settings:
    *   `unusedparams`: Enable analysis for unused parameters.
    *   `staticcheck`: Enable static analysis checks.
*   **Tooling**: The following tools are automatically installed using `mason.nvim`:
    *   `gopls`: Go language server
    *   `golangci-lint`: Linter
    *   `goimports`: Formatter
    *   `delve`: Debugger for Go
*   **Formatting and Linting**: `none-ls.nvim` is configured to use:
    *   `goimports`: Auto-import and format code.
    *   `gofmt`: Go formatter.
    *   `golangci-lint`: Linter.

    > [!NOTE]
    > `none-ls.nvim` is a community-maintained fork of the archived `null-ls.nvim`.

### Plugins

*   **[fzf-lua](https://github.com/ibhagwan/fzf-lua)**: Included for fuzzy finding.
*   **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Included for git decorations.
*   **[octo.nvim](https://github.com/pwntester/octo.nvim)**: Configured for better GitHub integration.
*   **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)**: Configured with specific settings for the terminal.

### Keymaps & Commands

*   **Terminal Navigation**: Custom keymaps for navigating between terminal splits.
*   **Lazygit**: A custom floating terminal for `lazygit` is created and mapped to `<leader>t`.

### Autocmds

*   **Terminal**: Line numbers are removed in terminal buffers.
*   **Floating Windows**: `<Esc>` is mapped to close floating windows.

### Lazy.nvim

*   **Performance**: Some default plugins (`gzip`, `tarPlugin`, `tohtml`, `tutor`, `zipPlugin`) are disabled for better performance.
*   **Shell**: The shell is set to `/opt/homebrew/bin/zsh`.