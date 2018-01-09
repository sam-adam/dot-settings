#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

for monitor in $(xrandr --listmonitors | grep -v Monitor | cut -d ' ' -f 6); do
# Launch bar1 and bar2
    [[ ! -z "$monitor" ]] && MONITOR="$monitor" polybar top &
    [[ ! -z "$monitor" ]] && MONITOR="$monitor" polybar bottom &
done

# Launch bar1 and bar2
polybar top &
polybar bottom &

echo "Bars launched..."
