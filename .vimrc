if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

call plug#begin('~/.vim/plugged')
Plug 'majutsushi/tagbar'
Plug 'dietsche/vim-lastplace'
Plug 'tpope/vim-sensible'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'powerline/fonts', { 'do': './install.sh' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
call plug#end()

if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

if filereadable(expand("~/.vimrc.prefs"))
  source ~/.vimrc.prefs
endif
