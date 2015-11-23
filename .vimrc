call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'powerline/fonts', { 'do': './install.sh' }
call plug#end()

set shell=bash
filetype plugin indent on  

if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

if filereadable(expand("~/.vimrc.prefs"))
  source ~/.vimrc.prefs
endif
