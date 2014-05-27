"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

try
    " let g:molokai_original = 1
    let g:rehash256 = 1
    colorscheme molokai
catch
endtry

set background=dark

"tell the term has 256 colors
set t_Co=256

"Keep 80 columns.
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/

" Set extra options when running in GUI mode
"gVim-specific configurations (including MacVim).
if has("gui_running")
    " set guioptions=egmrLt
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=l  
    set guioptions-=R  
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar

    set linespace=1


    " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
    " For some reason this doesn't work as a regular set command,
    " (the numbers don't show up) so I made it a VimEnter event
    autocmd VimEnter * set guitablabel=%N:\ %t\ %M
else
    let g:airline_left_sep=''
    let g:airline_right_sep=''
endif


"MacVim-specific configurations.
if has("gui_macvim")
  " set noimd
  set imd
  " set imi=1
  " set ims=-1
    
  let g:airline_powerline_fonts = 1
  " let g:Powerline_symbols='fancy'

" Open MacVim in fullscreen mode
  set fuoptions=maxvert,maxhorz
  " au GUIEnter * set fullscreen
  " set guifont=Source_Code_Pro_Light:h16.00
  "
  " powerline or airline patched font
  set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
endif

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

"GVim under Windows
if has("gui_win32")
  set guifont=Consolas:h11:cANSI
endif

"GVim under GNOME
if has("gui_gnome")
  set guifont="Ubuntu Mono 12"
endif
