# vimrcconfig
this project is my file configuration of vim text editor

Note:
* this file is ready for vim version: 8.2.3394

Instalation:

1) install python in your pc and configure environment variable.

2) install vim and configure environment viable.

3) open PowerShell and locate the clone folder of this repo:

5) execute this command:

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

6) later:
execute this command:

xcopy .\_vimrc $home\

7) open vim and execute:

:PlugInstall

when finealy this proccess, restart vim.


