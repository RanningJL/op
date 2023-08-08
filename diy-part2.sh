#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#修改LAN地址
sed -i 's/192.168.1.1/192.168.42.80/g' package/base-files/files/bin/config_generate

#修改主机名
sed -i 's/hostname='OpenWrt'/hostname='Mimini'/g' package/base-files/files/bin/config_generate

#修改root密码
sed -i '1c root:$1$z9XWSpXY$UeCi3kjK2Q1uYd2MUEDk71:19573:0:99999:7:::' package/base-files/files/etc/shadow

#修改WIFI名
sed -i 's/ssid=OpenWrt/ssid=R/g' package/kernel/mac80211/file/lib/wifi/mac80211.sh

#修改ssh登录界面
sed -i '3s/LE/ L/' package/base-files/files/etc/banner
sed -i '4s/DE/  /' package/base-files/files/etc/banner
sed -i '5s/LE/  /' package/base-files/files/etc/banner
sed -i '6s/DE/R /' package/base-files/files/etc/banner
sed -i '7s/LE/J /' package/base-files/files/etc/banner
sed -i '8s/DE/  /' package/base-files/files/etc/banner

