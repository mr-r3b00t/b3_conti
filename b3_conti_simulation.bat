REM Simulate A human threat actor doing enumeration
REM mRr3b00t - Cyber Education Script 
REM Use at own risk
REM Hack 4 Good
REM Run from a command prompt (cmd.exe)

whoami
whoami /groups
nltest /dclist:%USERDOMAIN%
net localgroup administrators
net group /domain "Domain Admins"
net group /domain "Enterprise Admins"
net computers
net accounts
net view /DOMAIN:%USERDOMAIN%
wmic.exe  /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayname /Format:List
systeminfo
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\Currentversion\Winlogon"
reg query HKEY_LOCAL_MACHINE\SOFTWARE\RealVNC\WinVNC4 /v password
reg query "HKLM\SYSTEM\Current\ControlSet\Services\SNMP"
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\Currentversion\Winlogon"
reg query" HKCU\Software\SimonTatham\PuTTY\Sessions"
type "%AllUsersProfile%Application Data\McAfee\Common Framework\SiteList.xml"
type C:\inetpub\wwwroot\web.config
REM #### This can be slow ####
REM reg query HKLM /f password /t REG_SZ /s
REM reg query HKCU /f password /t REG_SZ /s
