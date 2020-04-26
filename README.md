# README #

_WINDOWS_
* Clone into root directory
* got to %HOMEPATH%
* mklink /D colors c:\vimfiles\colors
* install curl
* install git
* clone Vundle into vimfiles (follow instructions on vundle site)
* edit [underscore]vimrc and insert line source c:\vimconfig\vimrc.vim

_LINUX VIM_
- Clone into user directory
- .vimrc must point to vimrc.vim in vimconfig. us ln -s /home/[username]/vimconfig/vimvimrc.vim /home/[username]/.vimrc
- ln -s /home/[username]/vimconfig/colors /home/[username]/.vimfiles/colors

_LINUX NEOVIM_
- Clone into user directory
- .vimrc must point to vimrc.vim in vimconfig. us ln -s /home/[username]/vimconfig/nvimrc.vim /home/[username]/.config/nvim/init.vim
- ln -s /home/[username]/vimconfig/colors /home/[username]/.config/nvim/colors


_LINUX TMUX_
- /home/[username]/vimconfig/tmux.conf /home/[username]/.tmux.conf




