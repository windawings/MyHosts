@echo off
mode con lines=27 cols=60
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
:main
cls
color 2f
echo �̡�    �̡�  �̡̡�      �̡̡̡�  �̡̡̡̡�    �̡̡̡�
echo   ��    ��  ��      ��  ��      ��  ��  ��  ��  ��      ��
echo   ��    ��  ��      ��  ��              ��      ��
echo   �̡̡̡�  ��      ��    �̡�          ��        �̡�
echo   ��    ��  ��      ��        ��        ��            ��
echo   ��    ��  ��      ��          ��      ��              ��
echo   ��    ��  ��      ��  ��      ��      ��      ��      ��
echo �̡�    �̡�  �̡̡�    �̡̡̡�      �̡̡�    �̡̡̡�
echo.----------------------------------------------------------- 
echo.����360�Ȱ�ȫ������ѣ��빴ѡ����Ͳ������ѣ�
echo.
echo.���棺ִ�и��������ԭhosts�������ǣ�
echo.
color 2e
echo.-----------------------------------------------------------
echo.��ѡ��ʹ�ã�
echo.
echo.         1.ʹ�ô�ǽhost
echo.
echo.         2.ʹ�ô�ǽhost(��ʹ��IPv4)
echo.
echo.         3.�ָ���ʼhost(����滻������ݽ��ָ�127.0.0.1��ַ)	
echo.-----------------------------------------------------------

if exist "%SystemRoot%\System32\choice.exe" goto Win7Choice

set /p choice=������:

echo.
 if %choice%==1 goto IPV6&IPV4
 if %choice%==2 goto IPV4
 if %choice%==3 goto CL
	cls
    "set choice="
    echo ����������������ѡ��
	ping 127.0.1 -n "2">nul
	goto main
     goto end

:Win7Choice
choice /c 12 /n /m "��������Ӧ���֣�"
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
echo ���Ǳ���hosts��ˢ�±���DNS��������ɹ�!
echo.
echo ����ȥ��Google��Twitter��Facebook��Gmail���ȸ�ѧ���ɣ�
echo.
goto end

:IPV4
cls
color 2f
copy "%~dp0hosts_ipv4" "%SystemRoot%\System32\drivers\etc\hosts"
ipconfig /flushdns
echo.-----------------------------------------------------------
echo.
echo ���Ǳ���hosts(��IPv4)��ˢ�±���DNS��������ɹ�!
echo.
echo ����ȥ��Google��Twitter��Facebook��Gmail���ȸ�ѧ���ɣ�
echo.
goto end

:CL
cls
color 2f
@echo 127.0.0.1 localhost > %SystemRoot%\System32\drivers\etc\hosts
echo ��ϲ����hosts�ָ���ʼ�ɹ�!
echo.
goto end

:end
echo �밴������˳���
@Pause>nul