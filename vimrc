"Author: Nick Herrig
"Description: A minimal and effective .vimrc for development

"Essentials Starters
"---------------------------------------------------------------------------

set nocompatible           "sanley reset on source
filetype indent plugin on  "intelligent auto-indentation
syntax on                  "syntax hilighting

"Advanced Must Haves
"---------------------------------------------------------------------------

set hidden    "switch from unsaved buffer
set wildmenu  "better command-line completion
set showcmd   "show partial commands
set hlsearch  "higlight searches, <C-L> to turn off

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
set t_vb=                      "stop visualbell flashing
set mouse=a			"enable mouse, all modes
set cmdheight=2			"increases command window height
set number 			"show numbers on side

"Visuals
"---------------------------------------------------------------------------
colo delek                      "set color scheme
