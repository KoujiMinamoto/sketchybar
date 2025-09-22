#!/bin/bash

feishu=(
  icon=":iris:"
  icon.font="sketchybar-app-font:Regular:16.0"
  icon.color=$BLUE
  label.drawing=on
  label.font="$FONT:Bold:12.0"
  label.color=$RED
  label.padding_left=4
  label.padding_right=4
  script="$PLUGIN_DIR/app_status.sh"
  click_script="open -a Lark"
  update_freq=10
)

sketchybar --add item feishu right \
           --set feishu "${feishu[@]}" \
           --subscribe feishu system_woke