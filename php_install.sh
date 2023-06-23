while getopts :f: flag
do
    case "${flag}" in
        f) vers=${OPTARG};;
    esac
done
php="php$vers"
echo "$php";

sudo apt install "$php" "$php-mysql" "$php-mbstring" "$php-xml" "$php-curl" "$php-bz2" "$php-exif" "$php-gd" "$php-zip" "$php-bcmath" "$php-intl"

