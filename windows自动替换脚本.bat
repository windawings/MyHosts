@echo off
mode con lines=27 cols=60
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
:main
cls
color 2f
echo √√    √√  √√√      √√√√  √√√√√    √√√√
echo   √    √  √      √  √      √  √  √  √  √      √
echo   √    √  √      √  √              √      √
echo   √√√√  √      √    √√          √        √√
echo   √    √  √      √        √        √            √
echo   √    √  √      √          √      √              √
echo   √    √  √      √  √      √      √      √      √
echo √√    √√  √√√    √√√√      √√√    √√√√
echo.----------------------------------------------------------- 
echo.如有360等安全软件提醒，请勾选允许和不再提醒！
echo.
echo.警告：执行该命令你的原hosts将被覆盖！
echo.
color 2e
echo.-----------------------------------------------------------
echo.请选择使用：
echo.
echo.         1.使用穿墙host
echo.
echo.         2.使用穿墙host(仅使用IPv4)
echo.
echo.         3.恢复初始host(清除替换后的内容仅恢复127.0.0.1地址)	
echo.-----------------------------------------------------------

if exist "%SystemRoot%\System32\choice.exe" goto Win7Choice

set /p choice=请输入:

echo.
 if %choice%==1 goto IPV6&IPV4
 if %choice%==2 goto IPV4
 if %choice%==3 goto CL
	cls
    "set choice="
    echo 您输入有误，请重新选择。
	ping 127.0.1 -n "2">nul
	goto main
     goto end

:Win7Choice
choice /c 12 /n /m "请输入相应数字："
if errorlevel 3 goto CL
if errorlevel 2 goto IPV4
if errorlevel 1 goto IPV6&IPV4
cls
goto main

:IPV6&IPV4
cls
color 2f
copy "%~dp0hosts" "%SystemRoot%\System32\drivers\etc\hosts"
ipconfig /flushdns
echo.-----------------------------------------------------------
echo.
echo 覆盖本地hosts并刷新本地DNS解析缓存成功!
echo.
echo 现在去打开Google、Twitter、Facebook、Gmail、谷歌学术吧！
echo.
goto end

:IPV4
cls
color 2f
copy "%~dp0hosts_ipv4" "%SystemRoot%\System32\drivers\etc\hosts"
ipconfig /flushdns
echo.-----------------------------------------------------------
echo.
echo 覆盖本地hosts(仅IPv4)并刷新本地DNS解析缓存成功!
echo.
echo 现在去打开Google、Twitter、Facebook、Gmail、谷歌学术吧！
echo.
goto end

:CL
cls
color 2f
@echo 127.0.0.1 localhost > %SystemRoot%\System32\drivers\etc\hosts
echo 恭喜您，hosts恢复初始成功!
echo.
goto end

:end
echo 请按任意键退出。
@Pause>nul