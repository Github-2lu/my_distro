region=$(grep -oP "Region=\K.*" /scripts/install.config)
city=$(grep -oP "City=\K.*" /scripts/install.config)

ln -sf /usr/share/zoneinfo/$region/$city /etc/localtime

hwclock --systohc

unset $region
unset $city

echo "######TIMEZONE AND CLOCK SET#####"
