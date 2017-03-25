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
Plug 'itchyny/lightline.vim'
" Wrap selection with punctuation
Plug 'tpope/vim-surround'
call plug#end()

silent! colorscheme molokai
syntax enable

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2


set number
set relativenumber

set incsearch
set hlsearch

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

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
