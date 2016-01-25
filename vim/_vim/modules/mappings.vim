let mapleader="\<SPACE>"

" Toggle spellchecking
:nnoremap <leader>s :setlocal spell! spelllang=en_us<CR>

" Shortcuts for easy search and replace
nnoremap ;; :%s:::gi<left><left><left><left>
nnoremap ;' :%s:::gci<left><left><left><left><left>

" clear search result highlights with enter key
:nnoremap <leader><CR> :noh<CR>

:nnoremap <leader>sn :lnext<CR>

inoremap jk <ESC>
vnoremap . :norm .<CR>

nnoremap <leader>p :set nopaste!<CR>
nnoremap <leader>go :set nonumber<CR>:set norelativenumber<CR>
nnoremap <leader>gn :set nonumber!<CR>
nnoremap <leader>gr :set norelativenumber!<CR>

nnoremap <leader>n :tabn<CR>

" Resize splits with arrow keys
nnoremap <Up> :res +3<CR>
nnoremap <Down> :res -3 <CR>
nnoremap <Left> :vertical res +3<CR>
nnoremap <Right> :vertical res -3<CR>

" Move between splits
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>k <c-w>k
nnoremap <leader>j <c-w>j

" Execute Scripts
nnoremap <leader>rp :w<CR>:!clear && python %<space>
nnoremap <leader>rtp :w<CR>:!clear && py.test -v %<space>
nnoremap <leader>rn :w<CR>:!clear && node %<space>
nnoremap <leader>ri :w<CR>:!clear && ./%<space>


" Toggle display of whitespace
" nnoremap <leader>ws :set list!<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>fq :q!<CR>
nnoremap <leader>t :TagbarToggle<CR>

" Print out the current mappings.
function! s:show_mappings()
  let path = Dot('mappings.sh')
  exec '!' . path
endfunction

nnoremap <leader><leader> :call <SID>show_mappings()<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" Quick session bindings.
nnoremap <leader>sw :mksession! .quicksave.vim<CR>:echo "Session saved."<CR>
nnoremap <leader>sr :source .quicksave.vim<CR>:echo "Session loaded."<CR>

