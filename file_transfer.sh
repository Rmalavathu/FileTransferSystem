#! usr/bin/bash
echo "This is the File Transfer Script"

echo "Starting Download of needed Packages"
sudo apt-get install avahi-daemon avahi-dnsconfd avahi-discover avahi-utils
sudo apt-get install libnss-mdns

sudo sed -i '12s/.*/hosts:    files mdns4_minimal dns [NOTFOUND=return] mdns4/' /etc/nsswitch.conf

sudo service avahi-daemon restart

service avahi-daemon status

echo "Enter SOURCE filepath of file to transfer"
read source

echo "Enter DESTINATION filepath of file to transfer"
read destination

echo "Enter HostName to send the file to"
read hostname

scp ~/$source $hostname.local:~/$destination
