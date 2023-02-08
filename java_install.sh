if [ ! `which java` ];then
while getopts :f: flag
do
    case "${flag}" in
        f) file=${OPTARG}
    esac
done

if [ $file ];then
wget $file
fi

sudo apt-get purge openjdk-\* -y &&

sudo mkdir /usr/bin/java &&

mkdir java &&

tar -zxf jdk*.tar.gz --directory java/ -v &&

sudo cp -r java/jdk*/* /usr/bin/java/ -v &&

sudo nano /etc/profile &&

. /etc/profile &&

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/bin/java/bin/java" 1 &&

sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/bin/java/bin/javac" 1 &&

sudo update-alternatives --set java /usr/bin/java/bin/java &&

sudo update-alternatives --set javac /usr/bin/java/bin/javac &&

rm -rf java jdk*

else 
echo `which java`;
if [ -d "~/Desktop/scripts/java" ];then
rm -rf java jdk*
fi

fi
