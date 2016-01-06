nnoremap <leader>e :NERDTreeToggle<CR>
" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = 'x'
let g:NERDTreeAutoCenter = 1
let g:NERDTreeShowHidden = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

