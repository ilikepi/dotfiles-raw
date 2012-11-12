" 01/12/2012  
set nocompatible

" 01/12/2012  required to initialize Vundle
filetype off

" 01/12/2012  update runtime path and initialize Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 01/12/2012  Vundle should manage itself
Bundle 'gmarik/vundle'

" buffer management (via vim-scripts repo)
Bundle 'bufexplorer.zip'

" fancy status bar
Bundle 'Lokaltog/vim-powerline'

Bundle 'tpope/vim-surround'
Bundle 'msanders/snipmate.vim'

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

" default tab/spacing settings
set et
set ts=2
set sw=2
set tw=78

" status bar is always visible
set laststatus=2

" enable search highlighting
set hlsearch

set printoptions=paper:letter

autocmd FileType svn setlocal tw=0
" autocmd FileType diff colorscheme darkspectrum
autocmd FileType diff setlocal nowrap tw=0
autocmd FileType gitcommit setlocal tw=72
autocmd FileType ruby setlocal tw=0
autocmd FileType yaml setlocal ai si
autocmd FileType vundle setlocal nu

filetype plugin indent on

" when folding is enabled, don't start with one mega-fold
set foldlevelstart=1

" 01/12/2012  temporarily disable
" helptags ~/.vim/doc

" configure bufexplorer
let g:bufExplorerDetailedHelp=1
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitOutPathName=0

" configure vim-powerline
let g:Powerline_symbols='unicode'
