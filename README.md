# archinstall

This is a simple script to install archlinux cli mode
step1:
  In virtualbox enable efi boot
  #DO NOT USE PROXY SERVER FOR THIS STEP
step2:
  after live booting run pacman -Sy ;to update pacman database
  pacman -S git ; to install git
  sometimes key are not generated properly
  check this for help: https://bbs.archlinux.org/viewtopic.php?id=143337
  git clone https://github.com/Github-2lu/archinstall
  if you are using proxy edit install.config and enter proxy
  run 01 script and for proxy run 02 script
step 3:
  edit the config file according to your choice
  before running install.sh run fdisk -l to get disk info and enter corrent disk in Disk value in config file
  similarly change locale, region, city
  now run ./install.sh
step 4:
  if in 14 script shutdown is not commented out the sysytem will not shutdown automatically. shut down the system, remove the iso and run arch linux
####TO DO #####
create a file for essential pacages and store them in a file
install those pacages while running pacstrap or after chroot login
create another list for additional packages and install those before logging out of chroot
now remove pacman install commands in the scripts
