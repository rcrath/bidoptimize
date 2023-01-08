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
ECHO.  Press r Restore
ECHO.  Press t Restore blueTooth only

ECHO.  Press h for Helper apps

ECHO.  Press d for bidule Default patch
ECHO.  Press b for bidule Big patch  
ECHO.  Press e for bidule Empty patch

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
IF %Input% == t GOTO BTonly
IF %Input% == q GOTO Quit


:Optimize
cls
ECHO.
ECHO. Optimizing your computer now!
ECHO.
ECHO. 
rem conversational agents
NET STOP "AarSvc_50234""

rem DESC
NET STOP "Apple Mobile Device Service"

rem Background Intelligent Transfer Service
NET STOP "BITS"

rem Bluetooth Audio Gateway Service
NET STOP "BTAGService"

rem Bluetooth Support Service
NET STOP "bthserv"

rem BluetoothUserService_50234
NET STOP "BluetoothUserService_50234"

rem Bonjour Service
NET STOP "Bonjour Service"

rem The Connected User Experiences and Telemetry service enables features that support in-application and connected user experiences. Additionally, this service manages the event driven collection and transmission of diagnostic and usage information (used to improve the experience and quality of the Windows Platform) when the diagnostics and usage privacy option settings are enabled under Feedback and Diagnostics.
NET STOP "NAME"

rem Data Usage
NET STOP "DusmSvc"

rem Dropbox Service
NET STOP "DbxSvc"

rem Diagnostic Policy Service
NET STOP "DPS"

rem Diagnostic Service Host
NET STOP "WdiServiceHost"

rem Docker Desktop Service
NET STOP "com.docker.service"

rem logitech hub
NET STOP "LGHUBUpdaterService"

rem Machine Debug Manager
NET STOP "MDM"

rem Microsoft Office Click-to-Run Service
NET STOP "ClickToRunSvc"

rem Manages the telephony state on the device
NET STOP "PhoneSvc"

rem Print Spooler
NET STOP "Spooler"

rem Radio Management and Airplane Mode Service
NET STOP "RmSvc"

rem Realtek Audio Universal Service
NET STOP "RtkAudioUniversalService"

rem Update Orchestrator Service
NET STOP "UsoSvc"

rem Windows Biometric Servic
NET STOP "WbioSrvc"

rem Provides image acquisition services for scanners and cameras
NET STOP "stisvc"

rem Windows Search
rem NET STOP "WSearch"

rem Microsoft Store Install Service
NET STOP "InstallService"



ECHO. Stopping some programs


rem activates the language bar and alternative user input. 
rem C:\windows\system32\taskkill.exe /IM  ctfmon.exe /T

C:\windows\system32\taskkill.exe /f /IM Dropbox.exe /T

C:\windows\system32\taskkill.exe /f /IM DropboxUpdate.exe /T

C:\windows\system32\taskkill.exe /IM iTunesHelper.exe /T

rem java updater
C:\windows\system32\taskkill.exe /IM jucheck.exe /T

rem java updater
C:\windows\system32\taskkill.exe /IM jusched.exe /T

C:\windows\system32\taskkill.exe /IM OneDrive.exe /T

rem C:\windows\system32\taskkill.exe /IM  SearchFilterHost.exe /T

rem C:\windows\system32\taskkill.exe /IM  SearchIndexer.exe /T

rem onscreen keyboard for typing
C:\windows\system32\taskkill.exe /IM  TabTip.exe /T

rem kill onboard audio
"C:\Users\rich\bin\audio\util\devcon.exe" disable hdaudio*

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
ECHO.    
ECHO.
ECHO.
GOTO Menu

:BidDef
CLS
ECHO. Running Default patch
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\Bidule.exe"
ECHO.
ECHO.
ECHO.
GOTO Menu

:BidGit
CLS
ECHO. Running Big patch
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\Bidule.exe" "C:\Users\rich\Dropbox\audio\git\bidule-mobile\Mobile6-64.bidule"
ECHO.
ECHO.
ECHO.
GOTO Menu

:BidEmpty
CLS
ECHO. Empty bidule layout
start "" /D "C:\Program Files\Plogue\Bidule" /REALTIME "C:\Program Files\Plogue\Bidule\Bidule.exe" "C:\Users\rich\Dropbox\audio\git\empty bidule\NoU3xM0G.bidule"

ECHO.
ECHO.
GOTO Menu


:Restore
CLS
ECHO.
ECHO. Restoring everything for normal use!
ECHO.
rem conversational agents
NET START "AarSvc_50234""

rem Apple Mobile Device Support
NET START "Apple Mobile Device Service"

rem Background Intelligent Transfer Service
NET START "BITS"

rem Bluetooth Audio Gateway Service
NET START "BTAGService"

rem Bluetooth Support Service
NET START "bthserv"

rem BluetoothUserService_50234
NET START "BluetoothUserService_50234"

rem Bonjour Service
NET START "Bonjour Service"

rem The Connected User Experiences and Telemetry service enables features that support in-application and connected user experiences. Additionally, this service manages the event driven collection and transmission of diagnostic and usage information (used to improve the experience and quality of the Windows Platform) when the diagnostics and usage privacy option settings are enabled under Feedback and Diagnostics.
NET START "NAME"

rem Data Usage
NET START "DusmSvc"

rem Dropbox Service
NET START "DbxSvc"

rem Diagnostic Policy Service
NET START "DPS"

rem Diagnostic Service Host
NET START "WdiServiceHost"

rem Docker Desktop Service
NET START "com.docker.service"

rem logitech hub
NET START "LGHUBUpdaterService"

rem Machine Debug Manager
NET START "MDM"

rem Microsoft Office Click-to-Run Service
NET START "ClickToRunSvc"

rem Manages the telephony state on the device
NET START "PhoneSvc"

rem Print Spooler
NET START "Spooler"

rem Radio Management and Airplane Mode Service
NET START "RmSvc"

rem Realtek Audio Universal Service
NET START "RtkAudioUniversalService"

rem Update Orchestrator Service
NET START "UsoSvc"

rem Windows Biometric Service
NET START "WbioSrvc"

rem Provides image acquisition services for scanners and cameras
NET START "stisvc"

rem Windows Search
rem NET START "WSearch"

rem Microsoft Store Install Service
NET START "InstallService"





ECHO. restarting programs
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

:BTonly
CLS
ECHO.
ECHO. Restoring Bluetooth only
ECHO.

rem Bluetooth Audio Gateway Service
NET START "BTAGService"

rem Bluetooth Support Service
NET START "bthserv"

rem BluetoothUserService_50234
NET START "BluetoothUserService_50234"

rem Bonjour Service
NET START "Bonjour Service"

pause
CLS
ECHO.
ECHO.
ECHO. Your Bluetooth has been restored
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
TIMEOUT /T 2