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
wget $url &&
sudo dpkg -i zoom*.deb
fi