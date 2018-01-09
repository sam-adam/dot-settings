#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
DISPLAY1="$(xrandr -q | grep 'LVDS2' | cut -d ' ' -f1)"
[[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar top &
[[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar bottom &

DISPLAY2="$(xrandr -q | grep 'VGA2' | cut -d ' ' -f1)"
[[ ! -z "$DISPLAY2" ]] && MONITOR=$DISPLAY2 polybar top &
[[ ! -z "$DISPLAY2" ]] && MONITOR=$DISPLAY2 polybar bottom &

# Launch bar1 and bar2
polybar top &
polybar bottom &

echo "Bars launched..."
