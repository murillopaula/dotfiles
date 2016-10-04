" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" Misc
set cc=72              " show vertical line
set hlsearch            " highlight all search patterns matches
set ignorecase          " case insensitive searching
set smartcase           " case-sensitive if expresson contains a capital letter
set number              " show number of lines
set ruler               " break if it goes beyond the verical line
set whichwrap+=<,>,h,l
set autoread
set showcmd             " show incomplete commands
set nocompatible        " not compatible with vi
set pastetoggle=<F2>    " set paste toggle
set cursorline
set ai
set si
set smarttab
set laststatus=2    " always show the status bar
set tabstop=2       " The width of a TAB is set to x.
set shiftwidth=2    " Indents will have a width of x
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab      " Expand TABs to spaces
set encoding=utf-8
set tw=72           " Set the text width for automatic word wrapping
set wrap
set modeline
set colorcolumn=72
set incsearch           " Search string while typing it
set nowrapscan          " Stops search at EOF
set autochdir                   " Auto change dir to file directory
set clipboard+=unnamedplus      " Use the OS clipboard by default
set nostartofline
set hidden
filetype on
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
"Plug 'tpope/vim-fugitive'
"Plug 'weynhamz/vim-plugin-minibufexpl'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
call plug#end()
syntax enable
filetype plugin indent on

" Automatic commands
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType vimwiki setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

"vim-airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
colorscheme bubblegum-256-dark
set background=dark
let g:jellybeans_use_term_italics = 1
let g:jellybeans_use_lowcolor_black = 1
let g:jellybeans_use_term_background_color = 1
set mouse=a
set splitbelow
set splitright
"let g:miniBufExplorerAutoStart = 0

" toggle invisible characters
set invlist
set listchars=tab:\|\ ,eol:\ ,space:\ ,trail:⋅,extends:❯,precedes:❮

" nvim configs
if has("nvim")
	let g:terminal_color_0  = '#2d2d2d'
	let g:terminal_color_1  = '#c98e8f'
	let g:terminal_color_2  = '#8ea68e'
	let g:terminal_color_3  = '#c2ac7f'
	let g:terminal_color_4  = '#6b88a4'
	let g:terminal_color_5  = '#978097'
	let g:terminal_color_6  = '#5f9898'
	let g:terminal_color_7  = '#d3d0c8'
	let g:terminal_color_8  = '#747369'
	let g:terminal_color_9  = '#c26d70'
	let g:terminal_color_10 = '#6b996b'
	let g:terminal_color_11 = '#c79e4d'
	let g:terminal_color_12 = '#416890'
	let g:terminal_color_13 = '#6b4c6b'
	let g:terminal_color_14 = '#3d8888'
	let g:terminal_color_15 = '#f2f0ec'
endif

" Improve Neovim startup time by disabling python and host check
let g:python_host_skip_check = 1
let g:loaded_python_provider = 1
let g:loaded_python3_provider = 1

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

" Persistent Undo, Vim remembers everything even after the file is closed.
set undofile
set undolevels=500
set undoreload=500

" Mappings
"<Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <F8> :setl noai nocin nosi inde=<CR>
let g:ctrl_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Greek
map! <C-v>GA Γ
map! <C-v>DE Δ
map! <C-v>TH Θ
map! <C-v>LA Λ
map! <C-v>XI Ξ
map! <C-v>PI Π
map! <C-v>SI Σ
map! <C-v>PH Φ
map! <C-v>PS Ψ
map! <C-v>OM Ω
map! <C-v>al α
map! <C-v>be β
map! <C-v>ga γ
map! <C-v>de δ
map! <C-v>ep ε
map! <C-v>ze ζ
map! <C-v>et η
map! <C-v>th θ
map! <C-v>io ι
map! <C-v>ka κ
map! <C-v>la λ
map! <C-v>mu μ
map! <C-v>xi ξ
map! <C-v>pi π
map! <C-v>rh ρ
map! <C-v>si σ
map! <C-v>ta τ
map! <C-v>ps ψ
map! <C-v>om ω
map! <C-v>ph ϕ

" Math
map! <C-v>ll →
map! <C-v>hh ⇌
map! <C-v>kk ↑
map! <C-v>jj ↓
map! <C-v>= ∝
map! <C-v>~ ≈
map! <C-v>!= ≠
map! <C-v>!> ⇸
map! <C-v>~> ↝
map! <C-v>>= ≥
map! <C-v><= ≤
map! <C-v>0  °
map! <C-v>ce ¢
map! <C-v>*  •
map! <C-v>co ⌘
