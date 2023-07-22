#!/usr/bin/bash


while getopts :v: flag
do
    case "${flag}" in
        v) vers=$OPTARG ;;
    esac
done

php="php$vers"
echo $php;

sudo apt install "$php" "$php-common" "$php-mysql" "$php-mbstring" "$php-xml" "$php-gd" "$php-curl" "$php-bz2" "$php-ctype" "$php-gd" "$php-exif" "$php-sockets" "$php-pdo" "$php-bcmath" "$php-intl" 

