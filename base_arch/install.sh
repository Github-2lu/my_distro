echo "==>DATE TIME SETTING"
scripts/03.settime.sh
sleep 1
echo "==>DISK PARTITION"
scripts/04.diskpart.sh
sleep 1
echo "==>INSTALLING BASE LINUX"
scripts/05.installbase.sh
sleep 1
echo "==>GENERATING FSTAB"
scripts/06.fstab.sh
sleep 1
echo "==>CREATING ROOT ENVIRONMENT"
scripts/07.chroot.sh
sleep 1
echo "==>FINISHING UP"
scripts/14.finish.sh
