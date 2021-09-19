"cargando pluggind con el gestor de paquetes Plug
call plug#begin('~/vimfiles/plugged')

"Theme (gruvbox)
Plug 'morhetz/gruvbox'
"Plug 'gruvbox-community/gruvbox'


"NerdTree Plug
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'


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
set sw=2 "setea el numero de espacios por indentacion
set relativenumber "setea que se muestren las lineas por debajo y por encima de la posicion del cursor
set laststatus=2 "setear que la barra iferior siempre sea visible
"set noshowmode "setea que la barra de comandos no se muestre en el modo insertar
set bs=indent,eol,start "setea las funcionalidades de la tecla backspace
set t_Co=256 "configura la consola para que use 256 colores //necesario para usar gruvbox

"Theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

"NERDTree configuration
let NERDTreeQuitOnOpen=1 "cierra nerdtree automaticamente se habre un archivo
let g:NERDTreeWinSize=40

"key maps
let mapleader=" " "tecla lider para los atajos de teclado

"nerdtree key maps
map <Leader>t :NERDTreeFocus<CR>
"imap <S-TAB> <ESC>:w<CR>:NERDTreeFocus<CR>

"control + s to save changes
map <Leader>w :w<CR>
"imap <C-s> <ESC>:w<CR>a

map <Leader>e :q<CR>

