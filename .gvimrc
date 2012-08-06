" 06/09/2011  solarized options
let g:solarized_hitrail=1
let g:solarized_diffmode='high'

set background=dark
colorscheme solarized

" set visualbell

set lines=72
set columns=85

" 01/05/2012  highlight the right-hand gutter
set colorcolumn=79,80,81

set nu
set nuw=4

if has("gui_gtk2")
  set guifont=Inconsolata\ Medium\ 14
else
  set guifont=Inconsolata:h14.00
endif

syntax on

map <C-j> :bnext<CR>
map <C-k> :bprev<CR>

map <C-Q> :vert split<CR>:bnext<CR>:wincmd l<CR>:bdelete<CR>
" map <C-q> :bdelete<CR>
