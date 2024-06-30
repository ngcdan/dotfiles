" Better nav for omnicomplet" set leader key
let g:mapleader = "\<Space>"

set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set backspace=2                         " Backspace deletes like most program in insert mode
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc

set nowrap                              " Display long lines as just one line
set history=50
set ruler
set showcmd " display incomplete commands
set laststatus=2
set autowrite    " automatically :write before running commands
set noshowmode


" soft tabs , 2 spaces
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2
set expandtab                           " Converts tabs to spaces
set softtabstop=0
set smarttab
set autoindent                          " Good auto indent

" make it obvious where 120 characters is
set colorcolumn=120

set nojoinspaces                        " use one space, not two, after punctuation

set mouse=a                            " Enable your mouse

set number relativenumber                             " Line numbers
set numberwidth=5

" set list listchars=tab:»·,trail:·,space:· " Display extra whitespace

set splitbelow splitright                         " Horizontal splits will automatically be below

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

set cursorline                          " Enable highlighting of the current line
set updatetime=50                      " Faster completion


" Copy paste between vim and everything else 
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

" ingore case when searching
set ignorecase
set incsearch                           "  makes search act like search in modern brosers
set hlsearch
set smartcase

set lazyredraw

set termguicolors
" set background=dark                     " tell vim what the background color looks like

set backspace=indent,eol,start  " allow backspacing over everything in insert mode

syntax enable


inoremap jk <esc>

