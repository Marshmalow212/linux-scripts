ghd=`which github-desktop`
if [ ! $ghd ];then
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb &&

sudo dpkg -i GitHubDesktop-linux-3.1.1-linux1.deb

else echo "$ghd installed";
fi
