#!/bin/sh
xrandr \
  --output eDP-1 \
  --primary \
  --mode 1920x1080 \
  --pos 0x1080 \
  --rotate normal \
  --output HDMI-2 \
  --mode 3840x2160 \
  --pos 1920x0 \
  --rotate normal \
