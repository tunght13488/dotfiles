" ==============================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" ==============================================================================
" BEGIN Plugin
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'mileszs/ack.vim'
Plugin 'tyok/nerdtree-ack'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'
Plugin 'rstacruz/sparkup'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'croaker/mustang-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
" Plugin 'vim-scripts/YankRing.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'hukl/Smyck-Color-Scheme'
Plugin 'scrooloose/syntastic'
" Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/closetag.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'StanAngeloff/php.vim'
Plugin 'majutsushi/tagbar'
Plugin 'chrishunt/color-schemes'
Plugin 'joonty/vim-sauce'
Plugin 'roblillack/vim-bufferlist'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'tomasr/molokai'

" END Plugin
" ==============================================================================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ==============================================================================
" BEGIN VIM
set modelines=0

" Backup files
set backup
set undofile

silent execute '!mkdir -p $HOME/.vim/tmp/backup'
set backupdir=$HOME/.vim/tmp/backup " where to store backup
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
set directory=$HOME/.vim/tmp/swap " where to store swap
silent execute '!mkdir -p $HOME/.vim/tmp/views'
set viewdir=$HOME/.vim/tmp/views " where to store view
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set undodir=$HOME/.vim/tmp/undo " where to store undo

" syntax
syntax on
" filetype
filetype on
" filetype indent on
" filetype plugin on

" tabstop
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" show linenumbers
set number

" colorscheme
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
if has("gui_macvim")
    set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h13
endif
set background=dark
colorscheme molokai

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

" Wrap
" set nowrap
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80,120,150
set ruler

set history=100
set undolevels=1000

set showcmd
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>
set ignorecase
set smartcase
" set gdefault
nnoremap § :nohlsearch<cr>
set hidden
set nofoldenable
set scrolloff=3
set backspace=indent,eol,start
set smarttab
set shiftround
set list listchars=tab:>.,trail:.,extends:#,nbsp:.,eol:¬
set fillchars+=stl:\ ,stlnc:\
set timeout timeoutlen=1000 ttimeoutlen=100
set laststatus=2
" set statusline=%f\ %=%{fugitive#statusline()}L:%l/%L\ %c\ (%p%%)
set guioptions-=T
set encoding=utf-8
set autoread
if has('autocmd')
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
    " autocmd BufWritePre * :%s/\s\+$//e
endif
let mapleader=","
set autoindent
set copyindent
set showmatch
set showmode
set title
set visualbell
set noerrorbells
set pastetoggle=<F2>
nnoremap ; :
vmap Q gq
nmap Q gqap
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <silent> <leader>/ :nohlsearch<CR>
cmap w!! w !sudo tee % > /dev/null
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set relativenumber
au FocusLost * :wa
" ================
" KEY MAPPING
" vimrc
nnoremap <leader>ev <c-w><c-v>:e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
" Remove trailing space
noremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
" New vSplit
noremap <leader>n <C-w>v<C-w>1
inoremap jj <ESC>
" END VIM
" ==============================================================================
" BEGIN CtrP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.bak,*.pyc,*.class	" MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe	" Windows

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':	'\v[\/]\.(git|hg|svn|idea|sass-cache)$',
            \ 'file':	'\v\.(exe|so|dll|DS_Store)$',
            \ }

" let g:ctrlp_user_command = 'find %s -type f'	" MacOSX/Linux
let g:ctrlp_show_hidden=1
let g:ctrlp_max_height=30
let g:ctrlp_match_window_bottom=0
let g:ctrlp_match_window_reversed=0
let g:ctrlp_dotfiles=0
let g:ctrlp_switch_buffer=0
nnoremap <leader>. :CtrlPTag<cr>
" END CtrP
" ==============================================================================
" BEGIN NERDTree
map <c-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
if has('autocmd')
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
endif
" END NERDTree
" ==============================================================================
" BEGIN Ack
nnoremap <leader>a :Ack
" END Ack
" ==============================================================================
" BEGIN Commentary
if has('autocmd')
    autocmd FileType apache set commentstring=#\ %s
endif
" END Commentary
" ==============================================================================
" BEGIN YankRing
" nnoremap <silent> <F11> :YRShow<CR>
" END YankRing
" ==============================================================================
" BEGIN Syntastic
let g:syntastic_php_checkers = ['php']
" END Syntastic
" ==============================================================================
" BEGIN Powerline
" let g:Powerline_symbols='fancy'
" let g:Powerline_stl_path_style='short'
let g:airline_powerline_fonts = 1
" END Powerline
" ==============================================================================
" BEGIN EasyMotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline=0 " keep cursor colum when JK motion
let g:EasyMotion_smartcase=1
" END EasyMotion
" ==============================================================================
" BEGIN php.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags       phpDefine
  hi! def link phpDocParam      phpType
  " hi! def link phpDocIdentifier phpIdentifier
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
" END php.vim
" ==============================================================================
" BEGIN TagBar
nmap <F8> :TagbarToggle<CR>
" END TagBar
" ==============================================================================
" BEGIN bufferlist
map <silent> <F2> :call BufferList()<CR>
let g:BufferListWidth=30
let g:BufferListMaxWidth=50
hi BufferSelected term=reverse ctermfg=white ctermbg=red cterm=bold
hi BufferNormal term=NONE ctermfg=black ctermbg=darkcyan cterm=NONE
" END bufferlist
" ==============================================================================
" BEGIN vim-bookmarks
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
" let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines=1
let g:bookmark_auto_close=1
" END vim-bookmarks
" ==============================================================================
" BEGIN vim-gitgutter

" END vim-gitgutter
" ==============================================================================
" BEGIN supertab

" END supertab
" ==============================================================================
" BEGIN delimitMate
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1
imap <expr> <cr> pumvisible()
            \ ? "\<C-Y>"
            \ : "<Plug>delimitMateCR"
" END delimitMate
" ==============================================================================
" BEGIN terryma/vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<c-d>'
let g:multi_cursor_prev_key='<C-D>'
" let g:multi_cursor_skip_key=<c-x>
let g:multi_cursor_quit_key='<ESC>'
" END terryma/vim-multiple-cursors
