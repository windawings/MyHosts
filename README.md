整合内容包括(2016-07-14 update by windawings)<br />
---
老D hosts(2016-07-03 update) (同时采用了老D的windows替换脚本)<br />
https://laod.org/hosts/2016-google-hosts.html<br />
<br />
<br />
lennylxx ipv6-hosts(2016-6-28 update)<br />
https://github.com/lennylxx/ipv6-hosts<br />
<br />
<br />
liuker0x007 hosts(2016-07-13 update)<br />
https://github.com/liuker0x007/hosts<br />
<br />
<br />
其他<br />
实在是忘记或者搜索不到的无名贡献者<br />
<br />
<br />
Hosts文件位置<br />
---
Windows系统hosts位于 C:\Windows\System32\drivers\etc\hosts<br />
Android(安卓)系统hosts位于 /system/etc/hosts<br />
Mac(苹果电脑)统hosts跟Linux一样位于 /etc/hosts<br />
iPhone(iOS)系统hosts跟Linux Mac一样位于 /etc/hosts<br />
Linux系统hosts位于 /etc/hosts<br />

修改Hosts后生效方法（除了重启外）<br />
---
Windows: ipconfig /flushdns<br />
Linux: sudo rcnscd restart<br />
Linux systemd发行版: sudo systemctl restart NetworkManager<br />
Mac OS X: sudo killall -HUP mDNSResponder<br />
<br />

Surge配置文件<br />
---
<p>
	测试中……
</p>
<p>
	目前仅整合IPv4部分资源，经测试[Host]太大Surge将无法正常启动
</p>
<p>
	尝试使用通配符缩小体积但缩小后Youtube视频观看异常，作罢
</p>
<p>
	目前勉强可以看看Youtube视频，有待Surge更新扩大配置文件体积或添加正则支持
</p>
屏蔽广告规则来自<br />
lhie1 Surge(2015-07-13 13:36 update)<br />
https://github.com/lhie1/Surge<br />
<br />
<br />
---
对以上贡献数据源的作者表示感谢！
