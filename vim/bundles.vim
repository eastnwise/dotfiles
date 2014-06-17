filetype off                   " required!

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Add your bundles here
"...All your other bundles...
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
" Setting up Vundle - the vim plugin bundler end

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles here:
"
Bundle 'tomasr/molokai'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'tomtom/tcomment_vim'
" Bundle 'Lokaltog/powerline'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'mbbill/undotree'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-eunuch'
" Bundle 'jiangmiao/auto-pairs'
Bundle 'kien/ctrlp.vim'
Bundle 'klen/python-mode'
Bundle 'honza/vim-snippets'
Bundle 'ervandew/supertab'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'Shougo/neocomplete'
" Bundle 'Shougo/neocomplcache'
" Bundle 'davidhalter/jedi-vim'
Bundle 'rking/ag.vim'
" Bundle 'xolox/vim-notes'
" Bundle 'xolox/vim-misc'
Bundle 'altercation/vim-colors-solarized'
Bundle 'junegunn/goyo.vim'
" Bundle 'amix/vim-zenroom2'
Bundle 'reedes/vim-colors-pencil'
Bundle 'reedes/vim-pencil'

filetype plugin indent on     " required!
syntax on

