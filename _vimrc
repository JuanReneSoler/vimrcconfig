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
set noshowmode "setea que la barra de comandos no se muestre en el modo insertar
set bs=indent,eol,start "setea las funcionalidades de la tecla backspace

"cargando pluggind con el gestor de paquetes Plug
call plug#begin('~/vimfiles/plugged')

"NerdTree Plug
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'


call plug#end()

"key maps
"nerdtree key maps
map <S-TAB> :NERDTreeFocus<CR>
imap <S-TAB> <ESC>:w<CR>:NERDTreeFocus<CR>

"control + s to save changes
imap <C-s> <ESC>:w<CR>a
map <C-s> :w<CR>


