" Vundle Pre-Setup {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" }}}
" Vundle Plugins {{{

" Plugin '29decibel/codeschool-vim-theme'
Plugin 'airblade/vim-gitgutter'
"Plugin 'altercation/vim-colors-solarized'
" Plugin 'bling/vim-airline'
" Plugin 'chrishunt/color-schemes'
" Plugin 'croaker/mustang-vim'
" Plugin 'ervandew/supertab'
" Plugin 'garbas/vim-snipmate'
" Plugin 'godlygeek/tabular'
" Plugin 'honza/vim-snippets'
" Plugin 'hukl/Smyck-Color-Scheme'
" Plugin 'joonty/vim-sauce'
"Plugin 'kien/ctrlp.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'majutsushi/tagbar'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'MattesGroeger/vim-bookmarks'
" Plugin 'mattn/emmet-vim'
"Plugin 'rking/ag.vim'
" Plugin 'pangloss/vim-javascript'
"Plugin 'Raimondi/delimitMate'
"Plugin 'roblillack/vim-bufferlist'
"Plugin 'scrooloose/syntastic'
"Plugin 'StanAngeloff/php.vim'
" Plugin 'terryma/vim-multiple-cursors'
"Plugin 'tomasr/molokai'
" Plugin 'tomtom/tlib_vim'
" Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
"Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-markdown'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-surround'
" Plugin 'docunext/closetag.vim'
Plugin 'vim-scripts/The-NERD-tree'
"Plugin 'editorconfig/editorconfig-vim'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'einars/js-beautify'
"Plugin 'Valloric/YouCompleteMe'
" Plugin 'wesQ3/vim-windowswap'
"Plugin 'stephpy/vim-php-cs-fixer'
"Plugin 'sjl/gundo.vim'
Plugin 'sjl/badwolf'
" Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" }}}
" Vundle Post-Setup {{{
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
" }}}
" Leader {{{
let mapleader=","   " leader is comma
" escape
inoremap jk <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" edit vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<cr>
" reload vimrc
nnoremap <leader>sv :so $MYVIMRC<cr>
" edit zshrc bindings
nnoremap <leader>ez :vsp ~/.zshrc<cr>
" save session
" nnoremap <leader>s :mksession<cr>
" }}}
" Colors {{{
" if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
"     set t_Co=256
" endif
" set background=dark

" colorscheme molokai
colorscheme badwolf
" colorscheme solarized
syntax enable   " enable syntax processing

" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=3   ctermfg=1
" highlight Search       ctermbg=1   ctermfg=3
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=3   ctermfg=1
" highlight SpellBad     ctermbg=0   ctermfg=1
" }}}
" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per tab
set softtabstop=4   " number of spaces tab will be translated to
set expandtab       " tabs are spaces
set shiftwidth=0    " indent by tapstop
" set smarttab        " insert space in front of a line follow shiftwidth
" set shiftround      " round indent to multiple of shiftwidth
" set autoindent      " copy indent from current line for new line
" set copyindent      " use existing indent chars
set backspace=indent,eol,start  " backspace over indentation, end of line, and start of insert
set list listchars=eol:¬,tab:>-,trail:.,extends:>,precedes:<,nbsp:% " show whitespaces
" }}}
" UI {{{
if has("gui_macvim")
    " set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h12
    set guifont=Inconsolata-dz\ for\ Powerline:h12
endif
set number                  " show linenumbers
set relativenumber          " use relative number
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
set wildmenu                " visual autocomplete for command menu
set wildmode=list:longest   " list all match, complete till longest common string
set lazyredraw              " redraw only when we need to
set showmatch               " highlight matching bracklets
set wrap                    " wrap text inside window
" set textwidth=79            " max width to insert
set textwidth=0             " disable auto break to new line
set formatoptions=qr1       " automatic format
                            " q = format comment with "gq"
                            " r = automatically insert comment leader after <ENTER> in INSERT mode
                           " 1 = don't break line after one-letter word
set colorcolumn=80,120,150  " highlighted columns
set ruler                   " line and column of current cursor
set hidden                  " hide the buffer when it's abandoned
set scrolloff=3             " min lines above and below cursor
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
" set guioptions-=T           " remove toolbar
" set guioptions-=r           " removes right hand scroll bar
" removes left hand scroll bar (when there's vertically split window
" set guioptions-=L
set cpoptions+=$            " puts a $ marker for the end of words/lines in cw/c$ commands
set showmode                " show current mode
set title                   " set title
set visualbell              " use visual bell instead of beeping
set noerrorbells            " no bell for error message
set ttyfast                 " fast terminal connection
" }}}
" Searching {{{
" set "very magic" mode. All chars in pattern beside 0-9a-zA-Z_ have special meaning
nnoremap / /\v
vnoremap / /\v
" turn off search highlight
nnoremap <silent> <leader>/ :nohlsearch<CR>
" nnoremap § :nohlsearch<cr>
nnoremap <leader><space> :noh<cr>
set ignorecase  " ignore case while search
set smartcase   " search exact case if pattern contains upper case
" set gdefault    " substitute all match
set incsearch   " search as characters are entered
set hlsearch    " highlight matches
" }}}
" Folding {{{
set foldenable          " enable folding
set foldlevelstart=5    " open most folds by default
set foldnestmax=5       " nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent
" set foldlevel=0
set modelines=0
" }}}
" Movement {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" no more arrow
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" move to the beginning/end of line
" nnoremap B ^
" nnoremap E $
" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" }}}
" Functionalities {{{
set history=100                             " command history to keep
set timeout timeoutlen=1000 ttimeoutlen=100 " timeout for command
set updatetime=100                          " delay 100ms before write to swap
set encoding=utf-8                          " set encoding
set autoread                                " detect external changes to files
set pastetoggle=<F2>                        " toggle paste mode
" faster command
nnoremap ; :
" sudo write
cmap w!! w !sudo tee % > /dev/null
" set spell spellang=en_us
" Remove trailing space
noremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
" New vSplit
noremap <leader>w <C-w>v<C-w>1
" }}}
" Backups {{{
silent execute '!mkdir -p $HOME/.vim/tmp/backup'
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
silent execute '!mkdir -p $HOME/.vim/tmp/views'
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set backup
set backupdir=$HOME/.vim/tmp/backup     " where to store backup
set backupskip=/tmp/*,/private/tmp/*    " not to backup
set directory=$HOME/.vim/tmp/swap       " where to store swap
set viewdir=$HOME/.vim/tmp/views        " where to store view
set undodir=$HOME/.vim/tmp/undo         " where to store undo
set writebackup
set undolevels=1000
set undofile
au FocusLost * :wa  " write all buffers on focus lost
" }}}
" Autogroups {{{
augroup configgroup
  autocmd!
  autocmd VimEnter * highlight clear SignColumn
  " autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
  "   \:call <SID>StripTrailingWhitespaces()
  autocmd FileType java setlocal noexpandtab
  autocmd FileType java setlocal list
  autocmd FileType java setlocal listchars=tab:+\ ,eol:-
  autocmd FileType java setlocal formatprg=par\ -w80\ -T4
  autocmd FileType php setlocal expandtab
  autocmd FileType php setlocal list
  autocmd FileType php setlocal listchars=tab:+\ ,eol:-
  autocmd FileType php setlocal formatprg=par\ -w80\ -T4
  autocmd FileType javascript setlocal tabstop=2
  autocmd FileType javascript setlocal tabstop=2
  autocmd FileType javascript setlocal shiftwidth=2
  autocmd FileType ruby setlocal softtabstop=2
  autocmd FileType ruby setlocal shiftwidth=2
  autocmd FileType ruby setlocal softtabstop=2
  autocmd FileType ruby setlocal commentstring=#\ %s
  autocmd FileType python setlocal commentstring=#\ %s
  autocmd BufEnter *.cls setlocal filetype=java
  autocmd BufEnter *.zsh-theme setlocal filetype=zsh
  autocmd BufEnter Makefile setlocal noexpandtab
  autocmd BufEnter *.sh setlocal tabstop=2
  autocmd BufEnter *.sh setlocal shiftwidth=2
  autocmd BufEnter *.sh setlocal softtabstop=2
  autocmd FileType apache set commentstring=#\ %s
augroup END
" }}}
" Custom funtions {{{
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
" }}}
" Other {{{
" set statusline=%f\ %=%{fugitive#statusline()}L:%l/%L\ %c\ (%p%%)
" if has('autocmd')
"     autocmd BufReadPost *
"         \ if line("'\"") > 0 && line("'\"") <= line("$") |
"         \   exe "normal g`\"" |
"         \ endif
"     " autocmd BufWritePre * :%s/\s\+$//e
" endif
" vmap Q gq
" nmap Q gqap
" }}}
" Tmux {{{
" allows cursor change in tmux mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" Powerline {{{
set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim
" }}}
" CtrlP {{{
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_show_hidden = 1
" set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/*,*.so,*.swp,*.zip,*.bak,*.pyc,*.class  " Linux/MacOSX
" set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*.so,*.swp,*.zip,*.bak,*.pyc,*.class    " Windows ('noshellslash')
" let g:ctrlp_custom_ignore = {
"             \ 'dir':	'\v[\/](\.(git|hg|svn|idea|sass-cache|tmp)|node_modules|bower_components|cache|log|logs|generation|page_cache|session|composer_home|view_preprocessed|dist)$',
"             \ 'file':	'\v\.(exe|so|dll|DS_Store)$',
"             \ }
" let g:ctrlp_user_command = 'ag %s --hidden -l --nocolor -g ""'
" " let g:ctrlp_lazy_update = 1
" nnoremap <leader>. :CtrlPTag<cr>
" }}}
" NERDTree {{{
" ctrl+n to toggle NERDTree
map <c-n> :NERDTreeToggle<CR>
" ignore files and folders
let g:NERDTreeIgnore = ['\.git$', '\.idea$', '\~$']
let g:NERDTreeQuitOnOpen = 1    " close on open
let g:NERDTreeShowHidden = 1    " show hidden files
let g:NERDTreeWinPos = "left"  " tree on the right
let g:NERDTreeWinSize = 30      " window size
let NERDTreeDirArrows = 1       " use right and down arrow for folders
" automatically open NERDTree if there's nothing to edit
if has('autocmd')
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
endif
" }}}
" Syntastic {{{
" " map non-standard filetypes
" " let g:syntastic_filetype_map = { "latex": "tex",
" "             \ "gentoo-metadata": "xml" }
" let g:syntastic_filetype_map = {}
" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
" }}}
" EasyMotion {{{
" map <Leader> <Plug>(easymotion-prefix)
" let g:EasyMotion_do_mapping = 0
" let g:EasyMotion_startofline = 0  " keep cursor colum when JK motion
" let g:EasyMotion_smartcase = 1
" nmap s <Plug>(easymotion-s)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
" map <Leader>l <Plug>(easymotion-lineforward)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>h <Plug>(easymotion-linebackward)
" }}}
" php.vim {{{
" function! PhpSyntaxOverride()
"     hi! def link phpDocTags       phpDefine
"     hi! def link phpDocParam      phpType
"     " hi! def link phpDocIdentifier phpIdentifier
" endfunction

" augroup phpSyntaxOverride
"     autocmd!
"     autocmd FileType php call PhpSyntaxOverride()
" augroup END
" }}}
" TagBar {{{
" nmap <F8> :TagbarToggle<CR>
" let g:tagbar_left = 1
" let g:tagbar_width = 30
" let g:tagbar_autofocus = 1
" }}}
" Bufferlist {{{
" map <silent> <F2> :call BufferList()<CR>
" let g:BufferListWidth = 30
" let g:BufferListMaxWidth = 50
" hi BufferSelected term=reverse ctermfg=white ctermbg=red cterm=bold
" hi BufferNormal term=NONE ctermfg=black ctermbg=darkcyan cterm=NONE
" }}}
" maksimr/vim-jsbeautify {{{
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
" autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
" autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
" }}}
" stephpy/vim-php-cs-fixer {{{
" let g:php_cs_fixer_level = "symfony"            " which level ?
" let g:php_cs_fixer_config = "default"           " configuration
" let g:php_cs_fixer_php_path = "php"             " Path to PHP
" " let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
" let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
" let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
" let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.
" }}}
" sjl/gundo.vim {{{
" " toggle gundo
" nnoremap <leader>u :GundoToggle<CR>
" let g:gundo_preview_bottom = 1
" }}}
" Raimondi/delimitMate {{{
" let delimitMate_expand_cr = 2
" let delimitMate_expand_space = 1
" let delimitMate_jump_expansion = 1
" }}}
" docunext/closetag.vim {{{
" autocmd FileType html,xml,xsl source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
" }}}
" Valloric/YouCompleteMe {{{
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'
" let g:ycm_server_python_interpreter = '/home/tung/.pyenv/versions/2.7.14/bin/python2.7'
" }}}
" wesQ3/vim-windowswap {{{
" let g:windowswap_map_keys = 0 "prevent default bindings
" nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
" nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
" nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
" }}}
" YankRing {{{
" nnoremap <silent> <F11> :YRShow<CR>
" }}}
" vim-bookmarks {{{
" highlight BookmarkSign ctermbg=NONE ctermfg=160
" highlight BookmarkLine ctermbg=194 ctermfg=NONE
" let g:bookmark_sign = '♥'
" let g:bookmark_highlight_lines=1
" let g:bookmark_auto_close=1
" }}}
" delimitMate {{{
" let g:delimitMate_expand_cr=1
" let g:delimitMate_expand_space=1
" imap <expr> <cr> pumvisible()
"             \ ? "\<C-Y>"
"             \ : "<Plug>delimitMateCR"
" }}}
" terryma/vim-multiple-cursors {{{
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_next_key='<c-d>'
" let g:multi_cursor_prev_key='<C-D>'
" " let g:multi_cursor_skip_key=<c-x>
" let g:multi_cursor_quit_key='<ESC>'
" }}}
" rking/ag.vim {{{
" " open ag.vim
" nnoremap <leader>a :Ag
" }}}

" vim:foldmethod=marker:foldlevel=0
