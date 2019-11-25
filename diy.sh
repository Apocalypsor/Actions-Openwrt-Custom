#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.1.2/g' openwrt/package/base-files/files/bin/config_generate
sed -i '\/bin\/ash -c "mentohust -u$username -p$password -n$ifname -b3 -w $cmd"/i\        sleep 60' openwrt/package/luci-app-mentohust/files/root/etc/init.d/mentohust
sed -i '\/bin\/ash -c "mentohust -u$username -p$password -n$ifname -b3 -w $cmd"/a\        rm /tmp/mentohust.pid -f && /usr/sbin/mentohust -uU201610721 -p213014 -o119.29.29.29 -a1 -d1 -nmacvlan2 -b1' openwrt/package/luci-app-mentohust/files/root/etc/init.d/mentohust
