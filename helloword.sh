#!/bin/bash

git clone https://github.com/immortalwrt/homeproxy.git luci-app-homeproxy
git clone https://github.com/xiaorouji/openwrt-passwall.git
git clone -b luci-smartdns-new-version https://github.com/xiaorouji/openwrt-passwall passwall && mv -n passwall/luci-app-passwall ./;rm -rf passwall
source ./luci-app-passwall/Makefile
sed -i "s/$(PKG_VERSION)/$(PKG_VERSION).$(PKG_RELEASE)/g" ./luci-app-passwall/Makefile
git clone https://github.com/firkerword/luci-app-smartdns.git
git clone https://github.com/firkerword/smartdns.git

rm -rf .svn
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
exit 0
