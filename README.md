整合内容包括(2017-3-31 update by windawings)<br />
---
racaljk hosts(2017-3-30 update)<br />
https://github.com/racaljk/hosts<br />
<br />
<br />
lennylxx ipv6-hosts(2017-3-20 update)<br />
https://github.com/lennylxx/ipv6-hosts<br />
<br />
<br />
liuker hosts(2016-11-9 update)<br />
https://github.com/liuker/hosts<br />
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
	测试中……Fiddler代理用于抓包
</p>
<p>
	目前仅整合IPv4部分资源
</p>
<p>
	目前把racaljk hosts整合了进去，Google、Facebook、Twitter啥的应该还能上，Youtube基本只能看看封面
</p>
屏蔽广告规则来自<br />
lhie1 Surge(2016-12-17 update)<br />
https://github.com/lhie1/Surge<br />
<br />
<br />
---
对以上开源数据的作者表示感谢！
