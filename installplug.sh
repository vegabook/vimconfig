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

# install tmux status line colour variables
# in bashrc if they do not exist
if grep -Fxq "TMUXSTATBG" $HOME/.bashrc
then
	:
else
	echo "" >> $HOME/.bashrc
	echo '# environment variables for tmux colours' >> $HOME/.bashrc
	echo 'export $TMUXSTATBG="#6655CC"' >> $HOME/.bashrc
	echo 'export $TMUXSTATFG="#EEEEEE"' >> $HOME/.bashrc
fi

# instructions to user
echo "---------------------------------------"
echo "Now got into (neo)vim and :PlugInstall"
echo ""
echo "environment variables $TMUXSTATFG and"
echo "$TMUXSTATBG can be used for Tmux "
echo "status line colours. They're in .basrhc"






