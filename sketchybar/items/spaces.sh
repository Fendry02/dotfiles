#!/bin/sh

#SPACE_ICONS=("1" "2" "3" "4")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sketchybar --add event aerospace_workspace_change
sketchybar --add event space_change
#echo $(aerospace list-workspaces --monitor 1 --visible no --empty no) >> ~/aaaa

for m in $(aerospace list-monitors | awk '{print $1}'); do
  # Create 4 fixed workspaces
  for i in 1 2 3 4; do
    sid=$i
    space=(
      space="$sid"
      icon="$sid"
      icon.highlight_color=$RED
      icon.padding_left=5
      icon.padding_right=5
      display=$m
      label.padding_right=0
      label.color=$GREY
      label.highlight_color=$WHITE
      label.font="$FONT:Regular:13.0"
      script="$PLUGIN_DIR/space.sh"
    )

    sketchybar --add space space.$sid left \
               --set space.$sid "${space[@]}" \
               --subscribe space.$sid mouse.clicked aerospace_workspace_change
  done
done