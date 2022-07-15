call plug#begin('~/vimplugins')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree' 
Plug 'ryanoasis/vim-devicons' 
Plug 'Xuyuanp/nerdtree-git-plugin' "Install NerdFonts
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "dotnet tool install --global csharp-ls
Plug 'mattn/emmet-vim'
Plug 'jlcrochet/vim-razor'
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

set encoding=UTF-8
set t_Co=256
set number
set mouse=a
set bs=indent,eol,start
set clipboard=unnamed
set cursorline
set colorcolumn=130
syntax enable
syntax sync fromstart
set showmatch "setea el parentesis que cierra al posicionarte sobre alguno
set matchtime=3
set autoindent
set sw=4 "espacios por indentacion
set background=dark
set updatetime=300
set laststatus=2
set showcmd
set ruler

syntax region csregion start=/#region/ end=/#endregion/
"highlight csregion guibg=Yellow
autocmd Syntax cs,js setlocal foldmethod=syntax

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
nmap <Leader>of <ESC>:OmniSharpCodeFormat
nmap <Leader>oca <ESC>:OmniSharpGetCodeActions

"omnisharp configuracion
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlighting = 3

" Coc GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"
autocmd BufNewFile,BufRead *.js,*.jsx,*.tsx set filetype=typescriptreact

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"debuger configuracion
let g:vimspector_enable_mappings = 'HUMAN'

"emmet configuracion
let g:user_emmet_install_global = 1
autocmd FileType html,htm,css,cshtml,cshtm EmmetInstall
let g:user_emmet_leader_key='<Tab>'

"devIcons configuration
let g:WebDevIconsNerdTreeGitPluginForceVAlign="on"

"coc configuration
let g:coc_global_extensions=[ 'coc-omnisharp', 'coc-json', 'coc-tsserver' ]
