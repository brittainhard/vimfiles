set textwidth=80
set expandtab
set foldmethod=indent
set autochdir
set noswapfile
set splitbelow
syntax on
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP> imap <Up> <NOP> imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>
set relativenumber

"Colors
colorscheme synthwave

"Deal with mac backspace problem.
set backspace=2
set backspace=indent,eol,start
"Cursors
highlight Folded ctermbg=2
highlight TabLine ctermbg=2
set cursorline
"highlight CursorLine ctermbg=23 cterm=NONE

"Filetypes
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4 
autocmd FileType c setlocal shiftwidth=4 tabstop=4 
autocmd FileType go setlocal shiftwidth=8 tabstop=8 
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType rkt setlocal shiftwidth=4 tabstop=4
"Configs
let GITROOT = system("git rev-parse --show-toplevel")

"Leaders and vimrc commands
let mapleader=","
nnoremap <Leader>ev :tabedit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>
nnoremap <Leader>rp :term python %<cr>
nnoremap <Leader>rip :term ipython -i %<cr>
nnoremap <Leader>rg :term go run %<cr>
nnoremap <Leader>rjs :term node %<cr>
nnoremap <Leader>rs :term scheme --quiet --load %<cr><c-d>
nnoremap <Leader>gr :cd `=GITROOT`<cr>:e 
nnoremap <Leader>grt :cd `=GITROOT`<cr>:tabedit 
nnoremap <Leader>grh :cd `=GITROOT`<cr>:sp 
nnoremap <Leader>grv :cd `=GITROOT`<cr>:vs 

set guioptions-=e  "make tabs look like the ones in the console."
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"Snippets
autocmd FileType c :iabbrev <buffer> mainc int<cr>main(int argc, char *argv[])<cr>{<cr>return 0;<cr>}<up><up>
autocmd FileType scheme :iabbrev defn (define (%))<Esc>F%s<c-o>:call getchar()<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/rainbow_parentheses.vim'

call vundle#end()            " required
filetype plugin indent on    " required

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
