#!/bin/sh

STATUS=$(acpi | cut -d ' ' -f 3 | sed -s "s/,//g")
PERCENT=$(acpi | cut -d ' ' -f 4 | sed -s "s/,//g")

if [ "$STATUS" = "Full" -o "$PERCENT" = "100%" ]; then
    exec notify-send -t 4000 Battery "Battery is full!"
fi

TIME=$(acpi | cut -d ' ' -f 5)
if [ "$STATUS" = "Charging" ]; then
    exec notify-send -t 4000 Battery "${TIME} until full"
else
    exec notify-send -t 4000 Battery "${TIME} until dead"
fi
