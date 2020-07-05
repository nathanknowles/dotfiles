" Keybindings
" -----------
nnoremap <SPACE> <Nop>
let mapleader = ","
map <Space> <Leader>
let maplocalleader = ";"

" Make Y consistent with D and C
map Y           y$

" Auto-indent whole file
map <silent> <F8> mzgg=G'z :delmarks z<CR>:echo "Reformatted."<CR>


" Find File/Buffer/Tag
map <leader>F   :CtrlPClearCache<CR>:CtrlP<CR>
map <Leader>f   :CtrlP<CR>
map <Leader>b   :CtrlPBuffer<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" hassle free copy/paste
nmap <F1> :.w !pbcopy<CR><CR>
vmap <F1> :w !pbcopy<CR><CR>
nmap <F2> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F2> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

nmap <F12> :w !ctags -R * --exclude=.git --exclude=node_modules<CR>


" Wrap Args
nnoremap <silent> <leader>z :ArgWrap<CR>

" clear search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisoual()<CR>

  " Bubble single lines
nmap { [e
nmap } ]e
vmap { [egv
" Bubble multiple lines
vmap } ]egv

" Run tests
map <Leader>t :VroomRunNearestTest<CR>
map <Leader>T :VroomRunTestFile<CR>

" Horizontal block movement
vmap > >gv
vmap < <gv

" function! InsertTabWrapper()
    " let col = col('.') - 1
    " if !col || getline('.')[col - 1] !~ '\k'
        " return "\<tab>"
    " else
        " return "\<c-p>"
    " endif
" endfunction

"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
