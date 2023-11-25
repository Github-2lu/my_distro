root_passwd=$(grep -oP "Root_Passwd=\K.*" /scripts/install.config)
uname=$(grep -oP "User_Name=\K.*" /scripts/install.config)
upasswd=$(grep -oP "User_Passwd=\K.*" /scripts/install.config)

printf "$root_passwd\n$root_passwd" | passwd
useradd -m $uname                   
printf "$upasswd\n$upasswd" | passwd $uname    
usermod -aG wheel,audio,video,optical,storage $uname 
printf "y" | pacman -S sudo
sed -i "s/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/g" /etc/sudoers


unset root_passwd
unset uname
unset upasswd

echo "#####ROOT USER CREATED#####"
