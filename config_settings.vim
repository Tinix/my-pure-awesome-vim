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
 let g:airline_theme = 'sonokai'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#fnamemod = ':t'


" UltiSnips
let g:UltiSnipsExpandTrigger="<c-s>"

" FZF
nnoremap <C-b> :Buffers<CR>

" Size fzf and config footer to vim mode
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'horizontal' } }

" Vim-pry 
" :call pry#insert()
nmap <leader>d :call pry#insert()<cr>
