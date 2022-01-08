" Author: Daniel Tinivella <dtinivella@gmail.com>
" Gitlab: https://gitlab.com/tinix/my-pure-awesome-vim

set rtp+=/usr/local/lib/python2.7.13/dist-packages/powerline/bindings/vim/

"------------------------------ General Settings -----------------------------------------"
source ~/.vim/general_settings.vim
"-------------------------------- Key Bindings ------------------------------------------"
source ~/.vim/key_bindings.vim
" ---------------------------- Plugin Settings ------------------------------
" source ~/.vim/plugin_settings.vim

source ~/.vim/config_settings.vim

source ~/.vim/resize.vim

" ------------------------------ Plugins ( VimPlug ) ------------------------------
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.
Plug 'ap/vim-css-color' " Context-sensitive color name highlighter.
Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim.

Plug 'vim-airline/vim-airline' " Status/tabline for vim that's light as air.
Plug 'tpope/vim-fugitive' " Fugitive is the premier Vim plugin for Git.
Plug 'gruvbox-community/gruvbox'

Plug 'junegunn/fzf' " Fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf.vim' " Vim plugin for basic wrapper funtion to FZF.
Plug 'airblade/vim-rooter'

Plug 'SirVer/ultisnips' " The ultimate solution for snippets in Vim.
Plug 'dense-analysis/ale' " ALE (Asynchronous Lint Engine).
Plug 'prettier/vim-prettier' " A vim plugin wrapper for prettier.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Completion framework for neovim/Vim8.
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' } " Deep learning to help you write code faster.
Plug 'skywind3000/asyncrun.vim' " Run Async Shell Commands
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'

" vim-go plugin goland
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'joshdick/onedark.vim'

Plug 'gko/vim-coloresque'

" Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/sonokai' " Color scheme.
Plug 'flazz/vim-colorschemes'
Plug 'arzg/vim-colors-xcode' "xcodelighthc
Plug 'chriskempson/base16-vim'
Plug 'victorze/foo' "colorscheme hacker"
Plug 'sonph/onehalf', {'rtp': 'vim/'}
 Plug 'itchyny/lightline.vim'
Plug 'jpo/vim-railscasts-theme'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'BlakeWilliams/vim-pry'
Plug 'thoughtbot/vim-rspec'

 " Devicons
Plug 'ryanoasis/vim-devicons'

" vim-easy-align, :EasyAlign
Plug 'junegunn/vim-easy-align'

" vim yaml formatter"
Plug 'tarekbecker/vim-yaml-formatter'

" vim icons"
Plug 'ryanoasis/vim-webdevicons'

"NERDTree"
Plug 'preservim/nerdtree'

" Elixir Test
Plug 'habamax/vim-elixir-mix-test'

Plug  'tpope/vim-vinegar'
Plug 'vim-scripts/Gundo'
Plug  'mileszs/ack.vim'
Plug 'vim-scripts/vimwiki'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Completion "" and change ''
Plug 'tpope/vim-surround'
call plug#end()

