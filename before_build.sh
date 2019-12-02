#!/bin/bash
cd /home/runner/openwrt

# Enter your commands here, e.g.
sed -i '\/bin\/ash -c "mentohust -u$username -p$password -n$ifname -b3 -w $cmd"/a\        rm /tmp/mentohust.pid -f && /usr/sbin/mentohust -uU201610721 -p213014 -o119.29.29.29 -a1 -d1 -nmacvlan2 -b1' package/luci-app-mentohust/files/root/etc/init.d/mentohust
# echo "Start build!"
make defconfig
