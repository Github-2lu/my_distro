pacman -Sy
printf "y" | pacman -S archlinux-keyring

# to get fast mirrors

cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
pacman -Sy
printf "y" | pacman -S pacman-contrib

#echo "ranking mirrors"

rankmirrors -n 10 /etc/pacman.d/mirrorlist.bak > /etc/pacman.d/mirrorlist

# parallel downloads enable

pardown=$(grep -oP "ParallelDownloads=\K.*" ../install.config)

sed -i "s/#ParallelDownloads = 5/ParallelDownloads = $pardown/g" /etc/pacman.conf

unset pardown
echo "#####pacman synced and archkeyring installed#####"
