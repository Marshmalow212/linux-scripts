#!/usr/bin/bash


while getopts :v: flag
do
    case "${flag}" in
        v) vers=$OPTARG ;;
    esac
done

php="php$vers"
echo $php;
sudo apt install -y "$php" "$php-common" "$php-mysql" "$php-fpm" "$php-curl" "$php-bz2" "$php-ctype" "$php-exif" "$php-sockets" "$php-pdo" "$php-bcmath" "$php-intl" "$php-phar" "$php-pdo" "$php-ctype" "$php-fileinfo" "$php-ffi" "$php-ftp" "$php-iconv" "$php-gettext" "$php-readline" "$php-tokenizer" "$php-sysvmsg" "$php-sysvsem" "$php-sysvshm" "$php-posix" "$php-mysqlnd" "$php-mbstring" "$php-xml" "$php-gd" 

