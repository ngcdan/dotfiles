" g Leader key
let mapleader= " "

" -------------------- Navigation, Window--------------------
" Split 
nnoremap <leader>\ :vsplit<CR> 
nnoremap ss :vsplit<CR> 
nnoremap <leader>/ :split<CR>
nnoremap sv :split<CR>

" resize 
nnoremap <silent> <leader>- :vertical resize -8<CR>
nnoremap <silent> <leader>= :vertical resize +8<CR>

" window focus
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" " <Leader>f{char} to move to {char}
nnoremap  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <silent> f <Plug>(easymotion-s2)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map / <Plug>(easymotion-sn)

" Tabs
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" -------------------- Project -------------------------
"" NERD tree configuration
" noremap <C-d> :NERDTreeToggle<CR>
" nnoremap F :NERDTreeFind<CR>
" let NERDTreeShowHidden=1
"

" --------------Edit--------------------
" close all buffer
nmap <leader>ba :Bufonly<cr>

command! Bufonly silent! call Preserve("exec '%bd|e#|bd#'")
if !exists('*Preserve')
    function! Preserve(command)
        try
            let l:win_view = winsaveview()
            silent! execute 'keeppatterns keepjumps ' . a:command
        finally
            call winrestview(l:win_view)
        endtry
    endfunction
endif

map te :tabedit<C-r>=expand("%:p:h")<cr>

" Fast saving 
nmap <leader>w :w!<CR>
" Alternate way to quit 
nnoremap qq :wq!<CR>
nnoremap Q :q!<CR>
" Select all
nmap <C-a> ggVG

" --------------------Indent, Format, Refactor------------------------
" Better indenting
vnoremap < <gv
vnoremap > >gv
" Move selected line / block of text in visual mode
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" spell checking
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s


" ----------------- Search, Replace --------------------
" No highlight search
map <silent> <leader><space> :nohl<cr>

" find current word in file
nnoremap <leader>k /<C-R><C-W><CR>
" ---------------------- Escape, Exit ------------------------
" escape
inoremap jk <Esc>
inoremap kj <Esc>
"nnoremap <silent> <C-c> <Esc>
map <silent> <C-c> <Esc>

" Edit vimr configuration file
nnoremap cfe :e $MYVIMRC<CR>
" Reload vims configuration file
nnoremap cfr :source $MYVIMRC<CR>
