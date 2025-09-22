#!/bin/bash

discord=(
  icon=":discord:"
  icon.font="sketchybar-app-font:Regular:16.0"
  icon.color=0xff5865f2
  label.drawing=on
  label.font="$FONT:Bold:12.0"
  label.color=$RED
  label.padding_left=4
  label.padding_right=4
  script="$PLUGIN_DIR/app_status.sh"
  click_script="open -a Discord"
  update_freq=10
)

sketchybar --add item discord right \
           --set discord "${discord[@]}" \
           --subscribe discord system_woke