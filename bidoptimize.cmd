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
ECHO. adobe updater
NET STOP "Adobe Acrobat Update Service"

NET STOP "Apple Mobile Device Service"

NET STOP "AppXSvc" 

NET STOP "BDESVC" 

NET STOP "Bonjour Service" 

NET STOP "BITS" 

NET STOP "bthserv" 

NET STOP "BthAvctpSvc" 

NET STOP "CscService" 

rem Connected User Experiences and Telemetry
NET STOP "DiagTrack" 

rem dropbox service
NET STOP "DbxSvc" 

NET STOP "DusmSvc" 

NET STOP "gupdate" 

NET STOP "Google Update Service (gupdatem)" 

NET STOP "iPod Service" 

NET STOP "lfsvc" 

NET STOP "LicenseManager" 

NET STOP "Mozilla Maintenance Service" 

NET STOP "NcdAutoSetup" 

NET STOP "NcbService" /yes

NET STOP "NIHardwareService" 

NET STOP "RasMan" 

NET STOP "RtkBtManServ" 

NET STOP "SDRSVC" 

NET STOP "SEMgrSvc" 

NET STOP "SessionEnv" 

NET STOP "SmsRouter" 

NET STOP "Spooler" 

NET STOP "SstpSvc" 

NET STOP "stisvc" 

NET STOP "TermService" /yes

NET STOP "TimeBrokerSvc" 

NET STOP "UmRdpService" 

NET STOP "wbengine" 

NET STOP "wlidsvc" 

NET STOP "wuauserv" 

NET STOP "WlanSvc" 

NET STOP "WSearch" 



ECHO. Stopping some programs

C:\windows\system32\taskkill.exe /IM ClipMate.exe /T

C:\windows\system32\taskkill.exe /IM  ctfmon.exe /T

C:\windows\system32\taskkill.exe /f /IM Dropbox.exe /T

C:\windows\system32\taskkill.exe /f /IM DropboxUpdate.exe /T

C:\windows\system32\taskkill.exe /IM iTunesHelper.exe /T

rem java updater
C:\windows\system32\taskkill.exe /IM jucheck.exe /T

rem java updater
C:\windows\system32\taskkill.exe /IM jusched.exe /T

rem chrome phone home
C:\windows\system32\taskkill.exe /IM nacl64.exe /T

C:\windows\system32\taskkill.exe /IM OneDrive.exe /T

C:\windows\system32\taskkill.exe /IM  SearchFilterHost.exe /T

C:\windows\system32\taskkill.exe /IM  SearchIndexer.exe /T

C:\windows\system32\taskkill.exe /IM  SkypeHost.exe /T

C:\windows\system32\taskkill.exe /IM  Launchy.exe /T

rem kill onboard audio
"C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe" disable hdaudio*

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

NET START "TimeBrokerSvc" 

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