" ---------------------------- Plugin Settings ------------------------------
" Gruvbox-Material
let g:sonokai_transparent_background = 1
" set termguicolors
let g:sonokai_style = 'andromeda'
" colorscheme sonokai

" Goyo
nnoremap <silent><C-n> :Goyo<CR>
function! s:goyo_enter()
  silent !tmux set status off
endfunction
function! s:goyo_leave()
  silent !tmux set status on
endfunction

" Limelight
" let g:limelight_conceal_guifg = 'DarkGray'
" let g:limelight_conceal_guifg = '#777777'
" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#fnamemod = ':t'

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-s>"

" FZF
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '-G src', <bang>0)
nnoremap <C-p> :Files src<CR>
nnoremap <C-b> :Buffers<CR>


" Ale
nnoremap <C-g> :ALEGoToDefinition<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '🚧'
let g:ale_sign_warning = '🐞'
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = '👮'
let g:ale_echo_msg_warning_str = '💅'
let g:ale_echo_msg_format = '%severity% %s %severity%'

" Elixir and Phoenix"
" Required, explicitly enable Elixir LS
let g:ale_linters = {
\   'elixir': ['elixir-ls'],
\}

let g:ale_fixers = {
\   'elixir': ['mix_format'],
\}

" Required, tell ALE where to find Elixir LS
let g:ale_elixir_elixir_ls_release = expand("<path to your release>")

" Optional, you can disable Dialyzer with this setting
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

"Elixir Test Run"
" let g:elixir_mix_test_position = "default"
let g:elixir_mix_test_position = "right"

"End config Elixir"

" Deoplete
""let g:deoplete#enable_at_startup = 1
""inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
""inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" TabNine
""call deoplete#custom#var('tabnine', {
""\ 'line_limit': 500,
""\ 'max_num_results': 15,
""\ })

" Vim-Fugitive
command Gp Git pull
command Gb Git branch
command Gsl Git stash list
command Gsp Git stash pop
command -nargs=1 Gc Git checkout "<args>"
command -nargs=1 Gcb Git checkout -b "<args>"
command -nargs=1 Gcm Git commit -am "<args>"
command -nargs=1 Gbd Git branch -D "<args>"

" AsyncRun
let g:asyncrun_open = 6
command Jest AsyncRun npx jest
command -nargs=1 AsyncRun npx jest "<args>"

"NERDTree
let g:NERDTreeGitStatusWithFlags = 0
let NERDTreeShowHidden = 1
let NERDTreeClose = 1 "To enable this behavior by default, add NERDTreeShowHidden = 0"
let g:NERDTreeIgnore = ['^node_modules$']


"Emmet enable config just for html/css
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
"

"Float terminal on Nvim config
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

" Multiple Cursor Default Mapping
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



" FZF window floating
if has('nvim-0.4.0') || has("patch-8.2.0191")
  let g:fzf_layout = { 'window': {
        \'width': 0.9,
        \ 'height': 0.7,
        \ 'highlight': 'Comment',
        \ 'rounded': v:false } }
else
    let g:fzf_layout = { "window": "silent botright 16split enew" }
endif

autocmd FileType netrw setlocal bufhidden=delete



