# bidoptimize11 settings. Edit this file, not the script.
# Group names and defaults are only the starting ticks; you can change every tick in the window.
@{
    # Windows and third-party services. Mode 'stop' = stop now, comes back on its own at reboot.
    # Mode 'disable' = also block restarts until you undo (for services that restart themselves).
    Services = @(
        @{ Name='DiagTrack';         Note='Telemetry';                                   Mode='disable'; Default=$true  }
        @{ Name='DusmSvc';           Note='Data usage counting';                         Mode='stop';    Default=$true  }
        @{ Name='UsoSvc';            Note='Update orchestrator';                         Mode='disable'; Default=$true  }
        @{ Name='wuauserv';          Note='Windows Update';                              Mode='disable'; Default=$true  }
        @{ Name='BITS';              Note='Background file transfers';                   Mode='disable'; Default=$true  }
        @{ Name='DoSvc';             Note='Delivery Optimization (update sharing)';      Mode='disable'; Default=$true  }
        @{ Name='InstallService';    Note='Microsoft Store installs';                    Mode='disable'; Default=$true  }
        @{ Name='WSearch';           Note='Windows Search indexing';                     Mode='disable'; Default=$true  }
        @{ Name='SysMain';           Note='Prefetching (Superfetch)';                    Mode='disable'; Default=$true  }
        @{ Name='Spooler';           Note='Print spooler';                               Mode='stop';    Default=$true  }
        @{ Name='WerSvc';            Note='Error reporting';                             Mode='stop';    Default=$true  }
        @{ Name='DPS';               Note='Diagnostic policy';                           Mode='stop';    Default=$true  }
        @{ Name='WdiServiceHost';    Note='Diagnostic host';                             Mode='stop';    Default=$true  }
        @{ Name='WdiSystemHost';     Note='Diagnostic system host';                      Mode='stop';    Default=$true  }
        @{ Name='PcaSvc';            Note='Program compatibility assistant';             Mode='stop';    Default=$true  }
        @{ Name='lfsvc';             Note='Location';                                    Mode='stop';    Default=$true  }
        @{ Name='MapsBroker';        Note='Downloaded maps';                             Mode='disable'; Default=$true  }
        @{ Name='PhoneSvc';          Note='Phone link / telephony';                      Mode='stop';    Default=$true  }
        @{ Name='WbioSrvc';          Note='Fingerprint / face sign-in';                  Mode='stop';    Default=$true  }
        @{ Name='stisvc';            Note='Scanners and cameras (image acquisition)';    Mode='stop';    Default=$true  }
        @{ Name='RmSvc';             Note='Radio management / airplane mode';            Mode='stop';    Default=$false }
        @{ Name='XblAuthManager';    Note='Xbox sign-in';                                Mode='stop';    Default=$true  }
        @{ Name='XblGameSave';       Note='Xbox game saves';                             Mode='stop';    Default=$true  }
        @{ Name='XboxNetApiSvc';     Note='Xbox networking';                             Mode='stop';    Default=$true  }
        @{ Name='XboxGipSvc';        Note='Xbox accessories';                            Mode='stop';    Default=$true  }
        @{ Name='wisvc';             Note='Windows Insider';                             Mode='stop';    Default=$true  }
        @{ Name='WMPNetworkSvc';     Note='Media sharing';                               Mode='stop';    Default=$true  }
        @{ Name='edgeupdate';        Note='Edge updater';                                Mode='disable'; Default=$true  }
        @{ Name='edgeupdatem';       Note='Edge updater (maintenance)';                  Mode='disable'; Default=$true  }
        @{ Name='MicrosoftEdgeElevationService'; Note='Edge elevation helper';           Mode='stop';    Default=$true  }
        @{ Name='ClickToRunSvc';     Note='Office updates and licensing';                Mode='stop';    Default=$true  }
        @{ Name='Bonjour Service';   Note='Apple device discovery';                      Mode='stop';    Default=$true  }
        @{ Name='LenovoVantageService'; Note='Lenovo Vantage';                           Mode='stop';    Default=$false }
        @{ Name='ImControllerService';  Note='Lenovo system interface (Fn keys may stop working)'; Mode='stop'; Default=$false }
        @{ Name='tvnserver';         Note='TightVNC remote control (you lose remote access)'; Mode='stop'; Default=$false }
        @{ Name='PaceLicenseDServices'; Note='iLok / Pro Tools plugin licenses (needed by those plugins)'; Mode='stop'; Default=$false }
        @{ Name='NTKDaemonService';  Note='Native Instruments helper (needed by NI hardware)'; Mode='stop'; Default=$false }
        @{ Name='PreSonus Hardware Access Service'; Note='PreSonus helper (needed by PreSonus hardware)'; Mode='stop'; Default=$false }
        @{ Name='Antelope-Manager-Service'; Note='Antelope helper (needed by your interface)'; Mode='stop'; Default=$false }

        # Added 2026-10-29. Windows services for a live session.
        @{ Name='CDPSvc';            Note='Connected Devices Platform';                  Mode='disable'; Default=$true  }
        @{ Name='InventorySvc';      Note='Inventory and compatibility appraisal (reports to Microsoft)'; Mode='disable'; Default=$true }
        @{ Name='whesvc';            Note='Windows Health and Optimized Experiences';    Mode='disable'; Default=$true  }
        @{ Name='WSAIFabricSvc';     Note='Windows AI Components Host';                  Mode='disable'; Default=$true  }
        @{ Name='webthreatdefsvc';   Note='Web Threat Defense';                          Mode='stop';    Default=$true  }
        @{ Name='wscsvc';            Note='Security Center (only shows alerts)';         Mode='stop';    Default=$true  }
        @{ Name='WpnService';        Note='Push notifications (pop-ups stop)';           Mode='disable'; Default=$true  }
        @{ Name='LanmanServer';      Note='Server (file sharing out; others cannot reach your shares)'; Mode='stop'; Default=$true }
        @{ Name='lmhosts';           Note='TCP/IP NetBIOS helper';                       Mode='stop';    Default=$true  }
        @{ Name='TrkWks';            Note='Distributed link tracking';                   Mode='stop';    Default=$true  }
        @{ Name='QWAVE';             Note='Quality Windows Audio Video Experience (network streaming)'; Mode='stop'; Default=$true }
        @{ Name='RpcLocator';        Note='RPC locator';                                 Mode='stop';    Default=$true  }
        @{ Name='wmiApSrv';          Note='WMI performance adapter';                     Mode='stop';    Default=$true  }
        @{ Name='BDESVC';            Note='BitLocker service';                           Mode='stop';    Default=$true  }
        @{ Name='LicenseManager';    Note='Microsoft Store license manager';             Mode='stop';    Default=$true  }
        @{ Name='DisplayEnhancementService'; Note='Display enhancement (HDR / brightness)'; Mode='stop';  Default=$true  }
        @{ Name='SensorService';     Note='Sensors (auto-rotate, ambient light)';        Mode='stop';    Default=$true  }
        @{ Name='W32Time';           Note='Windows Time (clock sync; clock may drift a few seconds a week)'; Mode='stop'; Default=$true }
        @{ Name='DolbyDAXAPI';       Note='Dolby audio effects (Windows sound path only, not ASIO)'; Mode='disable'; Default=$true }
        @{ Name='SenaryAudioApp.Svc'; Note='Senary audio effects (Windows sound path only, not ASIO)'; Mode='disable'; Default=$true }

        # Updaters: stay off until you undo.
        @{ Name='MozillaMaintenance'; Note='Mozilla updater';                            Mode='disable'; Default=$true  }
        @{ Name='LibreOfficeMaintenance'; Note='LibreOffice updater';                    Mode='disable'; Default=$true  }
        @{ Name='brave';             Note='Brave updater';                               Mode='disable'; Default=$true  }
        @{ Name='bravem';            Note='Brave updater (maintenance)';                 Mode='disable'; Default=$true  }
        @{ Name='GoogleUpdaterService157.0.8089.0'; Note='Google updater (the number changes with each version; use Analyze this PC to add new ones)'; Mode='disable'; Default=$true }
        @{ Name='GoogleUpdaterInternalService157.0.8089.0'; Note='Google updater (internal)'; Mode='disable'; Default=$true }
        @{ Name='GoogleUpdaterInternalService152.0.7933.0'; Note='Google updater (internal, older version)'; Mode='disable'; Default=$true }
        @{ Name='DropboxUpdaterService123.0.6299.152'; Note='Dropbox updater (the number changes with each version)'; Mode='disable'; Default=$true }
        @{ Name='DropboxUpdaterInternalService123.0.6299.152'; Note='Dropbox updater (internal)'; Mode='disable'; Default=$true }

        # Lenovo and Intel helpers that talk to the laptop firmware. Unticked on purpose: test them one at a time.
        # (Lenovo Fn and function keys service is deliberately not listed, so it can never be stopped from here.)
        @{ Name='LITSSVC';           Note='Lenovo Intelligent Thermal Solution (fan and heat policy)'; Mode='stop'; Default=$false }
        @{ Name='dptftcs';           Note='Intel Dynamic Tuning telemetry (reads the temperature sensors)'; Mode='stop'; Default=$false }
        @{ Name='ipfsvc';            Note='Intel Innovation Platform Framework (power and heat policy)'; Mode='stop'; Default=$false }
        @{ Name='SmartSense';        Note='Lenovo Intelligent Sensing';                  Mode='stop';    Default=$false }
        @{ Name='LenovoProcessManagement'; Note='Lenovo process management';             Mode='stop';    Default=$false }
    )

    # Programs to close. Names are process names without .exe. They are reopened (as you, not as admin) on undo.
    Programs = @(
        @{ Name='Dropbox';              Note='Dropbox sync';                      Default=$true  }
        @{ Name='DropboxUpdate';        Note='Dropbox updater';                   Default=$true  }
        @{ Name='OneDrive';             Note='OneDrive sync';                     Default=$true  }
        @{ Name='ProtonDrive';          Note='Proton Drive sync';                 Default=$true  }
        @{ Name='ProtonVPN';            Note='Proton VPN';                        Default=$false }
        @{ Name='Gajim';                Note='Chat';                              Default=$true  }
        @{ Name='SDXHelper';            Note='Office helper';                     Default=$true  }
        @{ Name='AdobeCollabSync';      Note='Acrobat sync';                      Default=$true  }
        @{ Name='AdobeARM';             Note='Adobe updater';                     Default=$true  }
        @{ Name='iTunesHelper';         Note='iTunes helper';                     Default=$true  }
        @{ Name='GoogleCrashHandler';   Note='Google crash reporter';             Default=$true  }
        @{ Name='GoogleCrashHandler64'; Note='Google crash reporter';             Default=$true  }
        @{ Name='msedge';               Note='Edge (closes ALL Edge windows)';    Default=$false }
        @{ Name='copyq';                Note='CopyQ clipboard manager';           Default=$false }
        @{ Name='Universal Control';    Note='PreSonus Universal Control (only for PreSonus gear)'; Default=$false }
        @{ Name='Antelope Launcher';    Note='Antelope launcher (heavy CPU user)'; Default=$false }
        @{ Name='discrete8_oryx';       Note='Antelope Discrete 8 mixer (heavy CPU user)'; Default=$false }
    )

    # Scheduled tasks. Each rule is a pattern matched against the task's folder and name.
    # First match wins. Anything that matches nothing goes to 'Leave alone'.
    # Tasks outside the Microsoft folder (Lenovo etc.) go to 'Pause'.
    TaskRules = @(
        @{ Group='Pause'; Pattern='^Windows\\Windows Defender\\' }
        @{ Group='Pause'; Pattern='^Windows\\UpdateOrchestrator\\' }
        @{ Group='Pause'; Pattern='^Windows\\\.NET Framework\\' }
        @{ Group='Pause'; Pattern='^Windows\\(Time Synchronization|Time Zone)\\' }

        @{ Group='Pause'; Pattern='^Windows\\Defrag\\' }
        @{ Group='Pause'; Pattern='^Windows\\Chkdsk\\ProactiveScan' }
        @{ Group='Pause'; Pattern='^Windows\\Data Integrity Scan\\' }
        @{ Group='Pause'; Pattern='^Windows\\DiskCleanup\\' }
        @{ Group='Pause'; Pattern='^Windows\\DiskFootprint\\' }
        @{ Group='Pause'; Pattern='^Windows\\MemoryDiagnostic\\' }
        @{ Group='Pause'; Pattern='^Windows\\Maintenance\\WinSAT' }
        @{ Group='Pause'; Pattern='^Windows\\Servicing\\StartComponentCleanup' }
        @{ Group='Pause'; Pattern='^Windows\\Sysmain\\' }
        @{ Group='Pause'; Pattern='^Windows\\SystemRestore\\' }
        @{ Group='Pause'; Pattern='^Windows\\Registry\\RegIdleBackup' }
        @{ Group='Pause'; Pattern='^Windows\\Shell\\IndexerAutomaticMaintenance' }
        @{ Group='Pause'; Pattern='^Windows\\SpacePort\\' }
        @{ Group='Pause'; Pattern='^Windows\\FileHistory\\' }
        @{ Group='Pause'; Pattern='^Windows\\WindowsUpdate\\' }
        @{ Group='Pause'; Pattern='^Windows\\InstallService\\' }
        @{ Group='Pause'; Pattern='^Office\\' }
        @{ Group='Pause'; Pattern='^VisualStudio\\' }
        @{ Group='Pause'; Pattern='^Windows\\Maps\\' }
        @{ Group='Pause'; Pattern='^Windows\\Application Experience\\' }
        @{ Group='Pause'; Pattern='^Windows\\LanguageComponentsInstaller\\' }
        @{ Group='Pause'; Pattern='^Windows\\Flighting\\' }
        @{ Group='Pause'; Pattern='^Windows\\Customer Experience Improvement Program\\' }
        @{ Group='Pause'; Pattern='^Windows\\Feedback\\' }
        @{ Group='Pause'; Pattern='^Windows\\Sustainability\\' }
        @{ Group='Pause'; Pattern='^Windows\\DUSM\\' }
        @{ Group='Pause'; Pattern='^Windows\\Windows Error Reporting\\' }
        @{ Group='Pause'; Pattern='^Windows\\Device Information\\' }
        @{ Group='Pause'; Pattern='^Windows\\Diagnosis\\' }
        @{ Group='Pause'; Pattern='^Windows\\WDI\\' }
        @{ Group='Pause'; Pattern='^Windows\\PerformanceTrace\\' }
        @{ Group='Pause'; Pattern='^Windows\\Power Efficiency Diagnostics\\' }
        @{ Group='Pause'; Pattern='^Windows\\CloudRestore\\' }
        @{ Group='Pause'; Pattern='^Windows\\AppListBackup\\' }
        @{ Group='Pause'; Pattern='^Windows\\input\\' }
        @{ Group='Pause'; Pattern='^Windows\\International\\' }
        @{ Group='Pause'; Pattern='^Windows\\ConsentUX\\' }
        @{ Group='Pause'; Pattern='^Windows\\Shell\\(ThemesSyncedImageDownload|UpdateUserPicture)' }
        @{ Group='Pause'; Pattern='^Windows\\Work Folders\\' }
        @{ Group='Pause'; Pattern='^Windows\\(WCM|NlaSvc|WlanSvc|WwanSvc|UPnP|Windows Media Sharing)\\' }
        @{ Group='Pause'; Pattern='^Windows\\Shell\\FamilySafety' }
        @{ Group='Pause'; Pattern='^Windows\\Location\\' }
        @{ Group='Pause'; Pattern='^Windows\\Printing\\' }
        @{ Group='Pause'; Pattern='^Windows\\BitLocker\\' }
        @{ Group='Pause'; Pattern='^Windows\\EDP\\' }
        @{ Group='Pause'; Pattern='^Windows\\Hotpatch\\' }
        @{ Group='Pause'; Pattern='^Windows\\Subscription\\' }
        @{ Group='Pause'; Pattern='^Windows\\ExploitGuard\\' }
        @{ Group='Pause'; Pattern='^Windows\\Management\\Provisioning\\' }
    )

    # Words that mark something as audio-gear related, for the "Audio gear related" filter.
    AudioGearPatterns = @('Antelope', 'Discrete', 'Oryx', 'NTK', 'Native Instruments', 'PreSonus', 'PACE', 'iLok', 'Focusrite', 'Universal Control', 'Ableton', 'MOTU', 'RME', 'Steinberg', 'ASIO', 'Plogue', 'Bidule', 'MIDI', 'SoftStep', 'Max')

    # Startup items whose name contains any of these start out ticked (held back at next sign-in).
    StartupHold = @('Lenovo', 'Proton', 'Adobe', 'MicrosoftEdgeAutoLaunch', 'Update UWP')

    # Registry settings. Type is DWord. Each is restored to its old value (or removed) on undo.
    RegistryTweaks = @(
        @{ Note='UAC quiet: administrators are never asked for permission (UAC stays on; no restart needed)'; Path='HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'; Name='ConsentPromptBehaviorAdmin'; Data=0; Default=$true }
        @{ Note='Game Mode off';           Path='HKCU:\Software\Microsoft\GameBar';                         Name='AutoGameModeEnabled'; Data=0; Default=$true  }
        @{ Note='Game recording off';      Path='HKCU:\System\GameConfigStore';                             Name='GameDVR_Enabled';     Data=0; Default=$true  }
        @{ Note='Fast Startup off (full shutdown; takes effect at next shutdown)'; Path='HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power'; Name='HiberbootEnabled'; Data=0; Default=$false }
    )

    # Folder for saved layouts (.bop files). Blank = the 'state\layouts' folder next to the script.
    # The "Layout folder..." button in the window overrides this.
    LayoutFolder = ''

    # Apps you can start. Quick=$true puts it in the Start dropdown at the top. Default=$true marks the one chosen first.
    # Exe is a list of places to look; * matches any text and the newest Ableton version wins.
    # File is an optional project/patch to open with it. Affinity: 'Fast' = fastest cores only, 'Slow' = all others, 'All' = no limit.
    # Priority RealTime matches your old Bidule script; High is gentler on the rest of the system.
    Apps = @(
        @{ Name='Ableton Live';          Exe=@('C:\ProgramData\Ableton\Live *\Program\Ableton Live *.exe'); File=''; Priority='High';     Affinity='All'; Quick=$true;  Default=$true }
        @{ Name='Bidule';                Exe=@('C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe', 'C:\Program Files\Plogue\Bidule\Bidule.exe'); File=''; Priority='RealTime'; Affinity='All'; Quick=$false; Default=$false }
        @{ Name='Bidule - Big patch';    Exe=@('C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe', 'C:\Program Files\Plogue\Bidule\Bidule.exe'); File='%USERPROFILE%\Dropbox\audio\git\bidule-mobile\Mobile7-64.bidule'; Priority='RealTime'; Affinity='All'; Quick=$false; Default=$false }
        @{ Name='Bidule - Empty patch';  Exe=@('C:\Program Files\Plogue\Bidule\PlogueBidule_x64.exe', 'C:\Program Files\Plogue\Bidule\Bidule.exe'); File='%USERPROFILE%\Dropbox\audio\git\empty bidule\NoU3xM0G.bidule'; Priority='RealTime'; Affinity='All'; Quick=$false; Default=$false }
        @{ Name='Bidule'; Exe=@('C:\Program Files\Plogue\Bidule 0.9792\Bidule.exe'); File=''; Priority='High'; Affinity='All'; Quick=$false; Default=$false }
    )

    # Helper apps you open alongside the app. Default=$true means "close it before the app starts" (the tick in the window).
    Helpers = @(
        @{ Name='SoftStep Advanced Editor'; Exe='C:\Program Files (x86)\McMillen\SoftStep\v.2\SoftStepAdvancedEditor\SoftStep Advanced Editor.exe'; Priority='Normal'; Affinity='Slow'; Default=$false }
        @{ Name='Max';                      Exe="C:\Program Files (x86)\Cycling '74\Max 5.0\Max.exe";                                              Priority='Normal'; Affinity='Slow'; Default=$false }
        @{ Name='MIDI-OX';                  Exe='C:\Program Files (x86)\MIDIOX\midiox.exe';                                                          Priority='Normal'; Affinity='Slow'; Default=$false }
    )
}
