"Author: Nick Herrig
"Description: A personal .vimrc for programming

"Essentials Starters
"---------------------------------------------------------------------------

set nocompatible           "sanely reset on source
filetype indent plugin on  "intelligent auto-indentation
syntax on                  "syntax highlighting

"Advanced Must Haves
"---------------------------------------------------------------------------

set hidden          "switch from unsaved buffer
set wildmenu        "better command-line completion
set showcmd         "show partial commands
set incsearch       "jump to word whilst searching
set hlsearch        "highlight searches, <C-L> to turn off
set spell           "enable spell checking!
set spelllang=en_us "enable spell checking!

"Preferences
"---------------------------------------------------------------------------
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
set notimeout ttimeout ttimeoutlen=200 "set key code timeout, not mappings
nnoremap <CR> :nohlsearch<cr>          "stop hilight search with CR

"Visuals
"---------------------------------------------------------------------------
colo elflord                      "set color scheme

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

"Shortcut/Usability Notes
"---------------------------------------------------------------------------
"READLINE NOTES
" 
" Previous / Next line    ->  Ctrl-P  ↑↓  Ctrl-N
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
