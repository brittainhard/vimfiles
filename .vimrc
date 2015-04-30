" Set Mapleader key
set t_Co=256
let mapleader=","
" Disable arrow keys for navigation
noremap <C-d> <NOP>
" Easily Open VIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Alphabetize some stuff!
vnoremap <Leader>s :sort<CR
" Pasting!
set clipboard=unnamed
" Syntax on!
syntax on
syntax enable
" Colorsheme & Fonts
colorscheme wells-colors
set background=dark
set guifont=Ubuntu\ Mono\ derivative\ Powerline:h18
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
" set cursorline
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
" Powerline
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
"let g:Powerline_symbols = 'fancy'
" Pymode stuff
let g:pymode_folding = 0
" OmniComplete
set omnifunc=syntaxcomplete#Complete
" folding plugin
set nofoldenable
" Multiple Cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-n>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
map <f2> :w\|!coffee % <cr>
map <f3> :w\|!python -i % <cr>
map <f4> :w\|!python -m unittest discover <cr>
map <f5> :w\|!ipython -i % <cr>
map <f6> :w\|!mit-scheme -load % <cr>
map <f7> :!py.test<cr>
map <f8> :w\|!pep8 % -v <cr>
" Keybindings
inoremap {<CR> {<CR>}<c-o>O
inoremap [<CR> [<CR>]<c-o>O
inoremap (<CR> (<CR>)<c-o><<<c-o>O
inoremap ({<CR> ({<CR>});<c-o>O
inoremap {)<CR> {<CR>});<c-o>O
"Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" ctrl-p ignores
set wildignore+=*.pyc
let g:ctrlp_custom_ignore = 'node_modules'
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2 expandtab smarttab
execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=0
" Airline
let g:airline_powerline_fonts = 1
