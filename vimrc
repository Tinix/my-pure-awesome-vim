" Author: Daniel Tinivella <dtinivella@gmail.com>
" Gitlab: https://gitlab.com/tinix/my-pure-awesome-vim

set rtp+=/usr/local/lib/python2.7.13/dist-packages/powerline/bindings/vim/

"------------------------------ General Settings -----------------------------------------"
source ~/.vim/general_settings.vim
"-------------------------------- Key Bindings ------------------------------------------"
source ~/.vim/key_bindings.vim
" ---------------------------- Plugin Settings ------------------------------
"source ~/.vim/plugin_settings.vim

" ------------------------------ Plugins ( VimPlug ) ------------------------------
call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai' " Color scheme.
Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.
Plug 'ap/vim-css-color' " Context-sensitive color name highlighter.
Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim.

Plug 'vim-airline/vim-airline' " Status/tabline for vim that's light as air.
Plug 'tpope/vim-fugitive' " Fugitive is the premier Vim plugin for Git.
Plug 'morhetz/gruvbox' " Theme Gruvbox

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
Plug 'voldikss/vim-floaterm'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'jpo/vim-railscasts-theme'

call plug#end()

set background=dark  
colorscheme railscasts


