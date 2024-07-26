#!/usr/bin/bash


while getopts :u:f:v: flags
do
    case "${flags}" in
        u) url=$OPTARG ;;
        f) file=$OPTARG ;;
        v) ver=$OPTARG ;;
    esac
done

if [[ $url ]];then
echo "this is the url ${url}"
fi
if [[ $file ]];then
# cat "./$file"
echo "this is the file $file"
fi

if [ $ver ];then
newdir="./user-${ver}"
echo $newdir
mkdir $newdir


fi