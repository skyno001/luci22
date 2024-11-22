#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i 's/openwrt-23.05/master/g' feeds.conf.default
sed -i 's/6.6 = .62/6.6 = .61/g' include/kernel-6.6
sed -i 's/6.6.62 = e2c35611775534941b9d4dd871f3ae5b988b6594dc9033b5ca784366e07d9336/6.6.61 = 418fc24df9190f1c3ed9906dc3b7651c2a2eae5c1cb9ab4a6348e20faf047c0b/g' include/kernel-6.6
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
