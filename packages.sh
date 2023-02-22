#!/bin/bash
rm -rf adguardhome cpulimit luci-app-cpulimit luci-app-onliner smartdns luci-app-homeassistant
rm -rf ./*/luci-theme-design ./*/luci-theme-atmaterial ./*/luci-theme-ifit ./*/luci-theme-opentopd ./*/luci-theme-neobird ./*/luci-theme-infinityfreedom

svn co https://github.com/kiddin9/openwrt-packages/trunk/adguardhome
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-adguardhome
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-autotimeset
svn co https://github.com/haiibo/openwrt-packages/trunk/cpulimit
svn co https://github.com/haiibo/openwrt-packages/trunk/luci-app-cpulimit
svn co https://github.com/haiibo/openwrt-packages/trunk/luci-app-onliner
svn co https://github.com/linkease/istore-packages/trunk/luci-app-homeassistant
git clone https://github.com/pymumu/openwrt-smartdns.git smartdns
git clone https://github.com/gngpp/luci-theme-design.git theme/luci-theme-design
git clone https://github.com/uparrows/luci-theme-atmaterial.git theme/luci-theme-atmaterial
git clone https://github.com/kenzok8/luci-theme-ifit.git theme/luci-theme-ifit
git clone https://github.com/sirpdboy/luci-theme-opentopd.git theme/luci-theme-opentopd
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git theme/luci-theme-infinityfreedom
git clone https://github.com/thinktip/luci-theme-neobird.git theme/luci-theme-neobird
git clone https://github.com/sirpdboy/luci-theme-kucat.git theme/luci-theme-kucat

sed -i 's/默认用户名密码都是root/默认用户名密码都是admin/g' adguardhome/patches/default_username.patch 
sed -i 's/\<control\>/system/g' luci-app-autotimeset/luasrc/controller/autotimeset.lua

rm -rf .svn
rm -f .gitattributes .gitignore
rm -rf .github
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -rf ./*/*/.git
rm -rf ./*/*/.svn 
rm -rf ./*/*/.github

exit 0
 
