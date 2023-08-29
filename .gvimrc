"   " 06/09/2011  solarized options
"   let g:solarized_visibility='high'
"   let g:solarized_diffmode='high'

"   " bufexplorer options specific to gvim
"   let g:bufExplorerShowTabBuffer=1

"   set background=dark
"   colorscheme solarized

" set visualbell

set lines=74
set columns=257
set guioptions-=r
set guioptions-=L

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

" map <C-q> :bdelete<CR>
" map <C-Q> :vert split<CR>:bnext<CR>:wincmd l<CR>:bdelete<CR>
" map <C-Q> :e #<CR>:bwipe #<CR>

" toggle high-visibility mode
map <Leader>dp :set bg=light co=171 guifont=Inconsolata:h20.00<CR>:wincmd =<CR>
map <Leader>pd :set bg=dark co=257 lines=87 guifont=Inconsolata:h14.00<CR>:wincmd =<CR>

" quickly adjust the number of columns in standard increments
map <Leader>ww :set columns+=86<CR>:wincmd =<CR>
map <Leader>wn :set columns-=86<CR>:wincmd =<CR>
map <Leader>w1 :set columns=85<CR>:wincmd =<CR>
map <Leader>w2 :set columns=171<CR>:wincmd =<CR>
map <Leader>w3 :set columns=257<CR>:wincmd =<CR>
map <Leader>w4 :set columns=343<CR>:wincmd =<CR>

" toggle relative/absolute line numbers
map <Leader>n :set nu<CR>
map <Leader>N :set rnu<CR>
