sketchybar --set $NAME \
  label="Loading..." \
  icon.color=0xff5edaff

# fetch weather data
LOCATION="Lyon"
REGION=""
LANG="fr"

# Line below replaces spaces with +
LOCATION_ESCAPED="${LOCATION// /+}+${REGION// /+}"
WEATHER_JSON=$(curl -s "https://wttr.in/$LOCATION_ESCAPED?0pq&format=j1&lang=$LANG")

# Fallback if empty
if [ -z $WEATHER_JSON ]; then
  sketchybar --set $NAME label="$LOCATION"
  return
fi

TEMPERATURE=$(echo $WEATHER_JSON | jq '.current_condition[0].temp_C' | tr -d '"')
#WEATHER_DESCRIPTION=$(echo $WEATHER_JSON | jq '.current_condition[0].weatherDesc[0].value' | tr -d '"' | sed 's/\(.\{16\}\).*/\1.../')
WEATHER_DESCRIPTION=$(echo $WEATHER_JSON | jq '.current_condition[0].lang_fr[0].value' | tr -d '"' | sed 's/\(.\{16\}\).*/\1.../')

# Get weather icon from API
WEATHER_ICON=$(echo $WEATHER_JSON | jq '.current_condition[0].weatherIconUrl[0].value' | tr -d '"')

# Map weather conditions to icons
get_weather_icon() {
  local condition=$(echo "$1" | tr '[:upper:]' '[:lower:]')
  
  case "$condition" in
    *"ensoleillé"*|*"soleil"*) echo "☀️" ;;
    *"nuageux"*|*"couvert"*) echo "☁️" ;;
    *"partiellement"*|*"variable"*) echo "🌤" ;;
    *"pluie"*|*"averse"*) echo "🌧" ;;
    *"orage"*|*"orageux"*) echo "⛈" ;;
    *"neige"*) echo "❄️" ;;
    *"brouillard"*|*"brume"*) echo "🌫" ;;
    *"vent"*) echo "💨" ;;
    *) echo "🌤" ;; # default
  esac
}

ICON=$(get_weather_icon "$WEATHER_DESCRIPTION")

sketchybar --set $NAME \
  icon="$ICON" \
  label="$TEMPERATURE$(echo '°')C • $WEATHER_DESCRIPTION"
