#! /bin/sh

SEL=`ls "${XDG_CONFIG_HOME:-$HOME/.config}"/herbstluftwm/layouts | dmenu -p "layout"`
herbstclient load "$(cat ${XDG_CONFIG_HOME:-$HOME/.config}/herbstluftwm/layouts/$SEL)"
