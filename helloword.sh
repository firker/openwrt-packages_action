#!/bin/bash

git clone https://github.com/jerrykuku/luci-app-vssr.git
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/fw876/helloworld.git
git clone https://github.com/immortalwrt/homeproxy.git luci-app-homeproxy
git clone https://github.com/xiaorouji/openwrt-passwall.git
git clone https://github.com/xiaorouji/openwrt-passwall2.git luci-app-passwall2
svn co https://github.com/xiaorouji/openwrt-passwall/luci-app-passwall/branches/luci

rm -rf .svn
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
exit 0
