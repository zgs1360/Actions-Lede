#!/bin/bash
# use ssr
sed -i 's/^#\(.*coolsnowwolf\/luci\)/\1/' feeds.conf.default
sed -i 's/^[^#]\(.*openwrt-23\.05\)/#&/g' feeds.conf.default

# Enable helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加 kenzo 插件  
#sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
