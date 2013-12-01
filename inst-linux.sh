#!/bin/bash

MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  tar jxf bin/linux/Sublime\ Text\ 2.0.2\ x64.tar.bz2
else
  tar jxf bin/linux/Sublime\ Text\ 2.0.2.tar.bz2
fi

sudo rm -rf /opt/sublime2
sudo mv Sublime\ Text\ 2 /opt/sublime2
sudo chmod -R 777 /opt/sublime2

sudo rm -f /usr/local/bin/subl
sudo ln -s /opt/sublime2/sublime_text /usr/local/bin/subl

mkdir -p ~/.config/sublime-text-2/Packages/User/
cp config/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/
cp config/user.sublime-keymap ~/.config/sublime-text-2/Packages/User/Default\ \(Linux\).sublime-keymap

cp config/sublime.desktop ~/.local/share/applications