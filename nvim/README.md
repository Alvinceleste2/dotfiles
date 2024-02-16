# Nvim configuration written in Lua

## Main dependencies (Arch packages)
- clang
- texlive-bin
- texlive-binextra
- yarn
- nodejs
- qpdfview

## Installation

Run `:PackerSync` and everything should be done.

## Coc plugins
Coc is used for code completing. It has many plugins for differnt languages. The ones I use are:
- coc-snippets
- coc-html
- coc-emmet
- coc-tsserver
- coc-rls
- coc-python
- coc-json
- coc-java
- coc-css
- coc-cmake
- coc-clangd
- coc-kotlin
- coc-sql
- coc-texlab

 To install them run `:Coc-Install <coc-xxx> <coc-xxx> ...`.

## Directories structure

```
.
├── README.md
├── coc-settings.json
├── init.lua
└── lua
    ├── clang-format.lua
    ├── general_config.lua
    ├── keymaps.lua
    ├── latex-indent.lua
    ├── plugin_config
    │   ├── coc.lua
    │   ├── gruvbox.lua
    │   ├── init.lua
    │   ├── lexima.lua
    │   ├── lualine.lua
    │   ├── markdown-preview.lua
    │   ├── nvim-gdb.lua
    │   ├── nvim-tree.lua
    │   ├── nvim-treesitter.lua
    │   ├── startup.lua
    │   ├── telescope-file-browser.lua
    │   ├── telescope.lua
    │   └── vimtex.lua
    └── plugins.lua
```

## How to install more plugins

You can use [packer](https://github.com/wbthomason/packer.nvim) for installing plugins. Just put `use author/repository` in `lua/plugins.lua` after the others. Then run `:PackerInstall`.

If it needs configuration, put it in `lua/plugin_config/name-of-plugin.lua`. Then in `lua/plugin_config/init.lua` add in a new line `require('plugin_config.name-of-plugin')`.
