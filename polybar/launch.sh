#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# the other monitors
xrandr | grep ' connected ' | while read -r line ; do
	arr=($line)
	display=${arr[0]}
	p_bool=${arr[2]}
	if [ $p_bool != "primary" ]; then
		echo "Secondary Monitor: $display"
	        MONITOR=$display polybar -r secondary &
	else
 		echo "Primary Monitor: $display"
		MONITOR=$display polybar -r main &> ~/.cache/poly_logs &
	fi		
done

echo "Bars launched..."
