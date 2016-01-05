" Initialise vim-plug

call plug#begin('~/.vim_plugins')

" Load plugin list for vim-plug to manage.
execute 'source' Dot('plugins.vim')

" Lock in the plugin list.
call plug#end()

filetype plugin indent on
syntax enable
set background=dark
" solarized options 
let g:solarized_termtrans = 1

silent! colorscheme solarized


set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab
set encoding=utf-8
set showmode
set scrolloff=3
set autoindent
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set relativenumber
set wrap
set linebreak
set nolist
set colorcolumn=80
set splitright
set splitbelow

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" set mouse=a

" automatically change window's cwd to file's dir
set autochdir
