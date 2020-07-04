#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# default feeds
sed -i $'s/^sed -i \'s\/downloads\.openwrt\.org\/.*\/g\' \/etc\/opkg\/distfeeds\.conf$/sed -i \'s\/downloads\.openwrt\.org\/mirrors\.tuna\.tsinghua\.edu\.cn\\\\\/openwrt\/g\' \/etc\/opkg\/distfeeds\.conf/g' package/lean/default-settings/files/zzz-default-settings

#defail ntp server
sed -i 's/0.openwrt.pool.ntp.org/ntp.aliyun.com/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/cn.pool.ntp.org/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/2.openwrt.pool.ntp.org/ntp.ntsc.ac.cn/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/3.openwrt.pool.ntp.org/cn.pool.ntp.org/g' openwrt/package/base-files/files/bin/config_generate