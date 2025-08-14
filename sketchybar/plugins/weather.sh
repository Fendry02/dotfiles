sketchybar --set $NAME \
  label="Loading..." \
  icon.color=0xff5edaff

# Configuration Open-Meteo (gratuit, sans clé API)
LOCATION="Lyon"
LANG="fr"

# Get coordinates for Lyon (approximate)
LAT="45.7578"
LON="4.8320"

# Fetch weather data from Open-Meteo
WEATHER_JSON=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m,weather_code&timezone=auto&forecast_days=1")

# Fallback if empty
if [ -z "$WEATHER_JSON" ]; then
  sketchybar --set $NAME label="$LOCATION"
  return
fi

# Extract weather data
TEMPERATURE=$(echo $WEATHER_JSON | jq -r '.current.temperature_2m // empty' | cut -d. -f1)
WEATHER_CODE=$(echo $WEATHER_JSON | jq -r '.current.weather_code // empty')

# Map WMO weather codes to icons
get_weather_icon() {
  local code=$1
  
  case "$code" in
    0) echo "☀️" ;;
    1|2|3) echo "🌤" ;;
    45|48) echo "🌫" ;;
    51|53|55) echo "🌦" ;;
    56|57) echo "🌧" ;;
    61|63|65) echo "🌧" ;;
    66|67) echo "🌧" ;;
    71|73|75) echo "❄️" ;;
    77) echo "❄️" ;;
    80|81|82) echo "🌧" ;;
    85|86) echo "❄️" ;;
    95) echo "⛈" ;;
    96|99) echo "⛈" ;;
    *) echo "🌤" ;;
  esac
}

ICON=$(get_weather_icon "$WEATHER_CODE")

sketchybar --set $NAME \
  icon="$ICON" \
  label="$TEMPERATURE$(echo '°')C"
