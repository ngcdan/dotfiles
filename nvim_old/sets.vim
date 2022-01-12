" Better nav for omnicomplet" set leader key
let g:mapleader = "\<Space>"

set nocompatible
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc

set history=50
set ruler
set showcmd " display incomplete commands
set laststatus=2
set autowrite    " automatically :write before running commands
set noshowmode

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" indents
filetype indent on
filetype plugin indent on
set shiftwidth=2
set tabstop=2                           " Insert 2 spaces for a tab
set autoindent                          " Good auto indent
set smarttab
set nowrap "No Wrap lines
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set expandtab  " using space instead tab

set showmatch

set wildignore+=*/node_modules/*,*.o,*.obj,*.bak,*.exe,*.hi,*.dyn_hi,*.dyn_o,*.zip,*.pdf
set wildmode=longest,list,full
set path+=**

set nojoinspaces                        " use one space, not two, after punctuation

set mouse=a                            " Enable your mouse

set number relativenumber                             " Line numbers
set numberwidth=5

set list listchars=tab:»·,trail:·,space:· " Display extra whitespace

set splitbelow splitright                         " Horizontal splits will automatically be below

" Autocomplete with dictionary words when spell check is on
set complete+=kspell
set spelllang=en_us

" Always use vertical diffs
set diffopt+=vertical

set cursorline                          " Enable highlighting of the current line
" make it obvious where 80 characters is
set colorcolumn=120

set updatetime=50                      " Faster completion

set clipboard=unnamedplus               " Copy paste between vim and everything else

" ingore case when searching
set ignorecase
set incsearch                           " search and hightlight 
set hlsearch
set smartcase

set lazyredraw

set termguicolors
set background=dark                     " tell vim what the background color looks like


set cmdheight=2 " Give more space for displaying messages.
set shortmess+=c


" ----------------- BASIC STYLING -----------------
"
" Highlight Whitespaces
highlight Whitespace ctermfg=Grey
" Makes comments italic
highlight Comment cterm=italic
" Customize spell check highlighting
highlight SpellBad ctermbg=Red ctermfg=White
highlight SpellCap cterm=NONE ctermbg=NONE
highlight SpellRare cterm=NONE ctermbg=NONE
highlight SpellLocal cterm=undercurl ctermbg=NONE

" highlight LineNr ctermbg=NONE ctermfg=White
highlight VertSplit ctermbg=NONE ctermfg=White

set inccommand=split " for incsearch while sub ( neovim only )

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2
"}}}
