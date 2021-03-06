"let g:startify_custom_header = [
"      \ '      .____    .__                             ',
"      \ '      |    |   |__| ____  __ __  ______ ______ ',
"      \ '      |    |   |  |/    \|  |  \/  ___//  ___/ ',
"      \ '      |    |___|  |   |  \  |  /\___ \ \___ \  ',
"      \ '      |_______ \__|___|  /____//____  >____  > ',
"      \ '              \/       \/           \/     \/  ',
"      \ ]
                                      

"where to keep my sessions
let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0 
let g:startify_change_to_dir = 0

" let g:webdevicons_enable_startify = 1

"function! StartifyEntryFormat()
"        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
"    endfunction

let g:startify_bookmarks = [
            \ { 'p': '~/Dev/projects' },
            \ { 'd': '~/Dev/projects/datatp' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/Dev/dotfiles' },
            \ ]

