#!/bin/bash

# Récupère le volume
volume=$(pamixer --get-volume)
muted=$(pamixer --get-mute)

if [ "$muted" = "true" ]; then
    echo "🔇"
else
    if [ "$volume" -lt 30 ]; then
        echo "🔈 $volume%"
    elif [ "$volume" -lt 70 ]; then
        echo "🔉 $volume%"
    else
        echo "🔊 $volume%"
    fi
fi

