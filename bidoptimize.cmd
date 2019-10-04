cls
@Echo off
if exist %USERPROFILE%\DJbatch.txt goto menu
start reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0
Echo Don't delete this file! The Ultimate Dj Batch file needs it to run fine! >> %USERPROFILE%\DJbatch.txt

:Menu
ECHO.
ECHO. Welcome to the bidulizer
ECHO.
ECHO.
ECHO.  Press o Optimize
ECHO.  Press h for Helper apps
ECHO.  Press d for bidule Default patch
ECHO.  Press b for bidule Big patch  
ECHO.  Press e for bidule Empty patch
ECHO.  Press r Restore
ECHO.  Press q Quit
ECHO.
ECHO.
Set /p input=What do you want to do? 

IF %Input% == o GOTO Optimize
IF %Input% == h GOTO Helpers 
IF %Input% == d GOTO BidDef
IF %Input% == b GOTO BidGit
IF %Input% == e GOTO BidEmpty
IF %Input% == r GOTO Restore
IF %Input% == q GOTO Quit

:Optimize
cls
ECHO.
ECHO. Optimizing your computer now!
ECHO.
ECHO. 
rem adobe updater
NET STOP "Adobe Acrobat Update Service"

NET STOP "Apple Mobile Device Service"

rem AppX Deployment Service (AppXSVC) (tends to restart itself even on manual)
NET STOP "AppXSvc" 

rem Bitlocker
NET STOP "BDESVC" 

NET STOP "Bonjour Service" 

rem Background Intell xfer srvce (tends to restart)
NET STOP "BITS" 

rem Bluetooth Support Service 
NET STOP "bthserv" 

rem Bluetooth Support Service for Bluetooth Audio Device or Wireless Headphones.
NET STOP "BthAvctpSvc" 

rem Connected Device Platform Service. seems to keep restarting
Net STOP "CDPSvc"

rem offline files
NET STOP "CscService" 

rem Connected User Experiences and Telemetry
NET STOP "DiagTrack" 

rem dropbox service
NET STOP "DbxSvc" 

rem Data Usage (DusmSvc) Service. 
NET STOP "DusmSvc" 

rem google. this and next one seem to be out of commission.
NET STOP "gupdate" 
rem google. this and prev one seem to be out of commission.
NET STOP "Google Update Service (gupdatem)" 

NET STOP "iPod Service" 

rem geolocation
NET STOP "lfsvc" 

rem Win Lic Mgr. tends to restart itself
NET STOP "LicenseManager" 

NET STOP "Mozilla Maintenance Service" 

rem Network Connected Devices Auto-Setup 
NET STOP "NcdAutoSetup" 

rem Network Connection Broker
NET STOP "NcbService" /yes

rem Native Instruments Hardware service. I think this remains from an old Guitar rig install.
NET STOP "NIHardwareService" 

rem Remote Access Connection Manager.  needed for connecting TO remote computer via vpn 
NET STOP "RasMan" 

rem Realtek Bluetooth Device Manager Service
NET STOP "RtkBtManServ" 

rem  Windows Backup
NET STOP "SDRSVC" 

rem Payments and NFC/SE Manager
NET STOP "SEMgrSvc" 

rem Remote Desktop Configuration
NET STOP "SessionEnv" 

rem Microsoft Windows SMS Router Service
NET STOP "SmsRouter" 

rem print spooler
NET STOP "Spooler" 

rem Secure Socket Tunneling Protocol Service
NET STOP "SstpSvc" 

rem Windows Image Acquisition (WIA)
NET STOP "stisvc" 

rem Remote Desktop Services
NET STOP "TermService" /yes

rem Remote Desktop Services UserMode Port Redirector
NET STOP "UmRdpService" 

rem Block Level Backup Engine Service
NET STOP "wbengine" 

rem Microsoft Account Sign-in Assistant
NET STOP "wlidsvc" 

rem Windows Update
NET STOP "wuauserv" 

rem WLAN AutoConfig
NET STOP "WlanSvc" 

rem Windows Search
NET STOP "WSearch" 



ECHO. Stopping some programs

C:\windows\system32\taskkill.exe /IM ClipMate.exe /T

rem activates the language bar and alternative user input. 
C:\windows\system32\taskkill.exe /IM  ctfmon.exe /T

C:\windows\system32\taskkill.exe /f /IM Dropbox.exe /T

C:\windows\system32\taskkill.exe /f /IM DropboxUpdate.exe /T

C:\windows\system32\taskkill.exe /IM iTunesHelper.exe /T

rem java updater
C:\windows\system32\taskkill.exe /IM jucheck.exe /T

rem java updater
C:\windows\system32\taskkill.exe /IM jusched.exe /T

rem chrome debugger...probably deprecated
rem C:\windows\system32\taskkill.exe /IM nacl64.exe /T

C:\windows\system32\taskkill.exe /IM OneDrive.exe /T

C:\windows\system32\taskkill.exe /IM  SearchFilterHost.exe /T

C:\windows\system32\taskkill.exe /IM  SearchIndexer.exe /T

C:\windows\system32\taskkill.exe /IM  SkypeHost.exe /T

C:\windows\system32\taskkill.exe /IM  Launchy.exe /T

rem kill onboard audio
"C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe" disable hdaudio*
pause
CLS
ECHO.
ECHO. Your PC has been optimized 
GOTO Menu

:Helpers
cls
ECHO.
ECHO.
ECHO.
ECHO.
ECHO. start helpers
ECHO.
ECHO.
ECHO.

ECHO. start SoftStep
start "" /D "C:\Program Files (x86)\McMillen\SoftStep\v.2\SoftStepAdvancedEditor" /AFFINITY FC "C:\Program Files (x86)\McMillen\SoftStep\v.2\SoftStepAdvancedEditor\SoftStep Advanced Editor.exe"
ECHO. Start Max
start "" /D "C:\Program Files (x86)\Cycling '74\Max 5.0" /AFFINITY FC "C:\Program Files (x86)\Cycling '74\Max 5.0\Max.exe" 

ECHO.
ECHO.
ECHO.
ECHO.
ECHO. start MidiOx and check midi
start "" /D "C:\Program Files (x86)\MIDIOX" /AFFINITY FC "C:\Program Files (x86)\MIDIOX\midiox.exe"
CLS
ECHO.
ECHO.
ECHO. CHECK:
ECHO.    * MIDI works?
ECHO.    * MidiOx is closed?
ECHO.    * OWCIT drive turned On?
ECHO.
ECHO.
GOTO Menu

:BidDef
CLS
ECHO. Running Default patch
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe"
ECHO.
ECHO.
ECHO.
GOTO Menu

:BidGit
CLS
ECHO. Running Big patch
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe" "C:\Users\rich\Dropbox\audio\git\bidule-mobile\Mobile6-64.bidule"
ECHO.
ECHO.
ECHO.
GOTO Menu

:BidEmpty
CLS
ECHO. Empty bidule layout
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe" "C:\Users\rich\Dropbox\audio\git\empty bidule
oU3xM0G.bidule"
ECHO.
ECHO.
ECHO.
GOTO Menu


:Restore
CLS
ECHO.
ECHO. Restoring everything for normal use!
ECHO.
NET START "Apple Mobile Device Service"
rem NET START "AppXSvc" 
rem NET START "BDESVC" 

NET START "Bonjour Service" 

NET START "BITS" 

NET START "bthserv" 

NET START "BthAvctpSvc" 

rem Connected User Experiences and Telemetry
NET START "DiagTrack" 

rem dropbox service
NET START "DbxSvc" 

rem NET START "DusmSvc" 

rem NET START "gupdate" 

rem NET START "Google Update Service (gupdatem)" 

NET START "iPod Service" 

rem geolocation
NET START "lfsvc" 

NET START "LicenseManager" 

NET START "Mozilla Maintenance Service" 

NET START "NcdAutoSetup" 
rem Network Connection Broker Service
NET START "NcbService" /yes

NET START "NIHardwareService" 

rem remote access mgr
NET START "RasMan" 

rem bluetooth stuff
NET START "RtkBtManServ" 

rem win backup
NET START "SDRSVC" 

rem payment mgr
rem NET START "SEMgrSvc" 
 
rem remote desktop config
rem NET START "SessionEnv" 

rem Microsoft Windows SMS Router Service. will start itself if needed
rem NET START "SmsRouter" 

NET START "Spooler" 

rem Secure Socket Tunneling Protocol (SSTP) to connect to remote computers using VPN
NET START "SstpSvc" 

rem Still Image Acquisition
NET START "stisvc" 

rem connect to remote desktops
NET START "TermService" /yes

rem Remote Desktop Services UserMode Port Redirector
rem NET START "UmRdpService" 

rem Block Level Backup Engine Service
NET START "wbengine" 

rem Microsoft Account Sign-in Assistant
NET START "wlidsvc" 

rem Win update
NET START "wuauserv" 

rem WLAN AutoConfig
NET START "WlanSvc" 

rem NET START "WSearch" 



ECHO. restarting programs
start "" "C:\Program Files (x86)\ClipMate7\ClipMate.exe"
start "" "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"
start "" "C:\Program Files\iTunes\iTunesHelper.exe"


rem restore onboard audio
"C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe" enable hdaudio*
pause
CLS
ECHO.
ECHO.
ECHO. Your PC has been restored
ECHO.
ECHO.
GOTO Menu

:Quit
CLS
ECHO.
ECHO.
ECHO.
ECHO. See ya!
ECHO.
ECHO. Rich Rath Modified this script in 2015
ECHO. Originally credited to to SmiTTTen - DJ Trancicted - Stashe
ECHO.
ECHO.
ECHO.
ECHO.
TIMEOUT /T 5