#!/bin/bash

letsvpn=(
  icon=":vim:"
  icon.font="sketchybar-app-font:Regular:16.0"
  icon.color=$GREEN
  label.drawing=off
  script="$PLUGIN_DIR/app_status.sh"
  click_script="open -a LetsVPN"
  update_freq=10
)

sketchybar --add item letsvpn right \
           --set letsvpn "${letsvpn[@]}" \
           --subscribe letsvpn system_woke