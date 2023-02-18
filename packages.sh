#!/bin/bash
rm -rf ./adguardhome     
rm -rf ./cpulimit        
rm -rf ./luci-app-cpulimit        
rm -rf ./luci-app-onliner
rm -rf ./smartdns
rm -rf ./luci-theme-design
          
svn co https://github.com/kiddin9/openwrt-packages/trunk/adguardhome
svn co https://github.com/haiibo/openwrt-packages/trunk/cpulimit
svn co https://github.com/haiibo/openwrt-packages/trunk/luci-app-cpulimit
svn co https://github.com/haiibo/openwrt-packages/trunk/luci-app-onliner
git clone https://github.com/pymumu/openwrt-smartdns.git smartdns
git clone https://github.com/gngpp/luci-theme-design.git ./theme/luci-theme-design
sed -i 's/默认用户名密码都是root/默认用户名密码都是AdGuardHome/g' ./adguardhome/patches/default_username.patch 

rm -rf .svn
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
rm -rf .github
exit 0
