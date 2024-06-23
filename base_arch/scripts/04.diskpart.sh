# create efi partition of 100M
drive=$(grep -oP "Drive=\K.*" install.config)
efi_size=$(grep -oP "Efi_Size=\K.*" install.config)
efi_drive=$drive
efi_drive+='1'
root_drive=$drive
root_drive+='2'

echo "creating boot partition"
printf "g\nn\n\n\n+$efi_size\nt\n1\nw" | fdisk $drive  # here 1 is the first parameter passed ex: ./04diskpart.sh /dev/sda
# create root partition of rest of size
sleep 1
echo "creating root partition"
printf "n\n\n\n\nw" | fdisk $drive
# format efi as fat32
mkfs.fat -F32 $efi_drive
# format root partition as ext4
mkfs.ext4 $root_drive
#mount root partition in /mnt
mount $root_drive /mnt
#mount boot partition in /mnt/boot/efi
mkdir -p /mnt/boot/efi
mount $efi_drive /mnt/boot/efi

unset drive
unset efi_size
unset efi_drive
unset root_drive
#echo "#####DISK PARTITIONED AND MOUNTED#####"

