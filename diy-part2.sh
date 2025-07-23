#!/bin/bash
# OpenWrt DIY script part 2 (After Update feeds)

# 修改默认 IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# 修改默认主题为 Argon（取消注释以启用）
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改 hostname
# sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# ❗去除已有的 alist 和 tailscale 插件（如果之前添加过）
rm -rf package/luci-app-alist package/alist
rm -rf package/tailscale

# ✅ 添加 Lucky 插件
git clone https://github.com/sirpdboy/luci-app-lucky package/lucky

# ✅ 添加 ZeroTier 插件
git clone https://github.com/mwarning/zerotier-openwrt package/zerotier
git clone https://github.com/rufengsuixing/luci-app-zerotier package/luci-app-zerotier
