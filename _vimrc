"cargando pluggind con el gestor de paquetes Plug
call plug#begin('~/vimfiles/plugged')

"Theme (gruvbox)
Plug 'morhetz/gruvbox'

"NerdTree Plug
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'

"Omnisharp-Vim
Plug 'OmniSharp/omnisharp-vim'

" Mappings, code-actions available flag and statusline integration
Plug 'nickspoons/vim-sharpenup'

" Linting/error highlighting
Plug 'dense-analysis/ale'

"Autocompletion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'mattn/emmet-vim'

" Statusline
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'

"database
"Plug 'vim-scripts/dbext.vim'

"javascrip resaltado de sintaxis
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

call plug#end()

set number "setea numero a las lineas de vim
set mouse=a "habilita el uso del mouse
set numberwidth=1 "setea el ancho de los numeros
set clipboard=unnamed "setea que lo que compiemos quede en el clipboard de SO
syntax enable "habilita el resaltado de syntaxis
set showcmd "setea que se muestren los comando que se estan ejecutando
set ruler "setea que se muestre la posicion en la que esta el cursor
set cursorline "marca la linea en la que se encuentra el cursor
set encoding=utf-8 "setea en encoding de archivos
set showmatch "setea el parentesis que cierra al posicionarte sobre alguno
set sw=4 "setea el numero de espacios por indentacion
"set relativenumber "setea que se muestren las lineas por debajo y por encima de la posicion del cursor
set laststatus=2 "setear que la barra iferior siempre sea visible
set noshowmode "setea que la barra de comandos no se muestre en el modo insertar
set bs=indent,eol,start "setea las funcionalidades de la tecla backspace
set t_Co=256 "configura la consola para que use 256 colores //necesario para usar gruvbox
set background=dark "asigna color oscuro al background de la consola"
set updatetime=1000
"set autoread

"autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Theme config
colorscheme gruvbox "carga el tema
let g:gruvbox_contrast_dark="hard"

"NERDTree configuration
let NERDTreeQuitOnOpen=1 "cierra nerdtree automaticamente se habre un archivo
let g:NERDTreeWinSize=40 "modifica el ancho de la ventana de NERDTree
let g:NERDTreeDirArrowExpandable = '▸' "caracter asignado cuando un directorio esta cerrado
let g:NERDTreeDirArrowCollapsible = '▾' "caracter asignado para cuando un directorio esta abierto

" nerdtree-git-plugin configuration
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

"OmniSharp config
"let g:syntastic_cs_checkers = ['code_checker']
let g:OmniSharp_highlighting = 3
let g:OmniSharp_server_stdio = 1

"ALE config
let g:ale_fix_on_save = 1
let g:ale_sign_error = '*'
let g:ale_sign_warning = '?'
let g:ale_linters = {
 \ 'cs': ['OmniSharp']
 \}

" devicons config
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cs'] = 'c#'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'js'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = '</>'

"Autocompletion
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,popuphidden "controla los menu de autocomplecion que salen

"Emmet configuration
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<Space>'

"key maps
let mapleader=" " "tecla lider para los atajos de teclado
"set timeoutlen=200

"dbext.vim conect to Microsoft SQL Server
"let g:dbext_default_profile_mySql = 'type=SQLSRV:integratedlogin=1:srvname=deresil-05\serversil:dbname=master'
"let g:dbext_default_profile = 'mySql'


"nerdtree key maps
"imap <Leader>t <ESC>:w<CR>:NERDTreeRefreshRoot<CR>:NERDTreeFocus<CR>
"nmap <Leader>t :NERDTreeRefreshRoot<CR>:NERDTreeFocus<CR>
nmap <Leader><TAB> :NERDTreeFocus
nmap <Leader><TAB><TAB> :NERDTreeRefreshRoot
nmap <Leader><ESC> :NERDTreeClose

"save chan es key map
"imap <Leader>s <ESC>:w<CR>a
"nmap <Leader>s :w<CR>

"salir de vim - key map
"imap <Leader>ee <ESC>:q<CR>
"nmap <Leader>ee :q<CR>

"undo changes
"imap <Leader>u <ESC>:u<CR>a

"redo changes
"imap <Leader>r <ESC>:redo<CR>a

"entrar en modo normal
"imap <Leader>e <ESC>

"paste
"imap <Leader>v <ESC>p<CR>a

"modo movimiento entre ventanas
"imap <Leader><TAB> <ESC><C-w>
"nmap <Leader><TAB> <C-w>

"dbext.vim key mappings
"map <F5> <Space>se



