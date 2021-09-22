#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# launch the foreground bars first to have them placed on top, it's not clear why this is so
polybar wall-tile-right 2>&1 | tee -a /tmp/polybar.log & disown
sleep 0.4s
polybar wall-tile-right-background 2>&1 | tee -a /tmp/polybar.log & disown

polybar wall-tile-left 2>&1 | tee -a /tmp/polybar.log & disown
sleep 0.4s
polybar wall-tile-left-background 2>&1 | tee -a /tmp/polybar.log & disown

polybar wall-tile-center-background 2>&1 | tee -a /tmp/polybar.log & disown

polybar misc-bar 2>&1 | tee -a /tmp/polybar.log & disown

#sleep 0.2s
#polybar dummy
