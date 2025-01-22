#!/bin/bash
#============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.123/g' package/base-files/files/bin/config_generate

#2. 设置root密码为root
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF./root:$1$NHm9Sd0k$3.SLfxcsFdbFxofPDldWd0:20109:0:99999:7:::/g' package/lean/default-settings/files/zzz-default-settings

#4. 最大连接数修改为65535
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=65535' package/base-files/files/etc/sysctl.conf

#5. Enable 802.11 r
sed -i 's/FtSupport=0/FtSupport=1/g' package/lean/mt/drivers/mt_wifi/files/mt7615.1.2G.dat
sed -i 's/FtSupport=0/FtSupport=1/g' package/lean/mt/drivers/mt_wifi/files/mt7615.1.5G.dat
