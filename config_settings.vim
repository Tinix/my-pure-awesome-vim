" ---------------------------- Config Settings ------------------------------
colorscheme gruvbox 
set background=dark  

" Goyo
 nnoremap <silent><C-n> :Goyo<CR>
 function! s:goyo_enter()
   silent !tmux set status off
 endfunction
 function! s:goyo_leave()
  silent !tmux set status on
 endfunction

" Limelight
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
 let g:airline_theme = 'violet'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:ale_fixers = { 'elixir': ['mix_format'] }

" Air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-s>"

" FZF
nnoremap <C-b> :Buffers<CR>

" Size fzf and config footer to vim mode
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'horizontal' } }

" Vim-pry 
" :call pry#insert()
nmap <leader>d :call pry#insert()<cr>



" Mode Cursor Settings

" let &t_SI.="\e[5 q" "SI = INSERT mode
" let &t_SR.="\e[4 q" "SR = REPLACE mode
" let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" Netrw Automatically close after opening a file
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 22
set autochdir
map <C-E> :Lexplore<CR>

