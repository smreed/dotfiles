if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'powerline/fonts', { 'do': './install.sh' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

if filereadable(expand("~/.vimrc.prefs"))
  source ~/.vimrc.prefs
endif
