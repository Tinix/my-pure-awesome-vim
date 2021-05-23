" ----------------------------- Mappings --------------------------------
" hh to Esc.
inoremap hh <Esc>
vnoremap <Space> <Esc>
 
"Dvorak motions.
nnoremap j h
nnoremap t j
nnoremap n k
nnoremap s l
vnoremap j h
vnoremap t j
vnoremap n k
vnoremap s l


" m to next/previous occurrence.
nnoremap m n
nnoremap M N

" Panel motion.
"nnoremap <C-h> <C-W>w

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)
"save
nmap <Leader>w :w<CR>
"whithout save"
nmap <Leader>q :q<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Move selected blocks.
xnoremap N :move '<-2<CR>gv-gv
xnoremap T :move '>+1<CR>gv-gv
" Save with Ctrl-S

" Automaticc closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap { { }<left><left>
inoremap ${ ${}<left>
inoremap #{ #{}<left><left>
inoremap {<CR> {<CR>}<ESC>0
inoremap <% <% %><left><left><left>
inoremap <%=  <%= %><left><left><left>

" Fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-r> :Rg<CR>

"Bufferes"
map <C-f> :File<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>b :buffers<CR>
nnoremap <leader>g :Rg<Cr>
nnoremap <leader>t :Tags<Cr>

" NERDTree
nmap <Leader>ft :NERDTreeClose<CR>
nmap <Leader>nt :NERDTreeFind<CR>

" Save
nmap <Leader>w :w<CR>
" Whitout save
nmap <Leader>q :q<CR>

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

nnoremap <leader>h <A-q>h
nnoremap <leader>j <A-q>t
nnoremap <leader>k <A-q>n
nnoremap <leader>l <A-q>s

map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme base16-default-dark<CR>
map <F3> :colorscheme hybrid_reverse<CR>
map <F4> :colorscheme PaperColor<CR>
""map <F5> :colorscheme spacegray<CR>
map <F5> :colorscheme sonokai<CR>
map <F6> :colorscheme Base4Tone_Classic_C_Light<CR>


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

