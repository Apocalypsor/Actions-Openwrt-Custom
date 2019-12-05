#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i '\/bin\/ash -c "mentohust -u$username -p$password -n$ifname -b3 -w $cmd"/a\        rm /tmp/mentohust.pid -f && /usr/sbin/mentohust -u$username -p$password -o1.2.4.8 -a1 -d1 -nmacvlan2 -b3' package/luci-app-mentohust/files/root/etc/init.d/mentohust