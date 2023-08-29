" 01/12/2012
set nocompatible

" initialize vim-plug with default plugin directory ('~/.vim/plugged')
call plug#begin()

" buffer management (via vim-scripts repo)
Plug 'vim-scripts/bufexplorer.zip'

"   " fancy status bar
"   Plugin 'vim-airline/vim-airline'
"   Plugin 'vim-airline/vim-airline-themes'

" general purpose coding
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

"   " a more recent fork of msanders/snipmate.vim (and its dependencies)
"   Plugin 'MarcWeber/vim-addon-mw-utils'
"   Plugin 'tomtom/tlib_vim'
"   Plugin 'garbas/vim-snipmate'
"   Plugin 'honza/vim-snippets'

" markup plugins
Plug 'tpope/vim-haml'

"   " RoR related
"   Plugin 'tpope/vim-rails'
"   Plugin 'tpope/vim-cucumber'

" git plugins
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'

" colorschemes
Plug 'altercation/vim-colors-solarized'

call plug#end()

" tabs are evil
set et

" status bar is always visible
set laststatus=2

" enable search highlighting
set hlsearch

" show tab characters and trailing spaces by default
set listchars=trail:·,tab:».
set list

set printoptions=paper:letter

autocmd FileType svn setlocal tw=0
" autocmd FileType diff colorscheme darkspectrum
autocmd FileType conf setlocal tw=0 ts=2 sw=2
autocmd FileType cucumber setlocal tw=0 ts=2 sw=2
autocmd FileType diff setlocal nowrap tw=0
autocmd FileType gitcommit setlocal tw=72 ts=2 sw=2
autocmd FileType haml setlocal sw=2
autocmd FileType mkd setlocal ts=4 sw=4
autocmd FileType markdown setlocal ts=4 sw=4
autocmd FileType php setlocal tw=0 ts=2 sw=2
autocmd FileType python setlocal ts=4 sw=4
autocmd FileType ruby setlocal tw=0 ts=2 sw=2
autocmd FileType sh setlocal tw=0 ts=2 sw=2
autocmd FileType sql setlocal tw=0 ts=4 sw=4
autocmd FileType vundle setlocal nu
autocmd FileType yaml setlocal ai si sw=2

autocmd BufRead,BufNewFile *.json setlocal filetype=json ts=2 sw=2

"   filetype plugin indent on

" when folding is enabled, don't start with one mega-fold
set foldlevelstart=1

" 01/12/2012  temporarily disable
" helptags ~/.vim/doc

" configure bufexplorer
let g:bufExplorerDetailedHelp=1
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitOutPathName=0

"   " configure vim-airline
"   let g:airline_left_sep=''
"   let g:airline_right_sep=''
"   let g:airline#extensions#branch#enabled=0
"   let g:airline_section_b = '⎇ %{strpart(fugitive#head(), 0, 9)}'
"   let g:airline_theme='solarized'

" 11/08/2013  distilled from vim-unimpaired
nnoremap <silent> [q :cprevious
nnoremap <silent> ]q :cnext
nnoremap <silent> [Q :cfirst
nnoremap <silent> ]Q :clast
