" Author: Daniel Tinivella <dtinivella@gmail.com>
" Github: https://github.com/Tinix/my-pure-awesome-vim

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

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Make your Neovim as smart as VSCode.
Plug 'sainnhe/sonokai' " Color scheme.
Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.
Plug 'ap/vim-css-color' " Context-sensitive color name highlighter.
Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim.
Plug 'vim-airline/vim-airline' " Status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline-themes' " Status/tabline for vim that's light as air.
Plug 'tpope/vim-fugitive' " Fugitive is the premier Vim plugin for Git.
Plug 'junegunn/fzf' " Fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf.vim' " Vim plugin for basic wrapper funtion to FZF.
Plug 'airblade/vim-rooter'
Plug 'vimwiki/vimwiki' " Personal wiki.
Plug 'aperezdc/vim-template' " Simple Vim temlpates plugin.
Plug 'SirVer/ultisnips' " The ultimate solution for snippets in Vim.
Plug 'prettier/vim-prettier' " A vim plugin wrapper for prettier.
Plug 'skywind3000/asyncrun.vim' " Run Async Shell Commands
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-surround' " Quoting/parenthesizing made simple.
Plug 'heavenshell/vim-jsdoc' " Generate JSDoc to your JavaScript code.
Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim.
Plug 'junegunn/limelight.vim' " Hyperfocus-writing in Vim.
Plug 'skywind3000/asyncrun.vim' " Run shell commands in background.
Plug 'skywind3000/vim-terminal-help' " Small changes make vim/nvim's internal terminal great again !!.
Plug 'edkolev/tmuxline.vim' " Simple tmux statusline generator.
Plug 'andreshazard/vim-freemarker' " Freemarker (ftl) syntax and functions.
Plug 'preservim/nerdcommenter' " Comment functions so powerful—no comment necessary.

" vim-go plugin goland
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" plugin that provides Rust file detection, syntax highlighting
Plug 'rust-lang/rust.vim'

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'arzg/vim-colors-xcode'
Plug 'fatih/molokai'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sainnhe/everforest'
Plug 'tomasiser/vim-code-dark'
Plug 'ayu-theme/ayu-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" below Plug was comment before that the top bar vim wos desactivated
Plug 'jpo/vim-railscasts-theme'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'BlakeWilliams/vim-pry'
Plug 'thoughtbot/vim-rspec'

 " Devicons
Plug 'ryanoasis/vim-devicons'

" vim-easy-align, :EasyAlign
Plug 'junegunn/vim-easy-align'

" vim icons"
Plug 'ryanoasis/vim-webdevicons'

" Elixir Test
Plug 'habamax/vim-elixir-mix-test'

" A collection of Javascript (with ES2015 and Node.js) snippets for Vim
Plug 'grvcoelho/vim-javascript-snippets'

" Snippets for React
Plug 'mlaursen/vim-react-snippets'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'preservim/nerdtree'

" Files extension .tmpl 
Plug 'tibabit/vim-templates'

Plug 'github/copilot.vim'

call plug#end()

