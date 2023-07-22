#!/usr/bin/bash

file=`which github-desktop`

if [ ! $file ];then
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.8.1-linux2/GitHubDesktop-linux-2.8.1-linux2.deb &&
sudo dpkg -i GitHubDesktop-linux-2.8.1-linux2.deb
else
echo "installled at $file";

fi
