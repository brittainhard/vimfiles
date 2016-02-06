" Set Mapleader key
set t_Co=256
let mapleader=","
set textwidth=80
set cursorline
au BufWinEnter * match ErrorMsg '\%81v.'
" set wrapmargin=1
" Disable arrow keys for navigation
noremap <C-d> <NOP>
" Easily Open VIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>rc :w\|!xcrun clang -fcolor-diagnostics -Wall % -o /tmp/c.out && /tmp/c.out <cr>
noremap <leader>rp :w\|!python %<cr>
noremap <leader>ip :w\|!ipython -i %<cr>
noremap <leader>rm :w\|!make $(echo -E % \| grep -o '[^\.]*') <cr>
noremap <leader>gc :w\|!make $(echo -E % \| grep -o '[^\.]*') && gdb $(echo -E % \| grep -o '[^\.]*')<cr>
noremap <leader>lc :w\|!make $(echo -E % \| grep -o '[^\.]*') && lldb $(echo -E % \| grep -o '[^\.]*')<cr>
" Alphabetize some stuff!
nnoremap <leader>vs :vsplit \| E<cr>
nnoremap <leader>hs :split \| E<cr>
nnoremap <leader>te :tabedit \| E<cr>
nnoremap <leader>te :tabedit \| E<cr>
" Pasting!
set clipboard=unnamed
set statusline=%f
set statusline+=\ %y
set autochdir
" Syntax on!
syntax on
syntax enable
" Colorsheme & Fonts
colorscheme molokai
set background=dark
set guifont=Inconsolata\ for\ Powerline:h16
set linespace=0
"Removing sidebars
set guioptions-=e
set guioptions-=L
set guioptions-=r
" Auto-load vimrc changes
autocmd BufWritePost .vimrc source %
" Stops creating backups
set nobackup
set noswapfile
" Side Numbers
set relativenumber
set numberwidth=4
" Tab Stuff
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
" Pathogen!
set omnifunc=syntaxcomplete#Complete
filetype on
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
" Pymode stuff
let g:pymode_folding = 0
" OmniComplete
set omnifunc=syntaxcomplete#Complete
" folding plugin
set nofoldenable
map <f2> :w\|!coffee % <cr>
map <f3> :w\|!python -i % <cr>
map <f4> :w\|!python -m unittest discover <cr>
map <f5> :w\|!ipython -i % <cr>
map <f6> :w\|!mit-scheme -load % <cr>
map <f7> :!py.test<cr>
map <f8> :w\|!pep8 % -v <cr>
" Keybindings
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap " ""<Esc>:let leavechar="\""<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap [<CR> [<CR>]<c-o>O
inoremap {<CR> {<CR>}<c-o>O
inoremap [<CR> [<CR>]<c-o>O
inoremap (<CR> (<CR>)<c-o><<<c-o>O
" Wrap and use ctrl-j to escape to outside wrapping char.
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
" ctrl-p ignores
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd Filetype c setlocal ts=4 sts=4 sw=4 expandtab smarttab
" Rainbow Parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
