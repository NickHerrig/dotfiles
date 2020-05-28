" Set the line history for VIM
set history=100

" set a leader for custom key combos
let mapleader = ","

" Enable filetype plugins
filetype plugin on

" Highlight search results
set hlsearch

" Show matching brackets when indicator is on them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set utf8 as the standard encoding
set encoding=utf8

" Use spaces instead of tabs
set expandtab

" 1 tab is 4 spaces
set shiftwidth=4
set tabstop=4

" Use h, j, k, and l to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Function to delete trailing white spaces.
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Clean whitespaces for specific files on save.
if has("autocmd")
    autocmd BufWritePre *.yml,*.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif"

" Support iterm2 high color mode
set t_Co=256

" Trying out the dracular theme
packadd! dracula
syntax enable
colorscheme dracula
