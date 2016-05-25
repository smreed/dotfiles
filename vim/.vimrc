if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

call plug#begin('~/.vim/plugged')
" Usability, misc.
Plug 'tpope/vim-sensible'
Plug 'dietsche/vim-lastplace'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'

" UI
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" NERD
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

" color schemes, themes, etc
Plug 'powerline/fonts', { 'do': './install.sh' }
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/vim-tomorrow-theme'

" golang
Plug 'fatih/vim-go'

" json
Plug 'elzr/vim-json', { 'for': 'json' }

" yaml
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }

call plug#end()

if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

if filereadable(expand("~/.vimrc.prefs"))
  source ~/.vimrc.prefs
endif
