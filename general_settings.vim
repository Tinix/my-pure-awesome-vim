" ---------------------------- General Settings -----------------------------
syntax enable
syntax on
color default
set autoindent
set expandtab

set hlsearch
set laststatus=2
set mouse=a
set mouse=a
set number
set ruler

set shiftwidth=2
set tabstop=2
set autoindent smartindent
set ts=2
set sw=2

set clipboard=unnamed
set showcmd
set showmatch

set encoding=utf-8
set guicursor=i:blinkwait700-blinkon400-blinkoff250
" showmatch enable close-bracket
set splitbelow "term below"
set wildmenu

" :DoMatchParen "-> enable
" NoMatchParen  " -> disable
let g:loaded_matchparen=1

set sw=2

"ctags
set autochdir 
set tags=./tags;/  "to use goto definition function => ctrl + ] and ctrl + t 
" run ctags inside that project $ctags -R *

" Ctags para mostrar tags"
command! MakeTags !ctags -R

set fileencoding=utf-8
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

set cursorline " cursor horizontal"
autocmd InsertEnter * highlight CursorLine guibg=#944050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

" set cursorcolumn  " cursor vertical" "not recommended"

" autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=berry cterm=bold guifg=white guibg=yellow gui=bold
" autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=NONE

" borrar cursorline " 
" highlight clear CursorLine



