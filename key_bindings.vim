" ----------------------------- Mappings --------------------------------
"Dvorak motions.
nnoremap j h
nnoremap t j
nnoremap n k
nnoremap s l
vnoremap j h
vnoremap t j
vnoremap n k
vnoremap s l

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


" Automaticc closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap { {}<left>
inoremap ${ ${}<left>
inoremap #{ #{}<left><left>
inoremap {<CR> {<CR>}<ESC>0
inoremap <% <% %><left><left><left>
inoremap <%=  <%= %><left><left><left>

" Fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-p>. :Files <C-r>=expand("%:h")<CR>/<CR>>>"")>>>
nnoremap <silent> <C-r> :Rg<CR>

"Bufferes"
map <C-f> :File<CR>
map <C-l>l :Buffers<CR>
nnoremap <silent> <C-l> :Buffers<CR>
nnoremap <leader>g :Rg<Cr>
nnoremap <leader>t :Tags<Cr>

" NERDTree
nmap <Leader>ft :NERDTreeClose<CR>
nmap <Leader>nt :NERDTreeFind<CR>


" move  single lines
nmap <C-k> [e
nmap <C-j> ]e
" move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv

map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
map <Leader>tab :tabfind<cr>


"Remplace Esc"
inoremap ;; <Esc>
imap ;; <Esc>

map <F1> :colorscheme gruvbox<CR>

" F2 busy to set pastetoggle=<F2>

" map <F2> :colorscheme base16-default-dark<CR>
map <F3> :colorscheme hybrid_reverse<CR>
map <F4> :colorscheme xcodelighthc<CR>
map <F5> :colorscheme gruvbox<CR>
map <F5> :colorscheme sonokai<CR>
map <F6> :colorscheme vim-monokai-tasty<CR>


" I use keyboard Dvorak 
inoremap <A-h> <Left>
inoremap <A-t> <Down>
inoremap <A-n> <Up>
inoremap <A-s> <Right>
cnoremap <A-h> <Left>
cnoremap <A-t> <Down>
cnoremap <A-n> <Up>
cnoremap <A-s> <Right>

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" RSpec.vim mappings
" https://github.com/thoughtbot/vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>


" Move renglon Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Move renglon Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

"Move renglon Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" paste text from external"
set pastetoggle=<F2>

