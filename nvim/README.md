# neovim

## requirements
* neovim (latest)
* (tree-sitter-cli)[https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md]

## installation
`git clone https://github.com/4e-dev/dotfiles-linux.git`
lazy.nvim will automatically bootstrap itself and install the configured plugins.

## file structure

├── init.lua                # loads lua files
├── lazy-lock.json          # plugin versions
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── netrw.lua
│   │   └── settings.lua
│   ├── lazy                # plugin manager
│   │   └── lazy.lua
│   └── plugins
│       ├── blink.lua
│       ├── lsp.lua
│       ├── mason.lua
│       ├── navic.lua
│       ├── telescope.lua
│       └── treesitter.lua
└── README.md

## plugins
* blink.lua --- autocompletion engine w/ lsp suggestions
* lsp.lua --- manages lsps
* mason.lua --- package manager for lsps/linters
* navic.lua --- displays code context in the winbar
* telescope.lua --- fuzzy finder for files/buffers/symbols in a pop-up window
* treesitter.lua --- syntax tree for better highlighting/code-aware features

## keymap cheatsheet
* <leader>ef --- opens netrw file explorer
* <leader>ws --- strips trailing whitespace
