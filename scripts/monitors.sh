#!/bin/bash

INTERNAL="DP-2"
EXTERNAL="HDMI-0"

if xrandr | grep -q "$EXTERNAL connected"; then
  xrandr --output "$EXTERNAL" --primary --mode 1920x1080 --rate 60 \
         --output "$INTERNAL" --mode 1920x1080 --rate 144 --right-of "$EXTERNAL"
  bspc monitor "$EXTERNAL" -d 1 2 3 4 5
  bspc monitor "$INTERNAL" -d 6 7 8 9 10
else
  xrandr --output "$EXTERNAL" --off --output "$INTERNAL" --mode 1920x1080 --rate 144
  bspc monitor "$INTERNAL" -d 1 2 3 4 5 6 7 8 9 10
fi

