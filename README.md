# nvim config

A simple personal Neovim configuration built on top of [lazy.nvim](https://github.com/folke/lazy.nvim).

## Install

> [!NOTE]
> Requires [Neovim](https://neovim.io/) >= 0.9 and `git`.

Back up your existing config if you have one:

```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone directly into the Neovim config directory:

```sh
git clone git@github.com:Gerardo02/nvim.config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

Open Neovim — lazy.nvim will bootstrap itself and install all plugins automatically on first launch.

## What's included

| Category | Plugin(s) |
|---|---|
| Plugin manager | [lazy.nvim](https://github.com/folke/lazy.nvim) |
| Colorscheme | [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) (dragon variant, transparent) |
| LSP | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [Mason](https://github.com/mason-org/mason.nvim) |
| Autocompletion | via `autocomplete.lua` |
| Formatting | via `autoformat.lua` |
| Syntax highlighting | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) |
| Fuzzy finder | [Telescope](https://github.com/nvim-telescope/telescope.nvim) |
| Git signs | [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) |
| File manager | [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) |
| Autopairs | [nvim-autopairs](https://github.com/windwp/nvim-autopairs) |
| Key hints | [which-key.nvim](https://github.com/folke/which-key.nvim) |
| Tmux navigation | [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) |
| Go | [go.nvim](https://github.com/ray-x/go.nvim) |

## Uninstall

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```
