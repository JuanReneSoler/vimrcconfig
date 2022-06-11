call plug#begin('~/vimplugins')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug  'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()

set number
set mouse=a
set clipboard=unnamedplus
set colorcolumn=130
syntax enable
"syntax sync fromstart
set showcmd
set cursorline
set encoding=utf-8
set showmatch
set matchtime=3
set sw=4
set laststatus=2
set bs=indent,eol,start
set t_Co=256
set background=dark
set updatetime=1000
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"
colorscheme gruvbox
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinSize=50 
let g:NERDTreeDirArrowExpandable = '▸' 
let g:NERDTreeDirArrowCollapsible = '▾' 
let mapleader=" "
nmap <Leader><TAB> :NERDTreeFocus
nmap <Leader><TAB><TAB> :NERDTreeRefreshRoot
nmap <Leader><ESC> :NERDTreeClose
autocmd BufNewFile,BufRead *.js,*.jsx,*.tsx set filetype=typescriptreact
