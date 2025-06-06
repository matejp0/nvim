call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/vim-markdown'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'mfussenegger/nvim-jdtls'
"

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ThePrimeagen/vim-be-good'
Plug 'amarakon/nvim-lua-script'

call plug#end()

let mapleader="\,"
set wrap linebreak
set nohls
set number relativenumber
set conceallevel=1
set tabstop=2
set expandtab
set clipboard+=unnamedplus
set mouse=a
set cursorline

set nocompatible
if has("autocmd")
  filetype plugin indent on
endif

" -------- THEMES ---------------
set background=dark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

source $HOME/.config/nvim/mappings.vim
"source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/lsp.vim

let g:vim_markdown_folding_style_pythonic = 1

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

let g:goyo_width = 120
let g:onedark_terminal_italics = 1

if (has("autocmd"))
  augroup colorextend
    autocmd!
    autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#16161d" } })
  augroup END
endif

let g:NERDTreeMinimalMenu=1

function! s:goyo_enter()
"  set spell spelllang=cs,en_us
endfunction

function! s:goyo_leave()
  set nospell
  let g:goyo_width = 120
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" lua require("unfocused-cursor").setup()


function! FillNextLineWithChar(char)
  let line = getline('.')
  let len = strdisplaywidth(line)
  call append(line('.'), repeat(a:char, len))
  :normal j$
endfunction

function! GoyoNarrow()
  let g:goyo_width = 60
  :Goyo
endfunction

" more slick


function! AddBlankLineAboveHash()
  let lnum = 1
  while lnum <= line('$')
    if getline(lnum) =~ '^#'
      call append(lnum - 1, '')
      let lnum += 1
    endif
    let lnum += 1
  endwhile
endfunction
