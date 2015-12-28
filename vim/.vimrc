set nocompatible

execute pathogen#infect()
filetype plugin indent on
syntax enable
set background=dark
" solarized options 
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
let g:solarized_termtrans = 1

colorscheme solarized

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
set showmode
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
set noundofile
set wrap
set linebreak
set nolist
set colorcolumn=80

set mouse=a


let mapleader="\<SPACE>"
inoremap jk <ESC>

nnoremap <leader>p :set nopaste!<CR>
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>
noremap <leader>h <c-w>h
noremap <leader>l <c-w>l
noremap <leader>k <c-w>k
noremap <leader>j <c-w>j
noremap <leader>en :!node % 

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Use <leader>l to toggle display of whitespace
nmap <leader>ws :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir
