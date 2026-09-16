call plug#begin()
" reminder:
    " PlugInstall
    " PlugUpdate
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
call plug#end()

let mapleader = " "
set nocompatible
set modelines=0 " security: dont run random vim commands
set wrap
set textwidth=100
set encoding=utf-8 " encoding

" show line numbers
set number
set relativenumber
set ruler

" indentation
set expandtab      " convert tabs (\t) to spaces
set tabstop=4      " \t will appear as 4 spaces wide
set softtabstop=4  " tab in insert mode is the same as 4 spaces
set shiftwidth=4   " number of spaces when using shifting (<, >)
set shiftround     " round indents to multiple of 'shiftwidth'

" auto-indentation and formatting
set autoindent                      " copy indent from current line to new line
set cindent                         " similar to smartindent (c-like indentation)
set cinoptions=l1,g0,t0,(0,W4,:4    " defines how cindent behaves
set formatoptions-="cro"

" cursor
set scrolloff=4
set cursorline

set hidden " allow hidden buffers
set ttyfast " rendering
set laststatus=2 " status bar

" last line
set showmode
set showcmd

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set noshowmatch

set wildmenu " command-line completion

" colorscheme
set background=dark
colorscheme dogrun

" mouse
set mouse=a

" clipboard
set clipboard=unnamed,unnamedplus " copy to system clipboard

" copy workaround for wayland
xnoremap "+y y:call system("wl-copy", @")<CR>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<CR>p

" netrw hotkey
nnoremap <leader>ef :Ex<CR>

" removes trailing white spaces
nnoremap <leader>ws :%s/\s\+$//e<CR>:noh<CR>

" netrw settings
let g:netrw_banner = 0
let g:netrw_list_hide = '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$'
let g:netrw_bufsettings = 'noma nomod nobl nowrap ro'
