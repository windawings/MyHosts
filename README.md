# 整合内容包括(2018-08-25 update)  
---
-   [googlehosts hosts](https://github.com/googlehosts/hosts)(2018-08-06 update)
-   [racaljk hosts](https://github.com/racaljk/hosts)(2017-07-21 update)(已停止更新) 
-   [lennylxx ipv6-hosts](https://github.com/lennylxx/ipv6-hosts)(2018-08-20 update)
-   [liuker hosts](https://github.com/laucyun/hosts)(2016-11-9 update)(已停止更新) 

# Hosts文件位置
---
*   Windows系统hosts位于 C:\Windows\System32\drivers\etc\hosts
*   Android(安卓)系统hosts位于 /system/etc/hosts
*   Mac(苹果电脑)统hosts跟Linux一样位于 /etc/hosts
*   iPhone(iOS)系统hosts跟Linux Mac一样位于 /etc/hosts
*   Linux系统hosts位于 /etc/hosts

# 修改Hosts后生效方法(除重启外)
---
```
    Windows: ipconfig /flushdns
    Linux: sudo rcnscd restart
    Linux systemd发行版: sudo systemctl restart NetworkManager
    Mac OS X: sudo killall -HUP mDNSResponder
 ```

# Surge配置文件  
---
&emsp;&emsp;测试中……Fiddler代理用于抓包<br/>
&emsp;&emsp;目前把racaljk hosts整合了进去，Google、Facebook、Twitter啥的应该还能上，Youtube基本只能看看封面

## 屏蔽广告规则来自
---
-   [lhie1 Surge](https://github.com/lhie1/Surge)(2018-04-04 update)
  
# IPv6 DNS  
---
```
2620:0:ccc::2 (CISCO OpenDNS)  
2620:0:ccd::2 (CISCO OpenDNS)  
2001:470:20::2 (UnKnown)  
2001:4860:4860::8888 (Google)  
2001:4860:4860::8844 (Google)  
```

# THANKS  
---
&emsp;&emsp;对以上开源数据的作者表示感谢!