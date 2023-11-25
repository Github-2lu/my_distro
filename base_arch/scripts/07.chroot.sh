# before changing to chroot in /mnt we have to copy required scripts in /mnt directory to run them
# create a folder to store the scripts
mkdir /mnt/scripts
#copy required scripts in the scripts folder
#control all scripts using runch.sh
cp install.config scripts/*.sh /mnt/scripts
# change to chroot and run the runch.sh script
arch-chroot /mnt /scripts/runch.sh
