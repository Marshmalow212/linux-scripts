file=`which wget`
if [ ! $file ];then
sudo apt install wget -y 

else echo "$file";
fi

file=`which nginx`
if [ ! $file ];then
sudo apt install nginx -y 

else echo "$file";
fi

file=`which git`
if [ ! $file ];then
sudo apt install git -y 

else echo "$file";
fi

file=`nvm -v`
if [ ! $file ];then
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

else echo "$file";
fi

file=`which pluma`
if [ ! $file ];then
sudo apt install pluma -y 

else echo "$file";
fi

file=`which rhythmbox`
if [ ! $file ];then
sudo apt install rhythmbox -y 

else echo "$file";
fi

file=`which vlc`
if [ ! $file ];then
sudo snap install vlc
echo `which vlc`

else echo "$file";
fi

file=`which code`
if [ ! $file ];then
sudo snap install code --classic
echo `which code`

else echo "$file";
fi

file=`which libreoffice`
if [ ! $file ];then
sudo snap install libreoffice

else echo "$file installed";
fi

file=`which mc`
if [ ! $file ];then
sudo apt install mc -y

else echo "$file installed";
fi

file=`which gnome-tweaks`
if [ ! $file ];then
sudo apt install gnome-tweaks -y

else echo "$file installed";
fi

