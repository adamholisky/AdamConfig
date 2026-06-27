#!/bin/bash
#
# Set up the dotfiles in AdamConfig
#
# Notes:
# ln -s <original file> <symbolic-link-file>

#
# Defines
#
HOME_DIR=/home/adam
CONFIG_DIR=/home/adam/AdamConfig

#
# Command Processing
#
CMD=${1:all}

do_setup_tmux() {
	ln -s $CONFIG_DIR/tmux/tmux.conf $HOME_DIR/.tmux.conf
	ln -s $CONFIG_DIR/tmuxp/ $HOME_DIR/tmuxp
}

do_setup_alacritty() {
	ln -s $CONFIG_DIR/alacritty/ $HOME_DIR/.config/alacritty
}

do_setup_zsh() {
	$CONFIG_DIR/zsh/setup-zsh-config.sh
}

do_setup_most() {
	ln -s $CONFIG_DIR/singles/mostrc $HOME_DIR/.mostrc
}

do_setup_albert() {
	ln -s $CONFIG_DIR/albert $HOME_DIR/.config/albert
}

do_setup_xfce() {
	ln -s $CONFIG_DIR/xfce4 $HOME_DIR/.config/xfce4
}

case "$CMD" in
	all)
		do_setup_alacritty
		;;
	alacritty)
		do_setup_alacritty
		;;
	tmux)
		do_setup_tmux
		;;
	zsh)
		do_setup_zsh
		;;
	most)
		do_setup_most
		;;
	albert)
		do_setup_albert
		;;
	xfce)
		do_setup_xfce
		;;
	*)
		echo "Usage: setup.sh {all|alacritty|albert|most|tmux|xfce|zsh}"
		exit 1
		;;
esac

