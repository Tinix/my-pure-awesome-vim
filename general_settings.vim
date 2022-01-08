" ---------------------------- General Settings -----------------------------
syntax enable
syntax on
color default
set laststatus=2
set autoindent
set hlsearch
set number
set mouse=a
set ruler
set mouse=a
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set clipboard=unnamed
set showcmd
set encoding=utf-8
set guicursor=i:blinkwait700-blinkon400-blinkoff250
" showmatch enable close-bracket
set showmatch
set splitbelow "term below"

" :DoMatchParen "-> enable
" NoMatchParen  " -> disable
let g:loaded_matchparen=1

set sw=2
set laststatus=2

"ctags
set autochdir 
set tags=./tags;/  "to use goto definition function => ctrl + ] and ctrl + t 
" run ctags inside that project $ctags -R *

set fileencoding=utf-8
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
