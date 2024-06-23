# drive=$(grep -oP "Drive=\K.*" /scripts/install.config)
# efi_drive=$drive
# efi_drive+='1'

printf "y" | pacman -S grub efibootmgr dosfstools os-prober mtools
# mkdir -v /boot/EFI
# mount $efi_drive /boot/EFI
grub-install --target=x86_64-efi /boot/efi
grub-mkconfig -o /boot/grub/grub.cfg

unset efi_drive
unset drive

echo "#####GRUB CONFIGURED#####"
