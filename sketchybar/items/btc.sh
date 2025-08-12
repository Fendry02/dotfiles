#!/bin/sh

sketchybar -m --add item btc right \
              --set btc icon=💰 \
              --set btc icon.y_offset=2 \
              --set btc update_freq=60 \
              --set btc script="~/.config/sketchybar/plugins/btc.sh"