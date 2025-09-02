@echo off
title Networking MultiTool -by Bishal
chcp 65001 >nul
setlocal enabledelayedexpansion

:MENU
cls

:: ASCII Banner

:: Get System Info
set "CURDATE=%date%"
set "CURTIME=%time%"
set "CURDIR=%cd%"
set "CURUSER=%username%"
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "IPv4"') do set "IPV4=%%i"
set "IPV4=%IPV4:~1%"

:: Move cursor to top right

set "SPACES=    
for /f %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

echo.						
echo              					%ESC%[38;2;255;0;0m███╗   ██╗███████╗████████╗      ███╗   ██╗██╗███╗   ██╗     ██╗ █████╗                                      
echo              					%ESC%[38;2;255;64;0m████╗  ██║██╔════╝╚══██╔══╝      ████╗  ██║██║████╗  ██║     ██║██╔══██╗                                 
echo              					%ESC%[38;2;255;128;0m██╔██╗ ██║█████╗     ██║         ██╔██╗ ██║██║██╔██╗ ██║     ██║███████║                                
echo              					%ESC%[38;2;255;160;0m██║╚██╗██║██╔══╝     ██║         ██║╚██╗██║██║██║╚██╗██║██   ██║██╔══██║                               
echo              					%ESC%[38;2;255;192;0m██║ ╚████║███████╗   ██║         ██║ ╚████║██║██║ ╚████║╚█████╔╝██║  ██║                                  
echo              					%ESC%[38;2;255;224;0m╚═╝  ╚═══╝╚══════╝   ╚═╝         ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚════╝ ╚═╝  ╚═╝     
echo %SPACES%Date       : %CURDATE%
echo %SPACES%Time       : %CURTIME%
echo %SPACES%CurDir     : %CURDIR%
echo %SPACES%User       : %CURUSER%
echo %SPACES%IPv4       : %IPV4%                                                                                                
echo.

:: Menu
echo ========================= [ Net Ninja - Networking Tool ] =========================
echo [1]  Ping a Host
echo [2]  Trace Route
echo [3]  Show IP Configuration (Basic)
echo [4]  Show IP Configuration (Detailed)
echo [5]  Flush DNS Cache
echo [6]  Show DNS Cache
echo [7]  Renew IP Address
echo [8]  Release IP Address
echo [9]  Test Internet Connection
echo [10] Display MAC Address
echo [11] Show Network Adapters
echo [12] Display Routing Table
echo [13] Show Active Connections
echo [14] Show Listening Ports
echo [15] Live Bandwidth Monitor
echo [16] Save IP Config to File
echo [17] Disable WiFi Adapter
echo [18] Enable WiFi Adapter
echo [19] DNS Lookup (Resolve Host)
echo [20] Reverse DNS Lookup
echo [21] WiFi Profile Viewer
echo [22] WiFi Password Extractor
echo [23] Ping Sweep
echo [24] Traceroute with Hop Count
echo [25] Check Network Adapter Drivers
echo [26] Network Uptime
echo [0]  Exit
echo ======================================================================================
set /p choice="Enter your choice: "

:: Actions

if "%choice%"=="1" (
  set /p host="Host: "
  if not defined host (echo No host entered.& pause & goto MENU)
  ping !host!
  pause
  goto MENU
)
if "%choice%"=="2" set /p host="Host: " & tracert !host! & pause & goto MENU
if "%choice%"=="3" ipconfig & pause & goto MENU
if "%choice%"=="4" ipconfig /all & pause & goto MENU
if "%choice%"=="5" ipconfig /flushdns & pause & goto MENU
if "%choice%"=="6" ipconfig /displaydns & pause & goto MENU
if "%choice%"=="7" ipconfig /renew & pause & goto MENU
if "%choice%"=="8" ipconfig /release & pause & goto MENU
if "%choice%"=="9" ping 8.8.8.8 & pause & goto MENU
if "%choice%"=="10" getmac & pause & goto MENU
if "%choice%"=="11" wmic nic get name, status & pause & goto MENU
if "%choice%"=="12" route print & pause & goto MENU
if "%choice%"=="13" netstat -an & pause & goto MENU
if "%choice%"=="14" netstat -an | find "LISTENING" & pause & goto MENU
if "%choice%"=="15" powershell -command "Get-NetAdapterStatistics" & pause & goto MENU
if "%choice%"=="16" ipconfig /all > ipconfig_report.txt & echo Saved to ipconfig_report.txt & pause & goto MENU
if "%choice%"=="17" netsh interface set interface name="Wi-Fi" admin=disabled & pause & goto MENU
if "%choice%"=="18" netsh interface set interface name="Wi-Fi" admin=enabled & pause & goto MENU
if "%choice%"=="19" set /p host="Host: " & nslookup !host! & pause & goto MENU
if "%choice%"=="20" set /p ip="IP Address: " & nslookup !ip! & pause & goto MENU
if "%choice%"=="21" netsh wlan show profiles & pause & goto MENU
if "%choice%"=="22" (
    set /p profile="WiFi Profile Name: "
    netsh wlan show profile name="!profile!" key=clear | findstr "Key Content"
    pause
    goto MENU
)
if "%choice%"=="23" (
    set /p net="Network (e.g. 196.167.1): "
    for /L %%i in (1,1,254) do (
        ping -n 1 -w 100 !net!.%%i | find "TTL=" >nul && echo !net!.%%i is up
    )
    pause
    goto MENU
)
if "%choice%"=="24" set /p host="Host: " & tracert -h 30 !host! & pause & goto MENU
if "%choice%"=="25" driverquery /FO table | findstr /I "Network" & pause & goto MENU
if "%choice%"=="26" net statistics workstation | find "Statistics since" & pause & goto MENU
if "%choice%"=="0" exit
goto MENU

