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
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>ga :Git add --all<cr>:Gcommit<cr>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>


" ---------------
" ctrl-p
" ---------------
nnoremap <silent> ,r :CtrlPMRU<CR>
nnoremap <silent> ,f :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> ,b :CtrlPBuffer<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> ,cc :ClearCtrlPCache<cr>

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
