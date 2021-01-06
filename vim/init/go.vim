au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
" let g:go_def_mapping_enabled = 0

" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"

let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

let g:go_auto_sameids = 1

let g:root#patterns = ['.rootvim']
let g:root#auto = 1
let g:root#echo = 0

hi def link     goMethodCall        Function

if exists('g:loaded_root')
    finish
endif
let g:loaded_root = 1

command! Root call root#FindRoot()

autocmd FileType go nmap <Leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" if g:root#auto == 1
    " augroup root
        " au!
        " exe 'autocmd BufEnter ' . g:root#autocmd_patterns . ' :Root'
    " augroup END
" endif

