
let g:airline#extensions#tabline#enabled = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6

nmap <leader><Tab> <Plug>AirlineSelectNextTab
nmap <leader><S-Tab> <Plug>AirlineSelectPrevTab

let g:airline_theme='quantum'
let g:airline_powerline_fonts = 1
let g:airline_section_c = '%{getcwd()}' " in section B of the status line display the CWD 


