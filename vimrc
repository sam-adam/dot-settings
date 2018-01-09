syntax on

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
set shell=/bin/bash

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'pearofducks/ansible-vim'
Plugin 'bling/vim-airline'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()

