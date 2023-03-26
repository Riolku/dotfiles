source /etc/vim/vimrc

set shiftwidth=2
set tabstop=2
set expandtab

syntax on
filetype plugin indent on

set incsearch

set relativenumber
set number

set tags+=~/.vim/systags

set directory^=$HOME/.vim/swap//
