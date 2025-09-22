#!/bin/bash

slack=(
  icon=":slack:"
  icon.font="sketchybar-app-font:Regular:16.0"
  icon.color=$MAGENTA
  label.drawing=on
  label.font="$FONT:Bold:12.0"
  label.color=$RED
  label.padding_left=1
  label.padding_right=1
  script="$PLUGIN_DIR/app_status.sh"
  click_script="open -a Slack"
  update_freq=10
)

sketchybar --add item slack right \
           --set slack "${slack[@]}" \
           --subscribe slack system_woke