set rtp+=/usr/local/lib/python2.7.13/dist-packages/powerline/bindings/vim/

source ~/.vim/key_bindings.vim
source ~/.vim/general_settings.vim

set laststatus=2
set t_Co=256
set hlsearch
set incsearch
set ignorecase
set smartcase
set showtabline=1
set noshowmode
set autoindent
set cindent
set number
set tabstop=8 "ser for C programming"
colo default
syntax enable
syntax on
set expandtab
set tabstop=7
set mouse=a
set ruler
set cmdheight=2
set pastetoggle=<F9> "copiar y pegar
set nobackup
set noswapfile
set paste 
set nopaste
set clipboard=unnamed 
set nocompatible " Use vim , right?

execute pathogen#infect()


"For vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Dependency of snipmate, not sure what it is :/
Bundle "MarcWeber/vim-addon-mw-utils"
" Utility Funtions for other plugins, snipmate dependency
Bundle "tomtom/tlib_vim"
" Collection of snippet , snippet dependency
Bundle "honza/vim-snippets"
" Snipperts ofr our use :)
Bundle 'garbas/vim-snipmate'
" Good looking bottom :)
"Bundle 'bling/vim-airline'
"  Git tools
Bundle 'tpope/vim-fugitive'
" Dependnecy managment
Bundle 'gmarik/vundle'
" Rails :/
Bundle 'tpope/vim-rails.git'
"Commenting and uncommenting stuf
Bundle 'tomtom/tcomment_vim' 
" Molokai theme
Bundle 'vim-ruby/vim-ruby'
" Surround your code :)
Bundle 'tpope/vim-surround'
"Parentesis autogeneraso
Bundle 'jiangmiao/auto-pairs'
" Genera blokes de codido comunes tab completations
 Bundle 'ervandew/supertab'
"Fuzzy finder for vim (Ctrl + P)
Bundle 'kien/ctrlp.vim'
"Distpatching the test runner to tmux pane
Bundle 'tpope/vim-dispatch'
"NERDTreeToogle
Bundle  'scrooloose/nerdtree'
" esperimental vundle
Bundle 'tpope/vim-vinegar'


"Ruby stuff: Thanks Ben :)
" ================
syntax on                 " Enable syntax highlighting  
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes  
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END
" ================


" Configs to make Molokai look great
set background=dark  
let g:molokai_original=1  
let g:rehash256=1  


" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Tab completion
set wildmode=list:longest,list:full  
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

"Config de javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
"set foldmethod=syntax "metodo de plegado, 
