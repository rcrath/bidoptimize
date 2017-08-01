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

C:\windows\system32\net.exe  stop "AdobeARMservice" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "Apple Mobile Device Service" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "BDESVC" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "Bonjour Service" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "ClipSVC" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "cpextender" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "DiagTrack" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "DbxSvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "lfsvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "HomeGroupProvider" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "LicenseManager" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "NcdAutoSetup" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "NcbService" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "Spooler" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "TimeBrokerSvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "TabletInputService" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "wbengine" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "AppXSvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "wscsvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "wuauserv" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "WlanSvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "VIAKaraokeService" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "VMUSBArbService" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "SDRSVC" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "WdNisSvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "WinDefend" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "MpsSvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "stisvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "WSearch" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "BITS" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "bthserv" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "iPod Service" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "Apple Mobile Device Service" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "SmsRouter" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "cpextender" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "AdobeFlashPlayerUpdateSvc" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "CscService" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "gupdate" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "Google Update Service (gupdatem)" /yes 2>%USERPROFILE%\temp.txt
C:\windows\system32\net.exe  stop "Mozilla Maintenance Service" /yes 2>%USERPROFILE%\temp.txt

ECHO. Stopping useless programs
rem chicony camera
C:\windows\system32\taskkill.exe /f /IM CECAPLF.exe 2>%USERPROFILE%\temp.txt
C:\windows\system32\taskkill.exe /f /IM ClipMate.exe 2>%USERPROFILE%\temp.txt
C:\windows\system32\taskkill.exe /f /IM Dropbox.exe 2>%USERPROFILE%\temp.txt
rem windows defender notices
C:\windows\system32\taskkill.exe /f /IM MSASCuiL.exe 2>%USERPROFILE%\temp.txt
rem antimalware service executable
C:\windows\system32\taskkill.exe /f /IM MsMpEng.exe 2>%USERPROFILE%\temp.txt
rem chrome phone home
C:\windows\system32\taskkill.exe /f /IM nacl64.exe 2>%USERPROFILE%\temp.txt
rem Microsoft Network Realtime Inspection Service
C:\windows\system32\taskkill.exe /f /IM NisSrv.exe 2>%USERPROFILE%\temp.txt
C:\windows\system32\taskkill.exe /f /IM  SearchFilterHost.exe 2>%USERPROFILE%\temp.txt
C:\windows\system32\taskkill.exe /f /IM  SearchIndexer.exe 2>%USERPROFILE%\temp.txt
C:\windows\system32\taskkill.exe /f /IM  SkypeHost.exe  2>%USERPROFILE%\temp.txt
C:\windows\system32\taskkill.exe /f /IM  ClipMate.exe  2>%USERPROFILE%\temp.txt
C:\windows\system32\taskkill.exe /f /IM  Launchy.exe  2>%USERPROFILE%\temp.txt

rem kill onboard audio
"C:\WINDOWS\system32\devcon.exe" disable hdaudio*

if exist %USERPROFILE%\temp.txt del %USERPROFILE%\temp.txt
cls
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
ECHO. blank bidule layout
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe" "C:\Users\rich\Dropbox\audio\git\bidule-mobile\NoU3xM0G.bidule"
ECHO.
ECHO.
ECHO.
GOTO Menu


:Restore
CLS
ECHO.
ECHO. Restoring everything for normal use!
ECHO.

C:\windows\system32\net.exe  start "AdobeARMservice" /yes"
C:\windows\system32\net.exe  start "Apple Mobile Device Service" /yes"
C:\windows\system32\net.exe  start "BDESVC" /yes"
C:\windows\system32\net.exe  start "Bonjour Service" /yes"
C:\windows\system32\net.exe  start "ClipSVC" /yes"
C:\windows\system32\net.exe  start "cpextender" /yes"
C:\windows\system32\net.exe  start "DiagTrack" /yes"
C:\windows\system32\net.exe  start "DbxSvc" /yes"
C:\windows\system32\net.exe  start "lfsvc" /yes"
C:\windows\system32\net.exe  start "HomeGroupProvider" /yes"
C:\windows\system32\net.exe  start "LicenseManager" /yes"
C:\windows\system32\net.exe  start "NcdAutoSetup" /yes"
C:\windows\system32\net.exe  start "NcbService" /yes"
C:\windows\system32\net.exe  start "Spooler" /yes"
C:\windows\system32\net.exe  start "TimeBrokerSvc" /yes"
C:\windows\system32\net.exe  start "TabletInputService" /yes"
C:\windows\system32\net.exe  start "wbengine" /yes"
C:\windows\system32\net.exe  start "AppXSvc" /yes"
C:\windows\system32\net.exe  start "wscsvc" /yes"
C:\windows\system32\net.exe  start "wuauserv" /yes"
C:\windows\system32\net.exe  start "WlanSvc" /yes"
C:\windows\system32\net.exe  start "VIAKaraokeService" /yes"
C:\windows\system32\net.exe  start "VMUSBArbService" /yes"
C:\windows\system32\net.exe  start "SDRSVC" /yes"
C:\windows\system32\net.exe  start "WdNisSvc" /yes"
C:\windows\system32\net.exe  start "WinDefend" /yes"
C:\windows\system32\net.exe  start "MpsSvc" /yes"
C:\windows\system32\net.exe  start "stisvc" /yes"
C:\windows\system32\net.exe  start "WSearch" /yes"
C:\windows\system32\net.exe  start "BITS" /yes"
C:\windows\system32\net.exe  start "bthserv" /yes"
C:\windows\system32\net.exe  start "iPod Service" /yes"
C:\windows\system32\net.exe  start "Apple Mobile Device Service" /yes"
C:\windows\system32\net.exe  start "SmsRouter" /yes"
C:\windows\system32\net.exe  start "cpextender" /yes"
C:\windows\system32\net.exe  start "AdobeFlashPlayerUpdateSvc" /yes"
C:\windows\system32\net.exe  start "CscService" /yes"
C:\windows\system32\net.exe  start "gupdate" /yes"
C:\windows\system32\net.exe  start "Google Update Service (gupdatem)" /yes"
C:\windows\system32\net.exe  start "Mozilla Maintenance Service" /yes"

ECHO. Stopping useless programs
rem chicony camera
start "" "C:\Program Files (x86)\ChiconyCam\CECAPLF.exe"
start "" "C:\Program Files (x86)\ClipMate7\ClipMate.exe"
start "" "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"
rem windows defender notices
start "" "C:\Program Files\Windows Defender\MSASCuiL.exe"
rem antimalware service executable
start "" "C:\Program Files\Windows Defender\MsMpEng.exe"
rem chrome phone home (the directory will change every update)
rem start "" "C:\Program Files (x86)\Google\Chrome\Application\57.0.2987.133\nacl64.exe"
rem Microsoft Network Realtime Inspection Service
start "" "C:\Program Files\Windows Defender\NisSrv.exe"
rem start "" "C:\Windows\System32\SearchFilterHost.exe"
start "" "C:\Windows\System32\SearchIndexer.exe"
start "" "C:\Program Files (x86)\Launchy\Launchy.exe"

rem restore onboard audio
"C:\WINDOWS\system32\devcon.exe" enable hdaudio*
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