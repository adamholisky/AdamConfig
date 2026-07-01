#!/bin/bash
CLASS="obsidian"
WIN=$(xdotool search --class "$CLASS" | head -1)

if [ -z "$WIN" ]; then
    obsidian &
    exit 0
fi

if xdotool getwindowfocus | grep -q "$WIN"; then
    xdotool windowunmap "$WIN"
else
    xdotool windowmap "$WIN"
    xdotool windowactivate "$WIN"
    xdotool windowstate --window "$WIN" --add above
fi
