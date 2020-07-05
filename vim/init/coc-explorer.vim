let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'b': {
\     'file-child-template': '[git | 1] [selection | clip | 1] [indent][icon | 1] [filename growRight 1 omitCenter 1][size]',
\   }
\ }

" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>
" File tree browser
map <space>b :CocCommand explorer --preset simplify<CR>
nmap <space>n :CocCommand explorer --preset b<CR>

" List all presets
nmap <space>el :CocList explPresets
