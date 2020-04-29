#!/bin/sh
sudo apt install git
sudo apt install neovim

# make necessary directories first
mkdir -p ~/scripts/tmux-yank
mkdir -p ~/.config/nvim

# vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux yank
git clone https://github.com/tmux-plugins/tmux-yank ~/scripts/tmux-yank

# now symbolic links
ln -s $HOME/vimconfig/nvimrc.vim $HOME/.config/nvim/init.vim
ln -s $HOME/vimconfig/colors $HOME/.config/nvim/colors
ln -s $HOME/vimconfig/tmux.conf $HOME/.tmux.conf

# instructions to user
echo "---------------------------------------"
echo "Now got into (neo)vim and :PlugInstall"
echo "environment variables $TMUXSTATFG and"
echo "$TMUXSTATBG can be used for Tmux "
echo "status line colours. They go in .bashrc"






