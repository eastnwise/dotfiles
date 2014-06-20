let mapleader=","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Smart way to move btw. windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Use the arrows to something usefull
map <down> :bn<cr>
map <up> :bp<cr>
map <left> :tabp<cr>
map <right> :tabn<cr>

"NERDTree
" nnoremap <leader>nt :NERDTreeToggle<cr>
nmap <C-N> :NERDTreeToggle<CR>

"Undotree
nnoremap <leader>u :UndotreeToggle<cr>

" ---------------
" Fugitive
" ---------------
nnoremap <leader>gc :Gcommit -v<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <leader>gu :Git pull<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>ga :Git add --all<cr>:Gcommit<cr>
" Exit a diff by closing the diff window
nnoremap <leader>gx :wincmd h<CR>:q<CR>


" ---------------
" ctrl-p
" ---------------
nnoremap <silent> <leader>m :CtrlPMRU<CR>
nnoremap <silent> <leader>t :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> <leader>b :CtrlPBuffer<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <leader>cc :ClearCtrlPCache<cr>

" ---------------
" Ag
" ---------------

" Open the Ag command and place the cursor into the quotes
nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>

"------------------
"spell checker
"------------------
"
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"------------------
" folding
"------------------
" space open/closes folds
nnoremap <space> za

"hangul key
" nnoremap <ESC> :set noimd<cr><ESC>
" nnoremap <C-[> :set noimd<cr><C-[>

"------------------
" pytest
"------------------

" Execute the tests
nmap <leader>tf <Esc>:Pytest file<CR>
nmap <leader>tc <Esc>:Pytest class<CR>
nmap <leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <leader>tn <Esc>:Pytest next<CR>
nmap <leader>tp <Esc>:Pytest previous<CR>
nmap <leader>te <Esc>:Pytest error<CR>
