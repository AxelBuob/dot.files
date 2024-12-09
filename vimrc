" enter the current millenium
set nocompatible

" enable mouse support "
set mouse=a

" enable syntax "
syntax enable
filetype plugin indent on

" enable line numbers and ruler"
set number
set relativenumber
set ruler

" highlight current line "
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" enable highlight search pattern "
set hlsearch

" enable smartcase search sensitivity "
set ignorecase
set smartcase

" Indentation using spaces "
" tabstop:	width of tab character
" softtabstop:	fine tunes the amount of whitespace to be added
" shiftwidth:	determines the amount of whitespace to add in normal mode
" expandtab:	when on use space instead of tab
" textwidth:	text wrap width
" autoindent:	autoindent in new line
set tabstop	    =4
set softtabstop	=4
set shiftwidth	=4
set textwidth	=79
set expandtab
set autoindent

" show the matching part of pairs [] {} and () "
set showmatch

" remove trailing whitespace from Python"
autocmd BufWritePre *.py :%s/\s\+$//e

" enable color themes "
if !has('gui_running')
	set t_Co=256
endif

" enable true colors support "
set termguicolors
"set background=dark
colorscheme molokai

" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Reload a file when it is changed from the outside
set autoread

" Write the file when we leave the buffer
set autowrite

" Disable backups, we have source control for that
set nobackup

" Force encofing to utf-8, for systems where this is not default
set encoding=utf-8

" Disable swapfiles
set noswapfile

" Hide buffers instead of closing them
set hidden

" Show current mode
set showmode

" Set the minimal amount of lignes and above the current cursor
" Useful for keeping context when moving wuth j/k
set scrolloff=5

" Show command being executed
set showcmd

" Always show status line
set laststatus=2

" Color the column after textwidth, usually the 80th
set colorcolumn=+1

" Display whitespace characters
set list
set listchars=eol:¬,tab:>-,trail:\ 

" Set ',' as map leader
let mapleader = ","

" Remap <esc> to jk
inoremap œ <esc>

" Transparent background
hi Normal guibg=NONE ctermbg=NONE
