set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_python_exec = '/python/shims/python'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_w = 0
let g:syntastic_check_on_wq = 0

nnoremap <leader>sc :SyntasticCheck<CR>
nnoremap <leader>se :Errors<CR>
nnoremap <leader>sn :lnext<CR>



fun! ProspectorProfile()
    if filereadable(getcwd() . '/.prospector.yaml')
        return '.prospector.yaml'
    endif
    return 'base'
endfun

let g:syntastic_python_checkers = ['prospector']
let g:syntastic_python_prospector_args = ' --profile-path $HOME/.prospector --profile ' . ProspectorProfile()
