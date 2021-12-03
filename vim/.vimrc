" Author: Nick Herrig
" Description: A personal .vimrc for programming


" Essentials Starters
" ---------------------------------------------------------------------------

set nocompatible           "sanely reset on source
filetype indent plugin on  "intelligent auto-indentation
syntax on                  "syntax highlighting


" Advanced Must Haves
" ---------------------------------------------------------------------------

set hidden          "switch from unsaved buffer
set wildmenu        "better command-line completion
set showcmd         "show partial commands
set incsearch       "jump to word whilst searching
set hlsearch        "highlight searches, <C-L> to turn off
set mouse=a         "enable mouse support

" Preferences
" ---------------------------------------------------------------------------

set ignorecase                  "Use case insensitive search...
set smartcase     		"except when using capital letters
set backspace=indent,eol,start  "allow certain backspacing
set autoindent    		"keep indent, assuming no filetype specifics 
set nostartofline 		"stop some movements to first char in line
set ruler			"display cursor position
set laststatus=2		"always display status line
set confirm			"prompt save on failed command
set visualbell                  "visual bell, rather beeps
set t_vb=                       "stop visualbell flashing
set cmdheight=2			"increases command window height
set number 			"show numbers on side


"Mapping/Keycodes
"---------------------------------------------------------------------------

"set key code timeout, not mappings
set notimeout ttimeout ttimeoutlen=200 

"vsplit switch windows
map <Tab> <C-W>w


"Visuals
"---------------------------------------------------------------------------

colo desert            "set color scheme


"AUTO COMMANDS
"---------------------------------------------------------------------------

"This removes white space for c, python, and yml files
autocmd FileType c,python,yml autocmd BufWritePre <buffer> %s/\s\+$//e


"VIM TEMPLATES
"---------------------------------------------------------------------------

"Open python template on new .py file
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py 0r ~/.vim/templates/python.sh
  augroup END
endif

" vim-go settings and configuration for go development
" ---------------------------------------------------------------------------
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor
set updatetime=100


"Shortcut/Usability Notes
"---------------------------------------------------------------------------

"READLINE NOTES
" 
" Previous / Next line    ->  Ctrl-P  ↑↓  Ctrl-N/
" Back / Forward char     ->  Ctrl-B  ←→  Ctrl-F
" Back / Forward word     ->   Alt-B  ←→  Alt-F
" Beginning / End of line ->  Ctrl-A  ←→  Ctrl-E

"VIM TABS
"  	open multiple files  -> vim -p file-1 file-2i
"	open new tab         -> :tabedit
"  	tab right            -> gt
"  	tab left             -> gT

"SPELL CHECK
"	next misspelled word     -> ]s
"	previous misspelled word -> [s
"	add word to dict         -> zg 
" 	get suggested spelling   -> z=	

"EXPLORE/LEX
"	explore file dir                   -> :Explore 
"	explore file dir on left w/ editor -> :Lex 

"MACROS
"	record a macro to register b -> q {register} <key-strokes> q
