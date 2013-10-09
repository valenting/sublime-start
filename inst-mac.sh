#!/bin/bash

rm -f /usr/local/bin/subl
ln -s /opt/sublime2/sublime_text /usr/local/bin/subl

mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
cp config/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
cp config/user.sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap

