#!/bin/sh

if [ -e autostart.kde ] ; then
    mv autostart autostart.herb
    mv autostart.kde autostart
else
    mv autostart autostart.kde
    mv autostart.herb autostart
fi

