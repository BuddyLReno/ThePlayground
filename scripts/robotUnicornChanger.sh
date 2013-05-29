#!/bin/sh

echo "You should lock your computer."
echo "You should not blindly run scripts from the internet."
osascript -e 'tell application "Finder" to activate' -e 'tell application "System Events"' -e 'tell application process "Finder"' -e 'tell menu bar 1' -e 'click menu item "Hide Others" of menu of menu bar item "Finder"' -e 'click menu item "Minimize All" of menu of menu bar item "Window"' -e 'end tell' -e 'end tell' -e 'end tell'
cd ~/Desktop
curl -o youshouldlockyourcomputer.png http://images4.fanpop.com/image/photos/24100000/Robot-Unicorn-Wallpaper-unicorns-24171150-1920-1080.jpg
defaults write com.apple.desktop Background '{default = {ImageFilePath = "~/Desktop/youshouldlockyourcomputer.png"; }; }'
killall Dock
