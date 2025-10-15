#!/bin/bash

isCharging=$(cat /sys/class/power_supply/BAT0/status)
battery=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$isCharging" = "Charging" ]; then
    echo "⚡${battery}%"
else
    echo "${battery}%"
fi

