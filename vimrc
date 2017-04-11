call plug#begin('~/.vim/plugged')
Plug 'gabebw/vim-spec-runner'
Plug 'christoomey/vim-tmux-runner'
Plug 'tpope/vim-rails'
" :Ag is like :grep but with `ag`
Plug 'rking/ag.vim'
" Easy commenting/uncommenting in many languages
Plug 'tomtom/tcomment_vim'
" <Tab> intelligently decides whether to autocomplete or indent
Plug 'ervandew/supertab'
" Auto-add `end` in Ruby and similar comparable phrases in other languages
Plug 'tpope/vim-endwise'
" Fuzzy find
Plug 'ctrlpvim/ctrlp.vim'
"" Automatically trim trailing whitespace on :write
" Plug 'derekprior/vim-trimmer'
Plug 'duggiefresh/vim-easydir'
" Make `.` repeat actions that plugins create too
Plug 'tpope/vim-repeat'
" Intelligently reopen files where you left off
Plug 'dietsche/vim-lastplace'
" New status bar
Plug 'vim-airline/vim-airline'
" Wrap selection with punctuation
Plug 'tpope/vim-surround'
" Move between Vim and tmux splits without determining the appropriate prefix
Plug 'christoomey/vim-tmux-navigator'
" Add the colors. All of theme
Plug 'flazz/vim-colorschemes'
" Install Papercolor colorscheme
Plug 'NLKNguyen/papercolor-theme'
" Install Emmet-Vim
Plug 'mattn/emmet-vim'
call plug#end()

set t_Co=256
set background=dark
colorscheme molokai
syntax enable

" Set indent to 2 spaces in any circumstance I can think of 
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

set number
set relativenumber

" Incremental search with highlighted results
set incsearch
set hlsearch

" Open splits to the bottom right instead of top left
set splitbelow splitright

" Smartcase search terms
set smartcase
set ignorecase

" Enable clipboard
set clipboard=unnamed

" Map leader to spacebar
let mapleader=" "
let g:spec_runner_dispatcher = 'VtrSendCommand! {command}'

" Open runner pane to the right, not to the bottom
let g:VtrOrientation = "h"
" " Take up this percentage of the screen
let g:VtrPercentage = 30

" Use <Leader>a to run the current spec file.
map <Leader>a <Plug>RunCurrentSpecFile
" Use <Leader>l to run the current line in a spec.
map <Leader>l <Plug>RunFocusedSpec

" Open vimrc in a split
nnoremap <Leader>.ve :sp $MYVIMRC<CR>
" Reload/re-source vimrc in current buffer
nnoremap <Leader>.vr :source $MYVIMRC<CR>
" Open zshrc in a split
nnoremap <Leader>.ze :sp $MYZSHRC<CR>
" Reload/re-source zshrc
nnoremap <Leader>.zr :!source $MYZSHRC<CR>
" Open tmuz in a split
nnoremap <Leader>.te :sp $MYTMUXCONF<CR>
" Reload/re-source zshrc
nnoremap <Leader>.tr :!source $MYTMUXCONF<CR>

nnoremap <Leader>n :nohl<CR>
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
