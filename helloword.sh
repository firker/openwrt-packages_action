#!/bin/bash
rm -rf !(.github)
git rm --cache *

git clone https://github.com/jerrykuku/luci-app-vssr.git
git clone https://github.com/fw876/helloworld.git
git clone https://github.com/immortalwrt/homeproxy.git luci-app-homeproxy
git clone https://github.com/xiaorouji/openwrt-passwall.git
git clone https://github.com/xiaorouji/openwrt-passwall2.git luci-app-passwall2
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git luci-app-passwall

rm -rf .svn
rm -rf .git
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
rm -rf ./*/.github
exit 0
