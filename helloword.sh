#!/bin/bash

git clone https://github.com/jerrykuku/luci-app-vssr.git
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/fw876/helloworld.git && mv -n helloworld/luci-app-ssr-plus ./
git clone https://github.com/immortalwrt/homeproxy.git luci-app-homeproxy
git clone -b 18.06 https://github.com/zxlhhyccc/luci-app-v2raya.git
git clone https://github.com/QiuSimons/luci-app-daed daed
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git
git clone https://github.com/xiaorouji/openwrt-passwall2.git luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall passwall && mv -n passwall/luci-app-passwall ./;rm -rf passwall

rm -rf .svn
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
exit 0
