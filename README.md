整合内容包括(2017-5-29 update)  
---
racaljk hosts(2017-5-29 update)  
https://github.com/racaljk/hosts  
  
  
lennylxx ipv6-hosts(2017-5-25 update)  
https://github.com/lennylxx/ipv6-hosts  
  
  
liuker hosts(2016-11-9 update)  
https://github.com/liuker/hosts  
  
  
Hosts文件位置  
---
    Windows系统hosts位于 C:\Windows\System32\drivers\etc\hosts  
    Android(安卓)系统hosts位于 /system/etc/hosts  
    Mac(苹果电脑)统hosts跟Linux一样位于 /etc/hosts  
    iPhone(iOS)系统hosts跟Linux Mac一样位于 /etc/hosts  
    Linux系统hosts位于 /etc/hosts  

修改Hosts后生效方法（除了重启外）  
---
    Windows: ipconfig /flushdns  
    Linux: sudo rcnscd restart  
    Linux systemd发行版: sudo systemctl restart NetworkManager  
    Mac OS X: sudo killall -HUP mDNSResponder  
  

Surge配置文件  
---
	测试中……Fiddler代理用于抓包
	目前仅整合IPv4部分资源
	目前把racaljk hosts整合了进去，Google、Facebook、Twitter啥的应该还能上，Youtube基本只能看看封面
---
屏蔽广告规则来自  
lhie1 Surge(2017-5-29 update)  
https://github.com/lhie1/Surge
  


IPv6 DNS  
---
    2620:0:ccc::2 (CISCO OpenDNS)  
    2620:0:ccd::2 (CISCO OpenDNS)  
    2001:470:20::2 (UnKnown)  
    2001:4860:4860::8888 (Google)  
    2001:4860:4860::8844 (Google)  

THANKS  
---
<p>对以上开源数据的作者表示感谢！</p>