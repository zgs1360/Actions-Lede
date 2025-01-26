#!/bin/bash
#=============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
# use ssr
sed -i 's/^#\(.*coolsnowwolf\/luci\)/\1/' feeds.conf.default
sed -i 's/^[^#]\(.*openwrt-23\.05\)/#&/g' feeds.conf.default

# Enable helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加 PassWall 插件  
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >> feeds.conf.default  
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default  

