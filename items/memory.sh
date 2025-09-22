#!/bin/bash

memory_top=(
  label.font="$FONT:Semibold:6"
  label=MEM
  icon.drawing=off
  width=0
  padding_right=10
  y_offset=4
)

memory_percent=(
  label.font="$FONT:Heavy:10"
  label=MEM
  y_offset=-3
  padding_right=10
  width=45
  icon.drawing=off
  update_freq=4
  script="$PLUGIN_DIR/memory.sh"
)

memory_sys=(
  width=0
  graph.color=$RED
  graph.fill_color=$RED
  label.drawing=off
  icon.drawing=off
  background.height=30
  background.drawing=on
  background.color=$TRANSPARENT
)

memory_user=(
  graph.color=$BLUE
  label.drawing=off
  icon.drawing=off
  background.height=30
  background.drawing=on
  background.color=$TRANSPARENT
)

sketchybar --add item memory.top left              \
           --set memory.top "${memory_top[@]}"      \
                                                    \
           --add item memory.percent left          \
           --set memory.percent "${memory_percent[@]}"