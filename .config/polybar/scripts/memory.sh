#! /bin/sh

memused=$(neofetch memory | awk '{print $2}' | sed 's/MiB//')
memavail=$(neofetch memory | awk '{print $4}' | sed 's/MiB//')


