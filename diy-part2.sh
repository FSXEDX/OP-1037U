#!/bin/bash
#=================================================
# Descriptio4n: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#Lienol-APP
#git clone https://github.com/Lienol/openwrt-package.git package/lienol

#luci-theme-argon
rm -rf package/lean/luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

#luci-app-minidlna
cat feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po | sed ':label;N;s/\n/123456/;b label' >feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/"Allow wide links:"123456msgstr ""/"Allow wide links:"123456msgstr "允许广域链接"/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/msgid ""123456"Set this to allow serving content outside the media root (via symlinks)."/msgid "Set this to allow serving content outside the media root (via symlinks)."/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/"Set this to allow serving content outside the media root (via symlinks)."123456msgstr ""/"Set this to allow serving content outside the media root (via symlinks)."123456msgstr "允许通过软链接播放媒体目录外的文件。"/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/miniDLNA守护程序/MiniDLNA守护程序/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/msgstr "Port for HTTP (descriptions, SOAP, media transfer) traffic."/msgstr "HTTP 传输端口。"/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/设置miniDLNA/设置MiniDLNA/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/miniDLNA服务/MiniDLNA服务/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/msgstr "miniDLNA"/msgstr "媒体中心"/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/miniDLNA 状态/MiniDLNA 状态/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/msgstr "miniSSDP socket："/msgstr "MiniSSDP Socket："/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
sed -i 's/123456/\n/g' feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp
mv feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po.tmp feeds/luci/applications/luci-app-minidlna/po/zh-cn/minidlna.po

#luci-app-mwan3
cat feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po | sed ':label;N;s/\n/123456/;b label' >feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Detail"123456msgstr ""/"Detail"123456msgstr "细节"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Execute"123456msgstr ""/"Execute"123456msgstr "执行"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"INFO: MWAN not running"123456msgstr ""/"INFO: MWAN not running"123456msgstr "通知：MWAN未运行"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Globals"123456msgstr ""/"MWAN - Globals"123456msgstr "全局"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Interfaces"123456msgstr ""/"MWAN - Interfaces"123456msgstr "接口"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Members"123456msgstr ""/"MWAN - Members"123456msgstr "成员"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Notification"123456msgstr ""/"MWAN - Notification"123456msgstr "通知"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Policies"123456msgstr ""/"MWAN - Policies"123456msgstr "策略"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Rules"123456msgstr ""/"MWAN - Rules"123456msgstr "规则"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Interfaces"123456msgstr ""/"MWAN Interfaces"123456msgstr "MWAN 接口"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Status - Detail"123456msgstr ""/"MWAN Status - Detail"123456msgstr "细节"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Status - Diagnostics"123456msgstr ""/"MWAN Status - Diagnostics"123456msgstr "诊断"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Status - Troubleshooting"123456msgstr ""/"MWAN Status - Troubleshooting"123456msgstr "故障排除"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Notification"123456msgstr ""/"Notification"123456msgstr "通知"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"interfaces, members or policies"123456msgstr ""123456123456/"interfaces, members or policies"123456msgstr ""123456"“规则”基于 IP 地址、协议、端口把流量划分到指定的“策略”中。<br \/>"123456"规则按照从上到下的顺序进行匹配。若第一条能够匹配通信的规则，其它规则将被忽略。不匹配规则的通信将会由系统默认路由表进行。<br \/>"123456"来自已知的网络的转发流量由系统默认路由表接手，然后 MWAN 从中匹配出相应的流量并转移到 MWAN 的路由表。但是所有被划分到一个无法使用的策略的流量将会无法正常进行路由。<br \/>"123456"名称允许包括A-Z、a-z、0-9、_ 但是不能有空格。<br \/>"123456"规则不能与接口、成员、策略中的任意一个设置项名称相同。<br \/>"123456123456/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Task"123456msgstr ""/"Task"123456msgstr "任务"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/)<br \/><br \/>"123456msgstr ""123456123456/)<br \/><br \/>"123456msgstr ""123456"这里允许您修改“\/etc\/mwan3.user”的内容。<br \/>该文件在 sysupgrade 期间也会保"123456"留。<br \/><br \/>注意：<br \/>该文件会作为 shell 脚本解释。<br \/>脚本的第一行必"123456"须是#!\/bin\/sh。<br \/>以#开头的行是注释，不会执行。<br \/>"123456"将您的自定义 mwan3 动作放在这里，他们将在 mwan3 的接口上启用。<br \/>在 "123456"netifd hotplug 接口事件时执行。<br \/><br \/>有三个主要的环境变量传递给这个脚"123456"本。<br \/><br \/>$ACTION “ifup”或“ifdown”<br \/>$INTERFACE 启动或停止的接口名"123456"（例如“wan”或“wwan”）<br \/>$DEVICE 启动或停止接口的物理设备名（例"123456"如“eth0”或“wwan0”）<br \/><br \/>"123456123456/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"View the content of \/etc\/protocols for protocol description"123456msgstr ""/"View the content of \/etc\/protocols for protocol description"123456msgstr "浏览 \/etc\/protocols 中的协议描述"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Interface %s are not found in \/etc\/config\/network"123456msgstr ""/"WARNING: Interface %s are not found in \/etc\/config\/network"123456msgstr "警告：\/etc\/config\/network 中未发现 %s 接口"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Interface %s has a duplicate metric %s configured"123456msgstr ""/"WARNING: Interface %s has a duplicate metric %s configured"123456msgstr "警告：接口 %s 与 %s 配置了相同的跃点数"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"hosts (%d)"123456msgstr ""/"hosts (%d)"123456msgstr "警告：接口 %s 的跟踪可靠性要求大于了跟踪主机(%d)"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Interface %s has no default route in the main routing table"123456msgstr ""/"WARNING: Interface %s has no default route in the main routing table"123456msgstr "警告：接口 %s 在主路由表中没有默认路由"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Policy %s has exceeding the maximum name of 15 characters"123456msgstr ""/"WARNING: Policy %s has exceeding the maximum name of 15 characters"123456msgstr "警告：策略 %s 的名称超过了 15 个字符"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"specified!"123456msgstr ""/"specified!"123456msgstr "警告：规则 %s 指定了端口却没有配置或配置了不正确的协议，请重新指定协议"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Waiting for command to complete..."123456msgstr ""/"Waiting for command to complete..."123456msgstr "等待命令完成..."/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/123456/\n/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
mv feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po

#luci-app-mwan3helper
sed -i 's/MWAN3 分流助手/分流助手/g' package/lean/luci-app-mwan3helper/po/zh-cn/mwan3helper.po

#luci-app-upnp
cat feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po |sed ':label;N;s/\n/123456/;b label' >feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/msgstr "UPnP"/msgstr "端口转发"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/IGDv2"123456msgstr ""/IGDv2"123456msgstr "用IGDv1代替IGDv2设备广播"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/IGDv1 mode"123456msgstr ""/IGDv1 mode"123456msgstr "启用IGDv1模式"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/123456/\n/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
mv feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po

#zzz-default-settings
sed -i '/exit 0/d' package/lean/default-settings/files/zzz-default-settings
sed -i '/services/d' package/lean/default-settings/files/zzz-default-settings
sed -i '/\/etc\/shadow/d' package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/22/5423/g' /etc/config/dropbear" >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/docker-init >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/docker-web >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /www/DockerReadme.pdf >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/aria2 >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/meshwizard >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /etc/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /usr/lib/lua/luci/controller/gfwlist.lua >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/p910nd >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/init.d/aria2 >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/init.d/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/init.d/p910nd >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /tmp/log/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /tmp/log/samba >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /usr/bin/meshwizard >>package/lean/default-settings/files/zzz-default-settings
echo "echo '这个cake列队规则使用HTB作为过滤器，使用fq_codel作为叶列队规则。 这个cake规则将不同的文件分为不同的“层次”优先级。 该脚本需要将该cake选为列队规则。 请参阅：http://www.bufferbloat.net/projects/codel/wiki/Cake获取更多信息。' >/usr/lib/sqm/layer_cake.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '这个cake列队规则使用HTB作为过滤器，使用fq_codel作为叶列队规则。 它不会比这更简单，换句话说，它真的是“小菜一碟”。 该脚本需要将cake选为列队规则。 请参阅：http://www.bufferbloat.net/projects/codel/wiki/Cake获取更多信息' >/usr/lib/sqm/piece_of_cake.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '使用fq_codel列队规则在每个列队上进行三层优先级的带宽控制。（默认）' >/usr/lib/sqm/simple.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '最简单的配置：使用带有HTB过滤器的列队规则来进行速率限制。' >/usr/lib/sqm/simplest.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '最简单的配置（TBF）：使用带有TBF过滤器的列队规则来进行速率限制。在某些架构上，TBF可能会比HTB提供更好的性能。' >/usr/lib/sqm/simplest_tbf.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo exit 0 >>package/lean/default-settings/files/zzz-default-settings

#luci-app-vsftpd
sed -i '/NAS/d' package/lean/luci-app-vsftpd/luasrc/controller/vsftpd.lua
sed -i 's/nas/services/g' package/lean/luci-app-vsftpd/luasrc/controller/vsftpd.lua
sed -i 's/nas/services/g' package/lean/luci-app-vsftpd/luasrc/model/cbi/vsftpd/item.lua
sed -i 's/nas/services/g' package/lean/luci-app-vsftpd/luasrc/model/cbi/vsftpd/users.lua
sed -i 's/msgid "NAS"//g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/msgstr "网络存储"//g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/msgstr "FTP 服务器"/msgstr "FTP设置"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po

#luci-app-amule
sed -i 's/NAS/SERVICES/g' package/lean/luci-app-amule/luasrc/controller/amule.lua
sed -i 's/nas/services/g' package/lean/luci-app-amule/luasrc/controller/amule.lua
sed -i 's/nas/services/g' package/lean/luci-app-amule/luasrc/view/amule/detail_logview.htm
sed -i 's/nas/services/g' package/lean/luci-app-amule/luasrc/view/amule/overview_status.htm
sed -i 's/nas/services/g' package/lean/luci-app-amule/luasrc/view/amule/webshell.htm
sed -i 's/aMule设置/电驴设置/g' package/lean/luci-app-amule/po/zh-cn/amule.po


#luci-app-flowoffload
sed -i 's/Flow Offload 转发加速/硬件加速/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Linux Flow offload 转发/Linux Flow OFFload 转发/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Linux Flow Offload Forwarding 转发/Linux Flow OFFload 转发/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Linux Flow offload Forwarding  转发/Linux Flow OFFload 转发/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Turbo ACC 网络加速设置/网络加速设置/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Turbo ACC 网络加速/网络加速/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i '/hw =/d'  package/lean/luci-app-flowoffload/luasrc/model/cbi/flowoffload.lua
sed -i '/hw.default/d'  package/lean/luci-app-flowoffload/luasrc/model/cbi/flowoffload.lua
sed -i '/hw.rmempty/d'  package/lean/luci-app-flowoffload/luasrc/model/cbi/flowoffload.lua
sed -i '/hw.description/d'  package/lean/luci-app-flowoffload/luasrc/model/cbi/flowoffload.lua
sed -i '/hw:depends/d'  package/lean/luci-app-flowoffload/luasrc/model/cbi/flowoffload.lua


#luci-app-SFE
sed -i 's/SFE 转发加速/硬件加速/g'package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/Turbo ACC 网络加速/网络加速/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/启用 SFE Fast Path 加速/启用 SFE/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po

#luci-app-vlmcsd
sed -i 's/KMS 服务器/微软激活/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po

#luci-app-adbyby-plus
sed -i 's/大师 Plus +//g' package/lean/luci-app-adbyby-plus/po/zh-cn/adbyby.po
sed -i 's/大师 Plus+//g' package/lean/luci-app-adbyby-plus/po/zh-cn/adbyby.po

#luci-app-ssr-plus
git clone https://github.com/fw876/helloworld.git package/lean/luci-app-ssr-plus
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "ShadowSocksR Plus+"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "翻墙工具"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "allowInsecure"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "允许不安全链接"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "AlterId"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "额外ID"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "VmessId (UUID)"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "UUID"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Transport"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "传输协议"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Camouflage Type"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "伪装方式"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Uplink Capacity"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "上传速率"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Uplink Capacity"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "上传速率"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Downlink Capacity"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "下载速率"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Read Buffer Size"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "读出缓存"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Write Buffer Size"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "写入缓存"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Congestion"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "拥塞控制"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo "" >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgid "Shadowsocks New Version"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
echo 'msgstr "Shadowsocks"' >>package/lean/luci-app-ssr-plus/luci-app-ssr-plus/po/zh-cn/ssr-plus.po

#luci-app-SQM QOS
sed -i '/创建日志文件/d' feeds/luci/applications/luci-app-sqm/po/zh-cn/sqm.po
sed -i 's/sqm.log."/sqm.log."\nmsgstr "创建日志"/g' feeds/luci/applications/luci-app-sqm/po/zh-cn/sqm.po
sed -i 's/日志等级。/日志等级/g' feeds/luci/applications/luci-app-sqm/po/zh-cn/sqm.po

#rc.local
sed -i '$i\amixer sset Master 90%\namixer sset Master unmute\namixer sset PCM unmute\namixer sset PCM 80%\nifconfig eth1 192.168.0.2 netmask 255.255.255.0\niptables -I forwarding_rule -d 192.168.0.1 -j ACCEPT\niptables -t nat -I postrouting_rule -d 192.168.0.1 -j MASQUERADE\nhdparm -S 60 /dev/sdb\n' package/base-files/files/etc/rc.local

#luci-app-arpbind
echo '' >>package/lean/luci-app-arpbind/po/zh-cn/arpbind.po
echo 'msgid "MAC Address"' >>package/lean/luci-app-arpbind/po/zh-cn/arpbind.po
echo 'msgstr "MAC地址"' >>package/lean/luci-app-arpbind/po/zh-cn/arpbind.po

#luci-app-baidupcs-web
sed -i 's/+BaiduPCS-Web //g' package/lean/luci-app-baidupcs-web/Makefile
sed -i 's/nas/services/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
sed -i 's/BaiduPCS Web/百度网盘/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua

#luci-app-verysync
sed -i 's/+verysync//g' package/lean/luci-app-verysync/Makefile
sed -i 's/nas/services/g' package/lean/luci-app-verysync/luasrc/controller/verysync.lua

#luci-app-cifsd
sed -i 's/nas/services/g' package/lean/luci-app-cifsd/luasrc/controller/cifsd.lua
sed -i 's/NAS/services/g' package/lean/luci-app-cifsd/luasrc/controller/cifsd.lua
sed -i 's/ (CIFSD 内核)//g' package/lean/luci-app-cifsd/po/zh-cn/cifsd.po

#luci-app-unblockmusic
sed -i 's/解锁网易云灰色歌曲/网易解锁/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po

#luci-app-dockerman
sed -i 's/Docker CE 容器/容器管理/g' package/lean/luci-app-docker/po/zh-cn/docker.po

#kernel-graphics
#ver=$(cat target/linux/x86/Makefile | grep KERNEL_PATCHVER | cut -d '=' -f2)
#echo CONFIG_DRM=y >>target/linux/x86/config-${ver}
#echo CONFIG_DRM_I915=y >>target/linux/x86/config-${ver}
#echo CONFIG_DRM_I915_ALPHA_SUPPORT=y >>target/linux/x86/config-${ver}
#echo CONFIG_DRM_I915_CAPTURE_ERROR=y >>target/linux/x86/config-${ver}
#echo CONFIG_DRM_I915_COMPRESS_ERROR=y >>target/linux/x86/config-${ver}
#echo CONFIG_DRM_I915_USERPTR=y >>target/linux/x86/config-${ver}
#echo '# CONFIG_DRM_I915_ALPHA_SUPPORT is not set' >>target/linux/x86/config-${ver}
#echo '# CONFIG_DRM_I915_GVT is not set' >>target/linux/x86/config-${ver}
#echo '# DRM_I915_WERROR is not set' >>target/linux/x86/config-${ver}
#echo '# DRM_I915_DEBUG is not set' >>target/linux/x86/config-${ver}
#echo '# DRM_I915_SW_FENCE_DEBUG_OBJECTS is not set' >>target/linux/x86/config-${ver}
#echo '# DRM_I915_SW_FENCE_CHECK_DAG is not set' >>target/linux/x86/config-${ver}
#echo '# DRM_I915_DEBUG_GUC is not set' >>target/linux/x86/config-${ver}
#echo '# DRM_I915_LOW_LEVEL_TRACEPOINTS is not set' >>target/linux/x86/config-${ver}
#echo '# DRM_I915_DEBUG_VBLANK_EVADE is not set' >>target/linux/x86/config-${ver}

#luci-app-udpxy
sed -i 's/udpxy"))/组播转发"))/g' feeds/luci/applications/luci-app-udpxy/luasrc/controller/udpxy.lua
sed -i 's/udpxy is a UDP-to-HTTP multicast traffic relay daemon, here you can configure the settings./UDPXY是UDP到HTTP的组播流量中继守护程序，您可以在此处配置设置。/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Respawn/刷新/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Bind IP\/Interface/绑定IP\/接口/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Source IP\/Interface/源IP\/接口/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Buffer size/缓冲区大小/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Buffer messages/缓冲区消息/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Buffer time/缓冲时间/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Nice increment/优先级增量/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Multicast subscription renew/组播订阅续订/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua

#luci-app-passwall
#sed -i 's/msgstr "PassWall"/msgstr "翻墙工具"/g' package/lienol/lienol/luci-app-passwall/po/zh-cn/passwall.po
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/controller/passwall.lua
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/controller/passwall.lua
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/rule_version.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/rule_version.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/brook_version.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/brook_version.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/v2ray_version.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/v2ray_version.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/passwall_version.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/passwall_version.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/kcptun_version.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/rule/kcptun_version.htm
#sed -i 's/\/vpn\//\/services\//g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/global/status.htm
#sed -i 's/\/VPN\//\/SERVICES\//g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/global/status.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/global/tips.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/global/tips.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/global/status2.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/global/status2.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/node_list/link_add_node.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/node_list/link_add_node.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/node_list/node_list.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/node_list/node_list.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/log/log.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/log/log.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/haproxy/status.htm
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/view/passwall/haproxy/status.htm
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/model/cbi/passwall/node_config.lua
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/model/cbi/passwall/node_config.lua
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/model/cbi/passwall/node_list.lua
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/model/cbi/passwall/node_list.lua
#sed -i 's/vpn/services/g' package/lienol/lienol/luci-app-passwall/luasrc/model/cbi/passwall/rule.lua
#sed -i 's/VPN/SERVICES/g' package/lienol/lienol/luci-app-passwall/luasrc/model/cbi/passwall/rule.lua
