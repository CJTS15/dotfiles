#!/usr/bin/env bash

# Set this to your actual wallpapers folder
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Check if folder exists
if [[ ! -d "$WALLPAPER_DIR" ]]; then
  echo "Wallpaper directory not found: $WALLPAPER_DIR"
  exit 1

else
  # Let user choose a wallpaper using rofi
  SELECTED=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) \
    | sed "s|$HOME/Pictures/Wallpapers/||" \
    | rofi -dmenu -p "Choose Wallpaper" -config "~/.config/rofi/wallpapermenu/style-1.rasi")

  # If nothing selected, exit
  [[ -z "$SELECTED" ]] && exit 0

  # Resolve ~ to full path
  FULL_PATH="$HOME/Pictures/Wallpapers/${SELECTED}"

  # Set desktop wallpaper using gsettings for Cinnamon
  gsettings set org.cinnamon.desktop.background picture-uri "file://$FULL_PATH"
  
  notify-send "Wallpaper Updated!"
fi

# Update slick-greeter lockscreen (requires sudo)
GREETER_CONF="/etc/lightdm/slick-greeter.conf"

# Check if greeter config exists
if [[ -f "$GREETER_CONF" ]]; then
  sudo sed -i "s|^background=.*|background=/usr/share/backgrounds/Wallpapers/${SELECTED}|" "$GREETER_CONF" || {
    echo "Failed to update slick-greeter config"
    exit 1
  }
# Reload lightdm greeter settings (applies on next lock/login)
else
  echo "slick-greeter config not found."
fi

