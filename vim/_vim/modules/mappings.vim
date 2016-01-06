let mapleader="\<SPACE>"

" clear search result highlights with enter key
:nnoremap <leader><CR> :noh<CR>

inoremap jk <ESC>
vnoremap . :norm .<CR>

nnoremap <leader>p :set nopaste!<CR>
nnoremap <leader>go :set nonumber<CR>:set norelativenumber<CR>
nnoremap <leader>gn :set nonumber!<CR>
nnoremap <leader>gr :set norelativenumber!<CR>

nnoremap <leader>n :tabn<CR>

" Move between splits
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>k <c-w>k
nnoremap <leader>j <c-w>j

" Execute Scripts
nnoremap <leader>rp :w<CR>:!clear && python %
nnoremap <leader>rn :w<CR>:!clear && node %

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

