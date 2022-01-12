" g Leader key
let mapleader= " "

" -------------------- Navigation, Window--------------------
" Split 
nnoremap <leader>\ :vsplit<CR> 
" nnoremap ss :vsplit<CR> 
nnoremap <leader>/ :split<CR>
" nnoremap sv :split<CR>

" resize 
nnoremap <silent> <leader>- :vertical resize -8<CR>
nnoremap <silent> <leader>= :vertical resize +8<CR>
nnoremap <silent> <C-Up> :resize +2<CR>
nnoremap <silent> <C-Down> :resize -2<CR>
nnoremap <silent> <C-Left> :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

" window focus
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Easymotion
nnoremap  <Leader>s <Plug>(easymotion-bd-f)
nmap <Leader>s <Plug>(easymotion-overwin-f)
nmap <silent> s <Plug>(easymotion-s2)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map / <Plug>(easymotion-sn)

" Navigate buffers
nnoremap <silent> <S-l> :bnext<CR>
nnoremap <silent> <S-h> :bprevious<CR>

vnoremap <silent> p "_dP

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
map <silent> <C-c> <Esc>
" Fast saving 
nmap <leader>w :w!<CR>
" Alternate way to quit 
nnoremap qq :wq!<CR>
nnoremap Q :q!<CR>
" Select all
nmap <C-a> ggVG

" Edit vimr configuration file
nnoremap cfe :e $MYVIMRC<CR>
" Reload vims configuration file
nnoremap cfr :source $MYVIMRC<CR>
