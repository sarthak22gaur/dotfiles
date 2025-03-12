#!/usr/bin/bash

# List of folders you want to process
folders=(
  "ags"
  "btop"
  "cava"
  "fastfetch"
  "hypr"
  "kitty"
  "Kvantum"
  "qt5ct"
  "qt6ct"
  "rofi"
  "swappy"
  "swaync"
  "wallust"
  "waybar"
  "wlogout"
)


# Base directory for Hyprland-Dots inside ~/dotfiles
base_dir="$HOME/dotfiles/Hyprland-Dots/.config"
# Backup directory inside ~/dotfiles
bkp_dir="$HOME/dotfiles/bkp"

# Create the base .config and backup directory if they don't exist
mkdir -p "$base_dir"
mkdir -p "$bkp_dir"

# Iterate over each folder and perform the necessary actions
for folder in "${folders[@]}"; do
  # Check if the folder exists in ~/.config
  if [ -d "$HOME/.config/$folder" ]; then
    # Copy the folder from ~/.config to ~/dotfiles/Hyprland-Dots/.config
    # cp -r "$HOME/.config/$folder" "$base_dir/"
    # cp -r "$HOME/.config/$folder" "$bkp_dir/"

    echo "Removing $folder from ~/.config..."
    rm -rf "$HOME/.config/$folder"
  else
    echo "Warning: ~/.config/$folder does not exist, skipping..."
  fi
done

echo "Folders processed and copied to ~/dotfiles/Hyprland-Dots/.config."
