" 01/12/2012
set nocompatible

" 01/12/2012  required to initialize Vundle
filetype off

" 01/12/2012  update runtime path and initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" 01/12/2012  Vundle should manage itself
Bundle 'VimVundle/Vundle.vim'

" buffer management (via vim-scripts repo)
Bundle 'bufexplorer.zip'

" fancy status bar
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

Bundle 'tpope/vim-surround'

" a more recent fork of msanders/snipmate.vim (and its dependencies)
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" markup plugins
Bundle 'plasticboy/vim-markdown'
Bundle 'timcharper/textile.vim'
Bundle 'tpope/vim-haml'

" git plugins
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

" RoR related
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'

" colorschemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-vividchalk'
Bundle 'candycode.vim'

call vundle#end()

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
autocmd FileType mkd setlocal ts=4 sw=4
autocmd FileType markdown setlocal ts=4 sw=4
autocmd FileType php setlocal tw=0 ts=2 sw=2
autocmd FileType python setlocal ts=4 sw=4
autocmd FileType ruby setlocal tw=0 ts=2 sw=2
autocmd FileType sh setlocal tw=0 ts=2 sw=2
autocmd FileType sql setlocal tw=0 ts=4 sw=4
autocmd FileType vundle setlocal nu
autocmd FileType yaml setlocal ai si sw=2

autocmd BufRead,BufNewFile *.json setlocal filetype=javascript ts=2 sw=2

filetype plugin indent on

" when folding is enabled, don't start with one mega-fold
set foldlevelstart=1

" 01/12/2012  temporarily disable
" helptags ~/.vim/doc

" configure bufexplorer
let g:bufExplorerDetailedHelp=1
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitOutPathName=0

" configure vim-airline
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#branch#enabled=0
let g:airline_section_b = '⎇ %{strpart(fugitive#head(), 0, 9)}'
let g:airline_theme='solarized'

" 05/02/2013  configure vim-markdown
let g:vim_markdown_initial_foldlevel=1

" 11/08/2013  distilled from vim-unimpaired
nnoremap <silent> [q :cprevious
nnoremap <silent> ]q :cnext
nnoremap <silent> [Q :cfirst
nnoremap <silent> ]Q :clast
