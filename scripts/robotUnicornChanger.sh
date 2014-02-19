#!/bin/sh

echo "You should not blindly run scripts from the internet."
osascript -e 'tell application "Finder" to activate' -e 'tell application "System Events"' -e 'tell application process "Finder"' -e 'tell menu bar 1' -e 'click menu item "Hide Others" of menu of menu bar item "Finder"' -e 'click menu item "Minimize All" of menu of menu bar item "Window"' -e 'end tell' -e 'end tell' -e 'end tell'
cd ~/Desktop
# Robot Unicorn
# curl -o youshouldlockyourcomputer.png http://i.imgur.com/JMflWrl.jpg
# Gawain
curl -o youshouldlockyourcomputer.png http://i.imgur.com/h5uCDt8.jpg
defaults write com.apple.desktop Background '{default = {ImageFilePath = "~/Desktop/youshouldlockyourcomputer.png"; }; }'
killall Dock
cd ~
curl -Lso .robotUnicornAlias http://bit.ly/robotunicornalias
source .robotUnicornAlias
source .bash_profile