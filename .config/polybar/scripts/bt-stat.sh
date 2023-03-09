#! /bin/sh

devices=$(bluetoothctl devices | grep Device | awk '{print $2}')

for dev in $devices ; do
    if [ $(bluetoothctl info $dev | grep Connected | sed 's/.*Connected: //g') = "yes" ] ; then
        name="$(bluetoothctl info $dev | grep Alias | sed 's/.*Alias: //g')"
        list=$list"$(echo $name | sed 's/ //g') "
    fi
done

echo $list
