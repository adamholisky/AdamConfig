#!/bin/bash

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
	*)
		echo "Usage: setup.sh {all|alacritty|tmux|zsh}"
		exit 1
		;;
esac

