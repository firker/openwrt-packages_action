#!/bin/bash
rm -rf package luci-app-cpulimit luci-app-onliner smartdns luci-app-smartdns
rm -rf ./*/luci-theme-design ./*/luci-theme-atmaterial ./*/luci-theme-ifit ./*/luci-theme-opentopd ./*/luci-theme-neobird ./*/luci-theme-infinityfreedom ./*/luci-theme-kucat ./*/luci-app-design-config 

function merge_package(){
    repo=`echo $1 | rev | cut -d'/' -f 1 | rev`
    pkg=`echo $2 | rev | cut -d'/' -f 1 | rev`
    # find package/ -follow -name $pkg -not -path "package/custom/*" | xargs -rt rm -rf
    git clone --depth=1 --single-branch $1
    mv $2 package/
    rm -rf $repo
}
function drop_package(){
    find package/ -follow -name $1 -not -path "/*" | xargs -rt rm -rf
}

merge_package https://github.com/kiddin9/openwrt-packages openwrt-packages/adguardhome
merge_package https://github.com/sirpdboy/sirpdboy-package sirpdboy-package/luci-app-adguardhome
merge_package https://github.com/sirpdboy/sirpdboy-package sirpdboy-package/luci-app-autotimeset
merge_package https://github.com/haiibo/openwrt-packages openwrt-packages/cpulimit
# svn co https://github.com/haiibo/openwrt-packages/trunk/luci-app-cpulimit
# svn co https://github.com/haiibo/openwrt-packages/trunk/luci-app-onliner
merge_package https://github.com/linkease/istore-packages istore-packages/luci-app-homeassistant
# git clone https://github.com/sirpdboy/luci-app-autotimeset.git luci-app-autotimeset
git clone https://github.com/pymumu/openwrt-smartdns.git smartdns
git clone https://github.com/gngpp/luci-theme-design.git theme/luci-theme-design
git clone https://github.com/gngpp/luci-app-design-config.git theme/luci-theme-design-config
git clone https://github.com/uparrows/luci-theme-atmaterial.git theme/luci-theme-atmaterial
git clone https://github.com/kenzok8/luci-theme-ifit.git theme/luci-theme-ifit
git clone https://github.com/sirpdboy/luci-theme-opentopd.git theme/luci-theme-opentopd
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git theme/luci-theme-infinityfreedom
git clone https://github.com/thinktip/luci-theme-neobird.git theme/luci-theme-neobird
git clone https://github.com/sirpdboy/luci-theme-kucat.git theme/luci-theme-kucat
chmod 755 luci-app-adguardhome/root/etc/init.d/AdGuardHome

sed -i 's/默认用户名密码都是root/默认用户名密码都是admin/g' package/adguardhome/patches/default_username.patch 
sed -i 's/\<control\>/system/g' package/luci-app-autotimeset/luasrc/controller/autotimeset.lua
sed -i 's/\<Control\>/System/g' package/luci-app-autotimeset/luasrc/controller/autotimeset.lua

rm -rf .svn
rm -f .gitattributes .gitignore
rm -rf .github
rm -rf ./*/.git
rm -rf ./*/*/.git
rm -rf ./*/*/.github

exit 0
 
