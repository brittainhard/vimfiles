" Set Mapleader key
set t_Co=256
let mapleader=","
set textwidth=80
au BufWinEnter * match ErrorMsg '\%81v.'
set wrapmargin=1
" Easily Open VIMRC
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
noremap <leader>rn :w\|!node %<cr>
noremap <leader>rg :w\|!go run %<cr>
noremap <leader>ndb :w\|!node debug %<cr>
noremap <leader>rp :w\|!python %<cr>
noremap <leader>ip :w\|!ipython -i %<cr>
noremap <leader>rm :w\|!make && ./a.out 
noremap <leader>gd :w\|!make && gdb ./a.out <cr>
noremap <leader>ld :w\|!make && lldb ./a.out <cr>
noremap <leader>sc :w\|!scm -f % <cr>
noremap <leader>gb :w\|!gulp build<cr>
noremap <leader>rc :w\|!make $(echo -E % \| grep -o '^[^\.]*') && ./$(echo -E % \| grep -o '^[^\.]*')<cr>
noremap <leader>vrc :w\|!make $(echo -E % \| grep -o '^[^\.]*') && valgrind ./$(echo -E % \| grep -o '^[^\.]*')<cr>
noremap <leader>mc :w\|!make $(echo -E % \| grep -o '^[^\.]*')<cr>
noremap <leader>arc :w\|!make $(echo -E % \| grep -o '^[^\.]*') && ./$(echo -E % \| grep -o '^[^\.]*') 
noremap <leader>avrc :w\|!make $(echo -E % \| grep -o '^[^\.]*') && valgrind ./$(echo -E % \| grep -o '^[^\.]*') 
noremap <leader>amc :w\|!make $(echo -E % \| grep -o '^[^\.]*') 
map <c-g> :echo "Line number" line(".") <cr>
" Alphabetize some stuff!
nnoremap <leader>vs :vsplit \| E<cr>
nnoremap <leader>hs :split \| E<cr>
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
colorscheme neonwave
set background=dark
set guifont=Ubuntu\ Mono\ derivative\ Powerline:h16
set linespace=0
set cursorline
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
autocmd Filetype go setlocal ts=8 sts=8 sw=8 expandtab smarttab
autocmd Filetype c setlocal ts=4 sts=4 sw=4 expandtab smarttab
" Rainbow Parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" Go plugin
let g:go_fmt_autosave = 0
" Airline -- again
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let airline#extensions#tabline#show_buffers = 0
set laststatus=2
