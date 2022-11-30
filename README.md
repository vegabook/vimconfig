# README #

### _WINDOWS VIM_
* Clone into root directory
* got to %HOMEPATH%
* mklink /D colors c:\vimfiles\colors
* install curl
* install git
* clone Vundle into vimfiles (follow instructions on vundle site)
* edit [underscore]vimrc and insert line source c:\vimconfig\vimrc.vim

### _LINUX VIM_
- Clone into user directory
- .vimrc must point to vimrc.vim in vimconfig. us ln -s /home/[username]/vimconfig/vimvimrc.vim /home/[username]/.vimrc
- ln -s /home/[username]/vimconfig/colors /home/[username]/.vimfiles/colors

### _LINUX NEOVIM_
- Clone into user directory
- .vimrc must point to vimrc.vim in vimconfig:
ln -s /home/tbrowne/vimconfig/nvimrc.vim /home/tbrowne/.config/nvim/init.vim
ln -s /home/tbrowne/vimconfig/colors /home/tbrowne/.config/nvim/colors
ln -s /home/tbrowne/vimconfig/coc-settings.json /home/tbrowne/.config/coc-settings.json
- make sure that the above username tbrowne is appropriate


### _LINUX TMUX_
ln -s /home/tbrowne/vimconfig/tmux.conf /home/tbrowne/.tmux.conf
- clone tmux-yank into /home/[username]/scripts/




