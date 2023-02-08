file = `which google-chrome`
if [ ! $file ];then

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "chrome installed";

else echo "$file installed";
fi
