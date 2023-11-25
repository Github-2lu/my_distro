curr_locale=$(grep -oP "Locale=\K.*" /scripts/install.config)

sed -i "s/#$curr_locale/$curr_locale/g" /etc/locale.gen
locale-gen

unset curr_locale
echo "#####LOCALE GENERATED#####"
