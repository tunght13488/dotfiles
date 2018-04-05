set nocompatible    " be iMproved
" Vundle Pre-Setup {{{
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" }}}
" Vundle Plugins {{{

" Plug '29decibel/codeschool-vim-theme'
Plug 'airblade/vim-gitgutter'
"Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'chrishunt/color-schemes'
" Plug 'croaker/mustang-vim'
" Plug 'ervandew/supertab'
" Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
" Plug 'hukl/Smyck-Color-Scheme'
" Plug 'joonty/vim-sauce'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'
" Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'MattesGroeger/vim-bookmarks'
" Plug 'mattn/emmet-vim'
"Plug 'rking/ag.vim'
" Plug 'pangloss/vim-javascript'
"Plug 'roblillack/vim-bufferlist'
Plug 'scrooloose/syntastic'
Plug 'StanAngeloff/php.vim'
" Plug 'rayburgemeestre/phpfolding.vim'
" Plug '2072/PHP-Indenting-for-VIm'
Plug '2072/vim-syntax-for-PHP'
Plug 'terryma/vim-multiple-cursors'
"Plug 'tomasr/molokai'
" Plug 'tomtom/tlib_vim'
" Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-markdown'
"Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'docunext/closetag.vim'
Plug 'vim-scripts/The-NERD-tree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'editorconfig/editorconfig-vim'
"Plug 'maksimr/vim-jsbeautify'
"Plug 'einars/js-beautify'
" Plug 'wesQ3/vim-windowswap'
Plug 'stephpy/vim-php-cs-fixer'
"Plug 'sjl/gundo.vim'
Plug 'sjl/badwolf'
" Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-obsession'
Plug 'jremmen/vim-ripgrep'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ludovicchabant/vim-gutentags'
if has('nvim')
    Plug 'roxma/nvim-completion-manager'
    " Plug 'roxma/vim-hug-neovim-rpc'
else
    " Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --js-completer --rust-completer' }
endif
Plug 'phpactor/phpactor'
Plug 'roxma/ncm-phpactor'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'adoy/vim-php-refactoring-toolbox'
" joonty/vdebug
" tobyS/vmustache
" tobyS/pdv
Plug 'christoomey/vim-tmux-navigator'
Plug 'davisdude/vim-love-docs', { 'branch': 'build' }
Plug 'tpope/vim-endwise'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-expand-region'
Plug 'gregsexton/matchtag'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'blueyed/vim-diminactive'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'

" }}}
" Vundle Post-Setup {{{
call plug#end()
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
" nnoremap <leader>s :Obsession ~/.vim/session/<cr>
silent execute '!mkdir -p $HOME/.vim/session'
" }}}
" Colors {{{
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
" set background=dark
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    if (has("termguicolors"))
        " set termguicolors
    endif
endif
" let base16colorspace=256  " Access colors present in 256 colorspace

colorscheme onedark
" let g:onedark_terminal_italics=1
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox
" colorscheme molokai
" colorscheme badwolf
" colorscheme base16-default-dark
" colorscheme jellybeans
" colorscheme solarized
" colorscheme material-theme
" colorscheme palenight
" colorscheme nord
" let g:nord_italic = 1
" let g:nord_italic_comments = 1
" let g:nord_uniform_status_lines = 1
syntax on   " enable syntax processing

" palenight
highlight ColorColumn ctermbg=238 guibg=#2C323C
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
set smarttab        " insert space in front of a line follow shiftwidth
set shiftround      " round indent to multiple of shiftwidth
set autoindent      " copy indent from current line for new line
set copyindent      " use existing indent chars
set backspace=indent,eol,start  " backspace over indentation, end of line, and start of insert
set list listchars=eol:¬,tab:>-,trail:.,extends:>,precedes:<,nbsp:% " show whitespaces
" }}}
" UI {{{
if has("gui_running")
    " fonts
    if has("gui_macvim")
        " set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h12
        set guifont=Inconsolata-dz\ for\ Powerline:h12
    elseif has("gui_gtk")
        set guifont=Inconsolata-dz\ Medium\ 12
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
    " sizes
    set lines=999 columns=999
endif
set number                      " show linenumbers
set relativenumber              " use relative number
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set wildmode=list:longest,full  " list all match, complete till longest common string, then complete the next full match
set lazyredraw                  " redraw only when we need to
set showmatch                   " highlight matching bracklets
set wrap                        " wrap text inside window
" set textwidth=79                " max width to insert
set textwidth=0                 " disable auto break to new line
set formatoptions=qr1           " automatic format
                                " q = format comment with "gq"
                                " r = automatically insert comment leader after <ENTER> in INSERT mode
                                " 1 = don't break line after one-letter word
set colorcolumn=80,120,150      " highlighted columns
set ruler                       " line and column of current cursor
set scrolloff=3                 " min lines above and below cursor
set fillchars+=stl:\ ,stlnc:\   " fill statusline and vertical separators
                                " stl fill statusline current window
                                " stlnc fill statusline of non-current windows
set laststatus=2                " always show statusline
set guioptions-=T               " remove toolbar
set guioptions-=r               " removes right hand scroll bar
set guioptions-=L               " removes left hand scroll bar (when there's vertically split window
set cpoptions+=$                " puts a $ marker for the end of words/lines in cw/c$ commands
set showmode                    " show current mode
set title                       " set title
set visualbell                  " use visual bell instead of beeping
set noerrorbells                " no bell for error message
set ttyfast                     " fast terminal connection
" }}}
" Buffer {{{
set hidden  " hide the buffer when it's abandoned
set confirm " ask to save buffers on exit
" " Open new empty buffer
" nmap <leader>T :enew<cr>
" " Next buffer
" nmap <leader>l :bnext<cr>
" " Previous buffer
" nmap <leader>h :bprevious<cr>
" " Close current buffer and move to previous one
" nmap <leader>bq :bp <bar> bd #<cr>
" " Show all open buffers and their status
" nmap <leader>bl :ls<cr>
" }}}
" Searching {{{
" set "very magic" mode. All chars in pattern beside 0-9a-zA-Z_ have special meaning
" nnoremap / /\v
" vnoremap / /\v
" turn off search highlight
nnoremap <silent> <leader>/ :nohlsearch<cr>
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
set modelines=1
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
au FocusLost * :wa                      " write all buffers on focus lost
" }}}
" Autogroups {{{
augroup configgroup
  autocmd!
  " autocmd VimEnter * highlight clear SignColumn
  " autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
  "   \:call <SID>StripTrailingWhitespaces()
  " autocmd FileType java setlocal noexpandtab
  " autocmd FileType java setlocal list
  " autocmd FileType java setlocal listchars=tab:+\ ,eol:-
  " autocmd FileType java setlocal formatprg=par\ -w80\ -T4
  " autocmd FileType php setlocal expandtab
  " autocmd FileType php setlocal list
  " autocmd FileType php setlocal listchars=tab:+\ ,eol:-
  " autocmd FileType php setlocal formatprg=par\ -w80\ -T4
  " autocmd FileType javascript setlocal tabstop=2
  " autocmd FileType javascript setlocal tabstop=2
  " autocmd FileType javascript setlocal shiftwidth=2
  " autocmd FileType ruby setlocal softtabstop=2
  " autocmd FileType ruby setlocal shiftwidth=2
  " autocmd FileType ruby setlocal softtabstop=2
  " autocmd FileType ruby setlocal commentstring=#\ %s
  " autocmd FileType python setlocal commentstring=#\ %s
  " autocmd BufEnter *.cls setlocal filetype=java
  " autocmd BufEnter *.zsh-theme setlocal filetype=zsh
  " autocmd BufEnter Makefile setlocal noexpandtab
  " autocmd BufEnter *.sh setlocal tabstop=2
  " autocmd BufEnter *.sh setlocal shiftwidth=2
  " autocmd BufEnter *.sh setlocal softtabstop=2
  " autocmd FileType apache set commentstring=#\ %s
  autocmd FileType lua setlocal softtabstop=2
  autocmd FileType lua setlocal shiftwidth=2
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
" let g:powerline_pycmd = 'py3'
" set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim
" }}}
" vim-airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}
" CtrlP {{{
" let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/*,*.so,*.swp,*.zip,*.bak,*.pyc,*.class  " Linux/MacOSX
set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*.so,*.swp,*.zip,*.bak,*.pyc,*.class    " Windows ('noshellslash')
let g:ctrlp_custom_ignore = {
            \ 'dir':	'\v[\/](\.(git|hg|svn|idea|sass-cache|tmp)|node_modules|bower_components|cache|log|logs|generation|page_cache|session|composer_home|view_preprocessed|dist)$',
            \ 'file':	'\v\.(exe|so|dll|DS_Store)$',
            \ }
" let g:ctrlp_lazy_update = 1
let g:ctrlp_map = '<leader>p'
" nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>bb :CtrlPBuffer<cr>
nnoremap <leader>bm :CtrlPMixed<cr>
nnoremap <leader>bs :CtrlPMRU<cr>
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = "rg --files --no-ignore --hidden --follow --glob '!.git/*'"
    " let g:ctrlp_user_command = 'rg %s --files --color=never --glob "!.git/*" --no-ignore --hidden --fixed-strings'
    " let g:ctrlp_user_command = 'rg %s --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color=never'
    let g:ctrlp_use_caching = 0
elseif executable('ag')
    let g:ctrlp_user_command = 'ag %s --hidden -l --nocolor -g ""'
endif
" }}}
" vim-buffergator {{{
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1
" Looper buffers
"let g:buffergator_mru_cycle_loop = 1
" Go to the previous buffer open
nmap <leader>bj :BuffergatorMruCyclePrev<cr>
" Go to the next buffer open
nmap <leader>bk :BuffergatorMruCycleNext<cr>
" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>
" Shared bindings from Solution #1 from earlier
nmap <leader>bn :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>
" }}}
" NERDTree {{{
" ctrl+n to toggle NERDTree
map <leader>n :NERDTreeToggle<cr>
" ignore files and folders
let g:NERDTreeIgnore = ['\.git$', '\.idea$', '\~$']
" let g:NERDTreeQuitOnOpen = 1    " close on open
let g:NERDTreeShowHidden = 1    " show hidden files
let g:NERDTreeWinPos = "left"  " tree on the right
let g:NERDTreeWinSize = 30      " window size
let NERDTreeDirArrows = 1       " use right and down arrow for folders
" automatically open NERDTree if there's nothing to edit
if has('autocmd')
    " autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
endif
" }}}
" Syntastic {{{
" " map non-standard filetypes
" " let g:syntastic_filetype_map = { "latex": "tex",
" "             \ "gentoo-metadata": "xml" }
" let g:syntastic_filetype_map = {}
" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" EasyMotion {{{
" map <leader> <Pug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_startofline = 0  " keep cursor colum when JK motion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_prompt = '{n}>>> '
nmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
map <leader>l <Plug>(easymotion-lineforward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>h <Plug>(easymotion-linebackward)
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
nmap <leader>t :TagbarToggle<cr>
" let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
" }}}
" Bufferlist {{{
" map <silent> <F2> :call BufferList()<cr>
" let g:BufferListWidth = 30
" let g:BufferListMaxWidth = 50
" hi BufferSelected term=reverse ctermfg=white ctermbg=red cterm=bold
" hi BufferNormal term=NONE ctermfg=black ctermbg=darkcyan cterm=NONE
" }}}
" vim-jsbeautify {{{
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
" autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
" autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
" }}}
" vim-php-cs-fixer {{{
" php-cs-fixer 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
" let g:php_cs_fixer_cache = ".php_cs.cache"  " options: --cache-file
" let g:php_cs_fixer_config_file = '.php_cs'  " options: --config

let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 0   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.
" nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<cr>
" nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<cr>
" }}}
" gundo.vim {{{
" " toggle gundo
" nnoremap <leader>u :GundoToggle<cr>
" let g:gundo_preview_bottom = 1
" }}}
" closetag.vim {{{
" autocmd FileType html,xml,xsl source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
" }}}
" YouCompleteMe {{{
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'
" let g:ycm_server_python_interpreter = '/home/tung/.pyenv/versions/2.7.14/bin/python2.7'
" }}}
" vim-windowswap {{{
" let g:windowswap_map_keys = 0 "prevent default bindings
" nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<cr>
" nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<cr>
" nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<cr>
" }}}
" YankRing {{{
" nnoremap <silent> <F11> :YRShow<cr>
" }}}
" vim-bookmarks {{{
let g:bookmark_no_default_key_mappings = 1
nmap <leader>mm <Plug>BookmarkToggle
nmap <leader>mi <Plug>BookmarkAnnotate
nmap <leader>ma <Plug>BookmarkShowAll
nmap <leader>mn <Plug>BookmarkNext
nmap <leader>mp <Plug>BookmarkPrev
nmap <leader>mc <Plug>BookmarkClear
nmap <leader>mx <Plug>BookmarkClearAll
nmap <leader>mkk <Plug>BookmarkMoveUp
nmap <leader>mjj <Plug>BookmarkMoveDown
nmap <leader>mg <Plug>BookmarkMoveToLine
" highlight BookmarkSign ctermbg=NONE ctermfg=160
" highlight BookmarkLine ctermbg=194 ctermfg=NONE
" let g:bookmark_sign = '♥'
" let g:bookmark_highlight_lines=1
" let g:bookmark_auto_close=1
" }}}
" vim-multiple-cursors {{{
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<c-n>'
let g:multi_cursor_prev_key='<c-p>'
let g:multi_cursor_skip_key='<c-x>'
let g:multi_cursor_quit_key='<esc>'
" }}}
" ag.vim {{{
" " open ag.vim
" nnoremap <leader>a :Ag
" }}}
" FZF {{{
" " --column: Show column number
" " --line-number: Show line number
" " --no-heading: Do not show file headings in results
" " --fixed-strings: Search term as a literal string
" " --ignore-case: Case insensitive search
" " --no-ignore: Do not respect .gitignore, etc...
" " --hidden: Search hidden files and folders
" " --follow: Follow symlinks
" " --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" " --color: Search color options
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
" nnoremap <c-p> :Files<cr>
" }}}
" vim-startify {{{
let g:startify_bookmarks = [
            \ {'cv': '~/.vimrc'},
            \ {'cz': '~/.zshrc'},
            \ ]
let g:startify_commands = [
            \ {'u': ':PlugUpdate'},
            \ ]
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
            \ 'bundle/.*/doc',
            \ ]
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
" }}}
" vim-ripgrep {{{
nnoremap <leader>f :Rg<space>
let g:rg_derive_root = 1
" }}}
" tabular {{{
if exists(":Tabularize")
    nmap <leader>a :Tabularize<space>/
    vmap <leader>a :Tabularize<space>/
    nmap <leader>a= :Tabularize /=<cr>
    vmap <leader>a= :Tabularize /=<cr>
    nmap <leader>a: :Tabularize /:\zs<cr>
    vmap <leader>a: :Tabularize /:\zs<cr>
endif
" }}}
" editorconfig-vim {{{
let g:EditorConfig_exclude_patterns = [
            \ 'fugitive://.*',
            \ 'scp://.*',
            \ ]
" }}}
" rainbow_parentheses.vim {{{
if exists(":RainbowParenthesesToggle")
    au VimEnter * :RainbowParenthesesToggle
    au Syntax * :RainbowParenthesesLoadRound
    au Syntax * :RainbowParenthesesLoadSquare
    au Syntax * :RainbowParenthesesLoadBraces
    au Syntax * :RainbowParenthesesLoadChevrons
endif
" }}}
" vim-php-refactoring-toolbox {{{
let g:vim_php_refactoring_use_default_mapping = 0
" let g:vim_php_refactoring_auto_validate_sg = 1
" let g:vim_php_refactoring_auto_validate_rename = 1
" let g:vim_php_refactoring_auto_validate_visibility = 1
" let g:vim_php_refactoring_default_property_visibility = 'private'
" let g:vim_php_refactoring_default_method_visibility = 'private'
let g:vim_php_refactoring_make_setter_fluent = 1

nnoremap <leader>rlv :call PhpRenameLocalVariable()<cr>
nnoremap <leader>rcv :call PhpRenameClassVariable()<cr>
nnoremap <leader>rm :call PhpRenameMethod()<cr>
nnoremap <leader>reu :call PhpExtractUse()<cr>
vnoremap <leader>rec :call PhpExtractConst()<cr>
nnoremap <leader>rep :call PhpExtractClassProperty()<cr>
vnoremap <leader>rem :call PhpExtractMethod()<cr>
nnoremap <leader>rnp :call PhpCreateProperty()<cr>
nnoremap <leader>rdu :call PhpDetectUnusedUseStatements()<cr>
vnoremap <leader>r== :call PhpAlignAssigns()<cr>
nnoremap <leader>rsg :call PhpCreateSettersAndGetters()<cr>
nnoremap <leader>rcog :call PhpCreateGetters()<cr>
nnoremap <leader>rda :call PhpDocAll()<cr>
" }}}
" vim-tmux-navigator {{{
let g:tmux_navigator_disable_when_zoomed = 1
" }}}
" ultisnips {{{
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
" }}}
" nvim-completion-manager {{{
" inoremap <expr> <cr> (pumvisible() ? "\<c-y>\<cr>" : "\<cr>")
" }}}
" vim-indent-guides {{{
let g:indent_guides_enable_on_vim_startup = 1
" }}}
" delimitMate {{{
" let delimitMate_expand_cr = 2
" let delimitMate_expand_space = 1
" let delimitMate_jump_expansion = 1
" let g:delimitMate_expand_cr=1
" let g:delimitMate_expand_space=1
" imap <expr> <cr> pumvisible()
"             \ ? "\<C-Y>"
"             \ : "<Plug>delimitMateCR"
" }}}
" vim-expand-region {{{
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
" }}}
" vim-diminactive {{{
let g:diminactive_enable_focus = 1
" }}}
" phpfolding.vim {{{
" let g:DisableAutoPHPFolding = 1
" map <F5> <Esc>:EnableFastPHPFolds<Cr>
" map <F6> <Esc>:EnablePHPFolds<Cr>
" map <F7> <Esc>:DisablePHPFolds<Cr>
" }}}

" vim:foldmethod=marker:foldlevel=0
