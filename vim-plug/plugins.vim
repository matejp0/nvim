call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Discraction-free writing
    Plug 'junegunn/goyo.vim'

    Plug 'masukomi/vim-markdown-folding'

call plug#end()
