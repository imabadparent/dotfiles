#! /bin/sh

FI=`echo untitled | dmenu -p "new layout name" `
echo "$FI"
herbstclient dump > "${XDG_CONFIG_HOME:-$HOME/.config}"/herbstluftwm/layouts/$FI
