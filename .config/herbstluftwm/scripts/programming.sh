#! /bin/sh

hc() {
    herbstclient "$@"
}


cd $HOME/doc/code
alacritty -e nvim $HOME/doc/code &
sleep 0.2
hc load "$(cat ${XDG_CONFIG_HOME:-$HOME/.config}/herbstluftwm/layouts/programming)"
hc focus right
alacritty --working-directory $HOME/doc/code/ &
sleep 0.2
hc focus left
