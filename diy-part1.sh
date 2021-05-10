#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add feed sources
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git diy https://github.com/CCnut/feed-netkeeper.git;LUCI-LUA-UCITRACK' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# add feed
git clone https://github.com/liuran001/openwrt-packages  package/openwrt-packages

# Add mentohust
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/MentoHUST-OpenWrt-ipk
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust

# Add luci-app-ssr-plus
#git clone https://github.com/fw876/helloworld


# Add luci-app-vssr <M>
# git clone https://github.com/jerrykuku/lua-maxminddb.git
# git clone https://github.com/jerrykuku/luci-app-vss

# Add small passwall依赖
#git clone https://github.com/kenzok8/small.git 
# Add passwall
#git clone https://github.com/xiaorouji/openwrt-passwall.git

# Add openwrt-packages
#git clone https://github.com/kenzok8/openwrt-packages.git 
