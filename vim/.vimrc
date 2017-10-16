" Misc
set nobomb
set cc=80                       " show vertical line
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
set colorcolumn=80
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

call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'powerline/powerline', {'rtp' : 'powerline/bindings/vim'}
call plug#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType vimwiki setlocal ts=4 sw=4 softtabstop=4 expandtab
let g:vimwiki_list = [{'path':'~/local/vimwiki', 'path_html':'~/local/vimwiki_html/'}]

set background=dark
set mouse=a
set splitbelow
set splitright
"let g:miniBufExplorerAutoStart = 0

" toggle invisible characters
set invlist
set listchars=tab:\|\ ,eol:\ ,space:\ ,trail:⋅,extends:❯,precedes:❮

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
