call plug#begin('~/vimplugins')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} ":CocInstall coc-json coc-tsserver
Plug 'mattn/emmet-vim'
Plug  'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"snips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"debuger
Plug 'puremourning/vimspector' "para debuger C# => :VimspectorInstall netcoredbg
 			       "parar javascript y demas ir a github

call plug#end()

set encoding=utf-8
set t_Co=256
set number
set mouse=a
set bs=indent,eol,start
set clipboard=unnamedplus
set cursorline
set colorcolumn=130
set laststatus=2 "barra inferior siempre visiable
syntax enable
syntax sync fromstart
set showcmd
set showmatch "setea el parentesis que cierra al posicionarte sobre alguno
set matchtime=3
set sw=4 "espacios por indentacion
set background=dark
set updatetime=300

"comprtamiento del cursor en modo normal e insertar
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"configuracion del tema
colorscheme gruvbox

"nerdtree configuracion
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinSize=50 
let g:NERDTreeDirArrowExpandable = '▸' 
let g:NERDTreeDirArrowCollapsible = '▾' 
let mapleader=" "
nmap <Leader><TAB> :NERDTreeFocus
nmap <Leader><TAB><TAB> :NERDTreeRefreshRoot
nmap <Leader><ESC> :NERDTreeClose

"
autocmd BufNewFile,BufRead *.js,*.jsx,*.tsx set filetype=typescriptreact

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"debuger configuracion
let g:vimspector_enable_mappings = 'HUMAN'

"emmet configuracion
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<Space>'



