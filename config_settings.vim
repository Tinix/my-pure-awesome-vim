" ---------------------------- Config Settings ------------------------------
colorscheme one
" colorscheme sierra
" colorscheme zenburn
" colorscheme monokai_pro
" colorscheme xcode-default 
" set background=light
set background=dark

 " Config all about gruvbox
let g:gruvbox_transparent_bg = 1
let g:gruvbox_bold = 1
let g:gruvbox_termcolors = 256
let g:gruvbox_hls_cursor = "orange"
let g:gruvbox_vert_split = "bg1"

let g:sonokai_transparent_background = 1
" set termguicolors # este trae problemas
let g:sonokai_style = 'andromeda'

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dracula'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#fnamemod = ':t'

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-s>"

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

" Ale to elixir
let g:ale_fixers = { 'elixir': ['mix_format'] }


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


let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_netrw = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = 'ƛ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'

" Config YouCompleteMe
let g:plug_timeout = 300

vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> p:call setreg("\"",system("xclip -o -selection clipboard"))<CR>p")")")"))


" This makes vim transparent in terminal by default
" hi Normal ctermbg=NONE

let t:is_transparent = 0
function! Toggle_transparent()
   if t:is_transparent == 0
       if has ('gui_running')
           " Sets gVim to transparent
           :silent !transset -a --dec 0.15 
       else
           " Sets vim to opaque
           set background=dark
       endif
       let t:is_transparent = 1
   else
       if has ('gui_running')
           " Sets gVim to opaque
           :silent !transset -a --max 1 
       else
           " Sets vim to transparent
           hi Normal ctermbg=NONE
       endif
       let t:is_transparent = 0
   endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>


" https://togglebit.io/posts/debugging-rust-in-vim/
" Debugger activo
let g:termdebugger="rust-gdb"
