#!/bin/bash

# Define the URL of the wallpaper
wallpaperURL="https://eu-west-westspring-it.s3.eu-west-2.amazonaws.com/intune-content/desktop-wallpaper.jpeg"

# Define the path to save the wallpaper in /Users/Shared
wallpaperPath="/Users/Shared/desktop-wallpaper.jpeg"

# Download the wallpaper
curl -o "$wallpaperPath" "$wallpaperURL"

# Set the desktop wallpaper
osascript -e "tell application \"System Events\" to set picture of every desktop to \"$wallpaperPath\""