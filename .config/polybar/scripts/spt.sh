#!/bin/sh

if [ "$(spt pb 2> /dev/null)" ] ; then
    spt pb -f "%t"
else
    echo ""
fi


