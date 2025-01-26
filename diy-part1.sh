#!/bin/bash
#=============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
# Enable helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add istore
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
