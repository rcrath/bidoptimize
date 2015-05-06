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
ECHO.  Press O Optimize
ECHO.  Press H for Helper apps
ECHO.  Press D for bidule Default patch
ECHO.  Press B for bidule Big patch  
ECHO.  Press R Restore
ECHO.  Press Q Quit
ECHO.
ECHO.
Set /p input=What do you want to do? 

IF %Input% == O GOTO Optimize
IF %Input% == H GOTO Helpers 
IF %Input% == D GOTO BidDef
IF %Input% == B GOTO BidGit
IF %Input% == R GOTO Restore
IF %Input% == Q GOTO Quit

:Optimize
CLS
ECHO.
ECHO. Optimizing your computer now!
ECHO.

net stop "Application Experience" /yes 2>%USERPROFILE%\temp.txt
net stop "AtherosSvc" /yes 2>%USERPROFILE%\temp.txt
net stop "Background Intelligent Transfer Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Bluetooth Device Manager" /yes 2>%USERPROFILE%\temp.txt
net stop "Bluetooth Media Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Bluetooth OBEX Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Bluetooth Support Service" /yes 2>%USERPROFILE%\temp.txt
net stop "CNG Key Isolation" /yes 2>%USERPROFILE%\temp.txt
net stop "Diagnostic Policy Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Diagnostic Service Host" /yes 2>%USERPROFILE%\temp.txt
net stop "Diagnostic System Host" /yes 2>%USERPROFILE%\temp.txt
net stop "Distributed Link Tracking Client" /yes 2>%USERPROFILE%\temp.txt
net stop "Extensible Authentication Protocol" /yes 2>%USERPROFILE%\temp.txt
net stop "FLEXnet Licensing Service 64" /yes 2>%USERPROFILE%\temp.txt
net stop "Function Discovery Provider Host" /yes 2>%USERPROFILE%\temp.txt
net stop "Function Discovery Resource Publication" /yes 2>%USERPROFILE%\temp.txt
net stop "HomeGroup Listener" /yes 2>%USERPROFILE%\temp.txt
net stop "HomeGroup Provider" /yes 2>%USERPROFILE%\temp.txt
net stop "Human Interface Device Access" /yes 2>%USERPROFILE%\temp.txt
net stop "IP Helper" /yes 2>%USERPROFILE%\temp.txt
net stop "iPod Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Network Connections" /yes 2>%USERPROFILE%\temp.txt
net stop "Network List Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Network Location Awareness" /yes 2>%USERPROFILE%\temp.txt
net stop "NVIDIA Display Driver Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Peer Name Resolution Protocol" /yes 2>%USERPROFILE%\temp.txt
net stop "Peer Networking Grouping" /yes 2>%USERPROFILE%\temp.txt
net stop "Peer Networking Identity Manager" /yes 2>%USERPROFILE%\temp.txt
net stop "Portable Device Enumerator Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Tablet PC Input Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Windows Firewall" /yes 2>%USERPROFILE%\temp.txt
net stop "Base Filtering Engine" /yes 2>%USERPROFILE%\temp.txt
net stop "IPsec Policy Agent" /yes 2>%USERPROFILE%\temp.txt
net stop "Windows Search" /yes 2>%USERPROFILE%\temp.txt
net stop "WinHTTP Web Proxy Auto-Discovery Service" /yes 2>%USERPROFILE%\temp.txt
net stop "WLAN AutoConfig" /yes 2>%USERPROFILE%\temp.txt
net stop "ZAtheros Bt&Wlan Coex Agent" /yes 2>%USERPROFILE%\temp.txt
net stop "Adobe Acrobat Update Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Apple Mobile Device" /yes 2>%USERPROFILE%\temp.txt
net stop "Bonjour Service" /yes 2>%USERPROFILE%\temp.txt
net stop "FLEXnet Licensing Service" /yes 2>%USERPROFILE%\temp.txt
net stop "Google Update Service (gupdate)" /yes 2>%USERPROFILE%\temp.txt
net stop "Google Update Service (gupdatem)" /yes 2>%USERPROFILE%\temp.txt
net stop "Mozilla Maintenance Service" /yes 2>%USERPROFILE%\temp.txt
net stop "NIHardwareService" /yes 2>%USERPROFILE%\temp.txt
net stop "NVIDIA Update Service Daemon" /yes 2>%USERPROFILE%\temp.txt
net stop "Print Spooler" /yes 2>%USERPROFILE%\temp.txt
net stop "Security Center" /yes 2>%USERPROFILE%\temp.txt
net stop "VIA Karaoke digital mixer Service" /yes 2>%USERPROFILE%\temp.txt

ECHO. Stopping useless programs
taskkill /f /IM Dropbox.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM AthBtTray.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM btplayerctrl.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM BtvStack.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  GoogleCrashHandler.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  GoogleCrashHandler64.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  armsvc.exe  2>%USERPROFILE%\temp.txt
taskkill /f /IM  iTunesHelper.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  iPodService.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  ONENOTEM.EXE 2>%USERPROFILE%\temp.txt
taskkill /f /IM  ClipMate.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  AdobeARM.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  jusched.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  nvtray.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  VDeck.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  obexsrv.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  nvxdsync.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  nvvsvc.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  FNPLicensingService64.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  ZeroConfigService.exe 2>%USERPROFILE%\temp.txt
taskkill /f /IM  Launchy.exe 2>%USERPROFILE%\temp.txt

rem kill onboard audio
"C:\Program Files (x86)\Windows Kits\8.1\Tools\x64\devcon.exe" disable hdaudio*

if exist %USERPROFILE%\temp.txt del %USERPROFILE%\temp.txt
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
ECHO. start vpedal
start "" /D "C:\Program Files (x86)\vPedal Hotkey Application 2" /AFFINITY FC  "C:\Program Files (x86)\vPedal Hotkey Application 2\vphotkey2.exe"
ECHO. start SoftStep
start "" /D "C:\Program Files (x86)\McMillen\SoftStep\v.2\SoftStepAdvancedEditor" /AFFINITY FC "C:\Program Files (x86)\McMillen\SoftStep\v.2\SoftStepAdvancedEditor\SoftStep Advanced Editor.exe"
ECHO. Start Max
start "" /D "C:\Program Files (x86)\Cycling '74\Max 5.0" /AFFINITY FC "C:\Program Files (x86)\Cycling '74\Max 5.0\Max.exe" "C:\Users\Owner\Dropbox\audio\Max-MSP\controllers\bamboo\OSC-Wacom-rcr\OSC-wacom.maxpat"
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
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe" "C:\Users\Owner\Dropbox\audio\git\bidule-mobile\Mobile5-64.bidule"
ECHO.
ECHO.
ECHO.
GOTO Menu

:Restore
CLS
ECHO.
ECHO. Restoring everything for normal use!
ECHO.

net start "Application Experience" /yes 2>%USERPROFILE%\temp.txt
net start "AtherosSvc" /yes 2>%USERPROFILE%\temp.txt
net start "Background Intelligent Transfer Service" /yes 2>%USERPROFILE%\temp.txt
net start "Bluetooth Device Manager" /yes 2>%USERPROFILE%\temp.txt
net start "Bluetooth Media Service" /yes 2>%USERPROFILE%\temp.txt
net start "Bluetooth OBEX Service" /yes 2>%USERPROFILE%\temp.txt
net start "Bluetooth Support Service" /yes 2>%USERPROFILE%\temp.txt
net start "CNG Key Isolation" /yes 2>%USERPROFILE%\temp.txt
net start "Diagnostic Policy Service" /yes 2>%USERPROFILE%\temp.txt
net start "Diagnostic Service Host" /yes 2>%USERPROFILE%\temp.txt
net start "Diagnostic System Host" /yes 2>%USERPROFILE%\temp.txt
net start "Distributed Link Tracking Client" /yes 2>%USERPROFILE%\temp.txt
net start "Extensible Authentication Protocol" /yes 2>%USERPROFILE%\temp.txt
net start "FLEXnet Licensing Service 64" /yes 2>%USERPROFILE%\temp.txt
net start "Function Discovery Provider Host" /yes 2>%USERPROFILE%\temp.txt
net start "Function Discovery Resource Publication" /yes 2>%USERPROFILE%\temp.txt
net start "HomeGroup Listener" /yes 2>%USERPROFILE%\temp.txt
net start "HomeGroup Provider" /yes 2>%USERPROFILE%\temp.txt
net start "Human Interface Device Access" /yes 2>%USERPROFILE%\temp.txt
net start "IP Helper" /yes 2>%USERPROFILE%\temp.txt
net start "iPod Service" /yes 2>%USERPROFILE%\temp.txt
net start "Network Connections" /yes 2>%USERPROFILE%\temp.txt
net start "Network List Service" /yes 2>%USERPROFILE%\temp.txt
net start "Network Location Awareness" /yes 2>%USERPROFILE%\temp.txt
net start "NVIDIA Display Driver Service" /yes 2>%USERPROFILE%\temp.txt
net start "Peer Name Resolution Protocol" /yes 2>%USERPROFILE%\temp.txt
net start "Peer Networking Grouping" /yes 2>%USERPROFILE%\temp.txt
net start "Peer Networking Identity Manager" /yes 2>%USERPROFILE%\temp.txt
net start "Portable Device Enumerator Service" /yes 2>%USERPROFILE%\temp.txt
net start "Tablet PC Input Service" /yes 2>%USERPROFILE%\temp.txt
net start "Windows Firewall" /yes 2>%USERPROFILE%\temp.txt
net start "Base Filtering Engine" /yes 2>%USERPROFILE%\temp.txt
net start "IPsec Policy Agent" /yes 2>%USERPROFILE%\temp.txt
net start "Windows Search" /yes 2>%USERPROFILE%\temp.txt
net start "WinHTTP Web Proxy Auto-Discovery Service" /yes 2>%USERPROFILE%\temp.txt
net start "WLAN AutoConfig" /yes 2>%USERPROFILE%\temp.txt
net start "ZAtheros Bt&Wlan Coex Agent" /yes 2>%USERPROFILE%\temp.txt
net start "Adobe Acrobat Update Service" /yes 2>%USERPROFILE%\temp.txt
net start "Apple Mobile Device" /yes 2>%USERPROFILE%\temp.txt
net start "Bonjour Service" /yes 2>%USERPROFILE%\temp.txt
net start "FLEXnet Licensing Service" /yes 2>%USERPROFILE%\temp.txt
net start "Google Update Service (gupdate)" /yes 2>%USERPROFILE%\temp.txt
net start "Google Update Service (gupdatem)" /yes 2>%USERPROFILE%\temp.txt
net start "Mozilla Maintenance Service" /yes 2>%USERPROFILE%\temp.txt
net start "NIHardwareService" /yes 2>%USERPROFILE%\temp.txt
net start "NVIDIA Update Service Daemon" /yes 2>%USERPROFILE%\temp.txt
net start "Print Spooler" /yes 2>%USERPROFILE%\temp.txt
net start "Security Center" /yes 2>%USERPROFILE%\temp.txt
net start "VIA Karaoke digital mixer Service" /yes 2>%USERPROFILE%\temp.txt

start "" "C:\Program Files (x86)\Bluetooth Suite\AthBtTray.exe" 
start "" "C:\Users\Owner\AppData\Roaming\Dropbox\bin\Dropbox.exe"
start "" "C:\Program Files (x86)\iTunes\iTunesHelper.exe" 
start "" "C:\Program Files (x86)\ClipMate7\ClipMate.exe"
start "" "C:/Program Files/NVIDIA Corporation/Display/nvtray.exe" -user_has_logged_in 1
start "" "C:\Program Files\Intel\WiFi\bin\ZeroConfigService.exe"  
start "" "C:\Program Files\Motorola\Bluetooth\btplayerctrl.exe" -Embedding  
start "" "C:\Program Files (x86)\Bluetooth Suite\BtvStack.exe" 
start "" "C:\Program Files (x86)\Launchy\Launchy.exe" /show"

rem restore onboard audio
"C:\Program Files (x86)\Windows Kits\8.1\Tools\x64\devcon.exe" enable hdaudio*
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