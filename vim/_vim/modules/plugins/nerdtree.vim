nnoremap <leader>e :NERDTreeToggle<CR>
" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = 'x'
let g:NERDTreeAutoCenter = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.egg-info\/\$', '\.git$', '__pycache__', '\.swp$', '\.pyc$']


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

