while getopts :u:f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
        u) url=${OPTARG};;
    esac
done

if [ $url ];then

wget $url &&

sudo dpkg -i mysql-apt-config*.deb &&

sudo apt-get update &&

sudo apt install mysql-community-server mysql-community-client mysql-common -y

else
echo "Check the $url for availability"

fi
