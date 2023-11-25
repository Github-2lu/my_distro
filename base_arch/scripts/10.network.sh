hostname=$(grep -oP "Hostname=\K.*" /scripts/install.config)

echo $hostname >> /etc/hostname
echo "127.0.0.1    localhost" >> /etc/hosts
echo "::1          localhost" >> /etc/hosts
echo "127.0.1.1    $hostname.localdomain tuluarch" >> /etc/hosts

unset hostname
echo "#####NETWORK CONFIGURED#####"
