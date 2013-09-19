"execute pathogen#infect()

" Make Vim more useful
set nocompatible

" Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'

Bundle 'git://git.wincent.com/command-t.git'

Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set expandtab
set tabstop=3
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" Highlight current line
set cursorline
set cmdheight=1
set switchbuf=useopen
set showtabline=2
set winwidth=79
set shell=bash
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
" Centralize backups, swapfiles and undo history
set backup
set backupdir=~/.vim/backups,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/swaps,~/.tmp,~/tmp,/var/tmp,/tmp
if exists("&undodir")
	set undodir=~/.vim/undo,~/.tmp,~/tmp,/var/tmp,/tmp
endif
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" Show the (partial) command as it’s being typed
set showcmd

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Change mapleader
let mapleader=","

" Don’t add empty newlines at the end of files
set binary
set noeol

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")

	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

	" NerdTree
	autocmd vimenter * if !argc() | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	map <C-m> :NERDTreeToggle<CR>

endif

" Command-T
let g:CommandTMaxCachedDirectories=3
let g:CommandTMaxHeight=10
let g:CommandTMatchWindowAtTop=1
set wildignore+=app/cache/**,app/logs/**

" F2 + <number> Go to buffer
map <F2> :ls<CR>:b<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set t_Co=256 " 256 colors
:set background=dark
:color wombat

