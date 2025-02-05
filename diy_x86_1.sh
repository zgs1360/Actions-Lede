#!/bin/bash
# use ssr
sed -i 's/^#\(.*coolsnowwolf\/luci\)/\1/' feeds.conf.default
sed -i 's/^[^#]\(.*openwrt-23\.05\)/#&/g' feeds.conf.default

# Enable helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加 PassWall 插件  
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >> feeds.conf.default  
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default  
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' >> feeds.conf.default

# Add istore
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
