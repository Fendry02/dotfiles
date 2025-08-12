#!/bin/bash

#echo space.sh $'FOCUSED_WORKSPACE': $FOCUSED_WORKSPACE, $'SELECTED': $SELECTED, NAME: $NAME, SENDER: $SENDER  >> ~/aaaa

update() {
  source "$CONFIG_DIR/colors.sh"
  
  # Reset all spaces to default state
  for i in 1 2 3 4; do
    sketchybar --set space.$i label.highlight=false \
                      icon.highlight=false \
                      background.border_color=$BACKGROUND_1
  done
  
  # Highlight the focused workspace
  FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)
  if [ ! -z "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set space.$FOCUSED_WORKSPACE label.highlight=true \
                      icon.highlight=true \
                      background.border_color=$GREY
  fi
}

set_space_label() {
  sketchybar --set $NAME label.highlight=true
}

mouse_clicked() {
  if [ "$BUTTON" = "right" ]; then
    # yabai -m space --destroy $SID
    echo ''
  else
    if [ "$MODIFIER" = "shift" ]; then
      SPACE_LABEL="$(osascript -e "return (text returned of (display dialog \"Give a name to space $NAME:\" default answer \"\" with icon note buttons {\"Cancel\", \"Continue\"} default button \"Continue\"))")"
      if [ $? -eq 0 ]; then
        if [ "$SPACE_LABEL" = "" ]; then
          set_space_label "${NAME:6}"
        else
          set_space_label "${NAME:6} ($SPACE_LABEL)"
        fi
      fi
    else
      #yabai -m space --focus $SID 2>/dev/null
      #echo space.sh BUTTON: $BUTTON, $'SELECTED': $SELECTED, MODIFIER: $MODIFIER, NAME: $NAME, SENDER: $SENDER, INFO: $INFO, TEST: ${NAME#*.}, ${NAME:6} >> ~/aaaa
      aerospace workspace ${NAME#*.}
    fi
  fi
}

# echo plugin_space.sh $SENDER >> ~/aaaa
case "$SENDER" in
  "mouse.clicked") mouse_clicked
  ;;
  *) update
  ;;
esac
