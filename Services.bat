:: ::::::::::::::::::::::::::::::
:: Sean Rhone (Espionage724)
:: Last updated: 2018/04/15
:: 
:: Removes or disables unnecessary services
:: 
:: Service Display/Nice Name
:: Service Name
:: Service Delete or Disable Command
:: ::::::::::::::::::::::::::::::

:: AMD External Events Utility
:: AMD External Events Utility
sc delete "AMD External Events Utility"

:: AMD FUEL Service
:: AMD FUEL Service
sc delete "AMD FUEL Service"

:: ActiveX Installer (AxInstSV)
:: AxInstSV
sc delete "AxInstSV"

:: AllJoyn Router Service
:: AJRouter
sc delete "AJRouter"

:: AppX Deployment Service (AppXSVC)
:: AppXSvc
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "Start" /t "REG_DWORD" /d "4" /f

:: BitLocker Drive Encryption Service
:: BDESVC
sc config "BDESVC" start= "disabled"

:: Block Level Backup Engine Service
:: wbengine
sc delete "wbengine"

:: CDPUserSvc
:: CDPUserSvc
sc delete "CDPUserSvc"

:: Data Sharing Service
:: DsSvc
sc delete "DsSvc"

:: Connected User Experiences and Telemetry
:: DiagTrack
sc delete "DiagTrack"

:: Contact Data
:: PimIndexMaintenanceSvc
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t "REG_DWORD" /d "4" /f

:: DataCollectionPublishingService
:: DcpSvc
sc delete "DcpSvc"

:: Diagnostic Policy Service
:: DPS
sc config "DPS" start= "disabled"

:: Diagnostic Service Host
:: WdiServiceHost
sc config "WdiServiceHost" start= "disabled"

:: Diagnostic System Host
:: WdiSystemHost
sc config "WdiSystemHost" start= "disabled"

:: Distributed Link Tracking Client
:: TrkWks
sc delete "TrkWks"

:: dmwappushsvc
:: dmwappushservice
sc delete "dmwappushservice"

:: Downloaded Maps Manager
:: MapsBroker
sc delete "MapsBroker"

:: Encrypting File System (EFS)
:: EFS
sc config "EFS" start= "disabled"

:: File History Service
:: fhsvc
sc delete "fhsvc"

:: Geolocation Service
:: lfsvc
sc delete "lfsvc"

:: HomeGroup Listener
:: HomeGroupListener
sc delete "HomeGroupListener"

:: HomeGroup Provider
:: HomeGroupProvider
sc delete "HomeGroupProvider"

:: MessagingService
:: MessagingService
sc delete "MessagingService"

:: Microsoft Account Sign-in Assistant
:: wlidsvc
sc delete "wlidsvc"

:: Network Connection Broker
:: NcbService
sc delete "NcbService"

:: Offline Files
:: CscService
sc delete "CscService"

:: Phone Service
:: PhoneSvc
sc delete "PhoneSvc"

:: Problem Reports and Solutions Control Panel Support
:: wercplsupport
sc delete "wercplsupport"

:: Program Compatibility Assistant Service
:: PcaSvc
sc delete "PcaSvc"

:: Remote Desktop Configuration
:: SessionEnv
sc delete "SessionEnv"

:: Remote Desktop Services
:: TermService
sc delete "TermService"

:: Remote Desktop Services UserMode Port Redirector
:: UmRdpService
sc delete "UmRdpService"

:: Remote Registry
:: RemoteRegistry
sc delete "RemoteRegistry"

:: Retail Demo Service
:: RetailDemo
sc delete "RetailDemo"

:: Routing and Remote Access
:: RemoteAccess
sc delete "RemoteAccess"

:: Security Center
:: wscsvc
sc delete "wscsvc"

:: Sync Host
:: OneSyncSvc
sc delete "OneSyncSvc"

:: TCP/IP NetBIOS Helper
:: lmhosts
sc delete "lmhosts"

:: Prevents Start Menu from loading; may be fixable with 3rd-party Start Menu
:: Tile Data model server
:: tiledatamodelsvc
:: reg add "HKLM\SYSTEM\CurrentControlSet\Services\tiledatamodelsvc" /v "Start" /t "REG_DWORD" /d "4" /f

:: Touch Keyboard and Handwriting Panel Service
:: TabletInputService
sc delete "TabletInputService"

:: User Data Access
:: UserDataSvc
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t "REG_DWORD" /d "4" /f

:: User Data Storage
:: UnistoreSvc
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t "REG_DWORD" /d "4" /f

:: User Experience Virtualization Service
:: UevAgentService
sc delete "UevAgentService"

:: VIA Karaoke digital mixer Service
:: VIAKaraokeService
sc delete "VIAKaraokeService"

:: Volume Shadow Copy
:: VSS
sc delete "VSS"

:: Windows Backup
:: SDRSVC
sc delete "SDRSVC"

:: Windows Defender Advanced Threat Protection Service
:: Sense
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /v "Start" /t "REG_DWORD" /d "4" /f

:: Windows Defender Network Inspection Service
:: WdNisSvc
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /v "Start" /t "REG_DWORD" /d "4" /f

:: Windows Defender Service
:: WinDefend
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v "Start" /t "REG_DWORD" /d "4" /f

:: Windows Error Reporting Service
:: WerSvc
sc delete "WerSvc"

:: Windows Insider Service
:: wisvc
sc delete "wisvc"

:: Windows License Manager Service
:: LicenseManager
sc delete "LicenseManager"

:: Windows Mobile Hotspot Service
:: icssvc
sc delete "icssvc"

:: Windows Push Notifications System Service
:: WpnService
sc delete "WpnService"

:: Windows Remote Management (WS-Management)
:: WinRM
sc delete "WinRM"

:: Windows Search
:: WSearch
sc delete "WSearch"

:: WinHTTP Web Proxy Auto-Discovery Service
:: WinHttpAutoProxySvc
sc delete "WinHttpAutoProxySvc"

:: Workstation
:: LanmanWorkstation
sc delete "LanmanWorkstation"

:: Xbox Live Auth Manager
:: XblAuthManager
sc delete "XblAuthManager"

:: Xbox Live Game Save
:: XblGameSave
sc delete "XblGameSave"

:: Xbox Live Networking Service
:: XboxNetApiSvc
sc delete "XboxNetApiSvc"
