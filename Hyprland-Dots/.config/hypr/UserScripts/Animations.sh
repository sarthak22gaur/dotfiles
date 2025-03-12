#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# For applying Animations from different users

# Check if rofi is already running
if pidof rofi > /dev/null; then
  pkill rofi
fi

# Variables
iDIR="$HOME/.config/swaync/images"
SCRIPTSDIR="$HOME/.config/hypr/scripts"
animations_dir="$HOME/.config/hypr/animations"
UserConfigs="$HOME/.config/hypr/UserConfigs"

# list of animation files
animations_list=$(find "$animations_dir" -maxdepth 1 -type f | sed 's/.*\///' | sed 's/\.conf$//')

# Rofi Menu
chosen_file=$(echo "$animations_list" | rofi -i -dmenu -config ~/.config/rofi/config-Animations.rasi "Choose animation:")

# Check if a file was selected
if [[ -n "$chosen_file" ]]; then
    # Find the full path of the chosen file
    full_path="$animations_dir/$chosen_file.conf"
    
    cp "$full_path" "$UserConfigs/UserAnimations.conf"
    
    notify-send -u low -i "$iDIR/ja.png" "$chosen_file" "Animation Loaded"
else
    notify-send -u low -i "$iDIR/ja.png" "You chose to" "NOT apply other animations"
fi

sleep 1
"$SCRIPTSDIR/RefreshNoWaybar.sh"
