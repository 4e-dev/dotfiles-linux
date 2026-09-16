-- general
vim.opt.autoread = true
vim.opt.signcolumn = "yes:1"

-- ui
vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.linespace = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 2
vim.opt.wrap = false

-- colors
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.cmd("colorscheme quiet")

-- indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- command-line auto-completion
vim.opt.wildmenu = true

-- mouse / copy-paste
vim.opt.mouse = "a"
vim.opt.clipboard = {}
