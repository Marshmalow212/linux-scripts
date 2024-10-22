if [ ! `which java` ];then
while getopts :u:f:v: flag
do
    case "${flag}" in
        f) file=$OPTARG ;;
        u) url=$OPTARG ;;
        v) ver=$OPTARG ;;
    esac
done

if [ $file ];then
wget $file

elif [ $url ];then
wget $url
fi

if [ $ver ];then
newdir="java-${ver}"

sudo apt purge openjdk-\* -y &&

sudo mkdir "/usr/lib/jvm/$newdir" -v &&

javadir="/usr/lib/jvm/$newdir/"

mkdir java &&

tar -zxf jdk*.tar.gz --directory java/ -v &&

sudo cp -r java/jdk*/* "$javadir" -v &&

sudo nano /etc/profile &&

. /etc/profile &&

sudo update-alternatives --install "/usr/bin/java" "java" "${javadir}bin/java" 1 &&

sudo update-alternatives --install "/usr/bin/javac" "javac" "${javadir}bin/javac" 1 &&

rm -rf java jdk*

else 
echo `which java`;
if [ -d "~/Desktop/scripts/java" ];then
rm -rf java jdk*
fi

fi
