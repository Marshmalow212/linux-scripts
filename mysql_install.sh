while getopts :f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
    esac
done

echo $file;

wget $file &&

sudo dpkg -i mysql-apt-config*.deb &&

sudo apt-get update &&

sudo apt install mysql-community-server mysql-community-client mysql-common -y

