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
sudo snap install vlc &&
echo `which vlc`

else echo "$file";
fi

file=`which code`
if [ ! $file ];then
sudo snap install code &&
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
sudo apt install mc

else echo "$file installed";
fi
