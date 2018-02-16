set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Townk/vim-autoclose'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-syntastic/Syntastic'
Plugin 'majutsushi/Tagbar'
Plugin 'hushicai/tagbar-javascript.vim'
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'mileszs/ack.vim'
Plugin 'Quramy/tsuquyomi'

" OSX stupid backspace fix
set backspace=indent,eol,start

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
syntax on
set nu
set cursorline
set hidden
set t_Co=256
set colorcolumn=80,120
set mouse=a
colorscheme railscasts

" NERDTree
" open automatically
autocmd vimenter * NERDTree
" even if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" when opening on a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" close VIM when NERDTree is last open window
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Utility
" Remove trailing whitespaces
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.html,*.css,*.scss,*.sass,*.py,*.rb,*.sh %s/\s\+$//e

" Configure tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi']

" The Silver Searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" HOTKEYS
map <C-n> :NERDTreeToggle<CR>
map <M-]> :tabn<CR>
map <M-[> :tabp<CR>
map <C-Space> :FufFile<CR>
