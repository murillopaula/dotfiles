" Misc
set nobomb
set hlsearch                    " highlight all search patterns matches
set ignorecase                  " case insensitive searching
set smartcase                   " case-sensitive if contains capital
set number                      " show number of lines
set ruler                       " break if goes beyond the verical line
set whichwrap+=<,>,h,l
set autoread
set relativenumber
set showcmd                     " show incomplete commands
set nocompatible                " not compatible with vi
set pastetoggle=<F2>            " set paste toggle
set cursorline
set ai
set si
set smarttab
set laststatus=2                " always show the status bar
set tabstop=2                   " The width of a TAB is set to x.
set shiftwidth=2                " Indents will have a width of x
set softtabstop=2               " Sets the number of columns for a TAB
set expandtab                   " Expand TABs to spaces
set encoding=utf-8
set tw=80                       " Set text width for auto word wrapping
set scrolloff=8
set sidescrolloff=10
set wrap
set modeline
set incsearch                   " Search string while typing it
set nowrapscan                  " Stops search at EOF
set autochdir                   " Auto change dir to file directory
set clipboard+=unnamed
"set clipboard^=unnamedplus      " Use the OS clipboard by default
set nostartofline
set hidden
filetype on
filetype plugin indent on
filetype plugin on
syntax on

set mouse=a
set splitbelow
set splitright

" Set backup/undo dirs
set backupdir=~/.config/vim/tmp/backups//
set undodir=~/.config/vim/tmp/undo//

" Make the folders automatically if they don't already exist.
if !isdirectory(expand(&backupdir))
	call mkdir(expand(&backupdir), "p")
endif

if !isdirectory(expand(&undodir))
	call mkdir(expand(&undodir), "p")
endif

" Persistent Undo, Vim remembers everything even after the file is closed
set undofile
set undolevels=500
set undoreload=500

" Mappings
"<Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <F8> :setl noai nocin nosi inde=<CR>

" toggle search highlights
:noremap  <F4> :set hlsearch! hlsearch?<CR>
