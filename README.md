# nvim-config

neovim configuration

## Requirements

* (aur) nvim-packer-git
* nodejs
* npm
* universal-ctags
* clang
* stylua
* autopep8
* tree-sitter-cli

## Installation

```
yay -S neovim nodejs npm universal-ctags clang stylua autopep8 nvim-packer-git
git clone https://github.com/FrozenArcher/nvim-config.git ~/.config/nvim
```

Then run `nvim` to enter neovim. **Skip the errors**, and enter `:PackerUpdate` to install plugins.

## Main components

* plugin manager: packer.nvim
* LSP: completion: coc.nvim
* colorscheme: neon
* file explorer: nvim-tree
* tabline: bufferline
* statusline: lualine
