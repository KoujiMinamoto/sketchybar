#!/bin/bash

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

sketchybar --add event brew_update \
           --add item brew left \
           --set brew icon="🍺" \
           --set brew icon.color=$GREEN \
           --set brew label="?" \
           --set brew padding_right=10 \
           --set brew script="$PLUGIN_DIR/brew.sh" \
           --subscribe brew brew_update