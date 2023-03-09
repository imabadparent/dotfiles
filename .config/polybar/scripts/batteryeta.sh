TIME_LEFT=$(acpi | cut -d , -f 3)
HOUR=$(echo $TIME_LEFT | cut -d : -f 1)
MINUTE=$(echo $TIME_LEFT | cut -d : -f 2)
SECOND=$(echo $TIME_LEFT | cut -d : -f 3 | cut -d " " -f 1)
echo ${HOUR}:${MINUTE}:${SECOND}
