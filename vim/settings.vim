" -----------------------------
" Backups, Tmp Files, and Undo
" -----------------------------
set backup
set backupdir=~/.vim/.backup
set directory=~/.vim/.tmp
"Persistent Undo
if has('persistent_undo')
 set undofile
 set undodir=~/.vim/.undo
endif

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set number         " Line numbers on
set wrap         " Line wrapping on
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
" set noshowmode     " Don't show the mode since Powerline shows it
"set showcmd " Display an incomplete command in the lower right corner of the Vim window
set title          " Set the title of the window in the terminal to the file
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
" set shortmess=a

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
" set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=450     " Time to wait for a command (after leader for example).
" set nofoldenable       " Disable folding entirely.
set foldenable          " enable folding
set foldlevelstart=10 " I really don't like folds.
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" set formatoptions=crql
" set iskeyword+=\$,-   " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " Keep three lines below the last line when scrolling

" ---------------
" Text Format
" ---------------
set tabstop=4
set backspace=indent,eol,start	" more powerful backspacing
set backspace=2  " Delete everything with backspace
set softtabstop=4
set shiftwidth=4 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set fileformat=unix
setlocal spelllang=en_us
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
set magic
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set list
" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw
" Reset the listchars
set listchars=""
" make tabs visible
set listchars=tab:▸▸
" show trailing spaces as dots
set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
" set complete=.,w,b,u,U
