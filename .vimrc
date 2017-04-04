filetype plugin indent on
set relativenumber
set autoindent
set shiftwidth=4
set tabstop=4
set textwidth=80
set expandtab
set foldmethod=indent
set autochdir
syntax off
set noswapfile
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

"Cursors
set cursorline
highlight Folded ctermbg=2
highlight TabLine ctermbg=2
highlight CursorLine ctermbg=2 cterm=NONE

"Filetypes
autocmd FileType js setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

"Configs
let gitroot = system("git rev-parse --show-toplevel")

"Leaders and vimrc commands
let mapleader=","
nnoremap <Leader>ev :tabedit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

