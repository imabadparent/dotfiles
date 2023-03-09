#!/bin/sh

network=$(nmcli --terse --fields name connection show --active)

notify-send -t 2000 "Connected to $network"

