set shell=bash
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required

if filereadable(expand("~/.vimrc.plugins"))
	source ~/.vimrc.plugins
endif

if filereadable(expand("~/.vimrc.prefs"))
	source ~/.vimrc.prefs
endif


