check=`which nginx`;
if [[ -n $check ]]; then
echo $check;
else
sudo apt update &&

sudo apt install nginx -y
fi
