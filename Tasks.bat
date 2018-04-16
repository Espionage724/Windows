:: ::::::::::::::::::::::::::::::
:: Sean Rhone (Espionage724)
:: Last updated: 2018/04/15
:: 
:: Removes unnecessary tasks
:: 
:: Task Name
:: Task Description (if present)
:: Task Delete Command
:: ::::::::::::::::::::::::::::::


:: AnalyzeSystem
:: This task analyzes the system looking for conditions that may cause high energy use.
schtasks /Delete /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /F

:: RegIdleBackup
:: Registry Idle Backup Task
schtasks /Delete /TN "Microsoft\Windows\Registry\RegIdleBackup" /F

:: RemoteAssistanceTask
:: Checks group policy for changes relevant to Remote Assistance
schtasks /Delete /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /F

:: CleanupOfflineContent
:: Auto cleanup RetailDemo Offline content
schtasks /Delete /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /F

:: BackgroundUploadTask
:: 
schtasks /Delete /TN "Microsoft\Windows\SettingSync\BackgroundUploadTask" /F

:: BackupTask
:: 
schtasks /Delete /TN "Microsoft\Windows\SettingSync\BackupTask" /F

:: NetworkStateChangeTask
:: 
schtasks /Delete /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /F

:: NetworkStateDeleteTask
:: 
schtasks /Delete /TN "Microsoft\Windows\SettingSync\NetworkStateDeleteTask" /F

:: SetupCleanupTask
:: Deletes previous Windows installation files a few days after installation.
schtasks /Delete /TN "Microsoft\Windows\Setup\SetupCleanupTask" /F

:: FamilySafetyMonitor
:: Initializes Family Safety monitoring and enforcement.
schtasks /Delete /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /F

:: FamilySafetyMonitorToastTask
:: Synchronizes the latest settings with the Microsoft family features service.
schtasks /Delete /TN "Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /F

:: FamilySafetyRefreshTask
:: Synchronizes the latest settings with the Microsoft family features service.
schtasks /Delete /TN "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /F

:: SpaceAgentTask
:: Storage Spaces Settings
schtasks /Delete /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /F

:: SpaceManagerTask
:: $(@%SystemRoot%\system32\spaceman.exe,-3)
schtasks /Delete /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /F

:: SpeechModelDownloadTask
:: 
schtasks /Delete /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /F

:: Storage Tiers Management Initialization
:: Initializes the Storage Tiers Management service when the first tiered storage space is detected on the system. Do not remove or modify this task.
schtasks /Delete /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /F

:: Storage Tiers Optimization
:: Optimizes the placement of data in storage tiers on all tiered storage spaces in the system.
schtasks /Delete /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Optimization" /F

:: SR
:: This task creates regular system protection points.
schtasks /Delete /TN "Microsoft\Windows\SystemRestore\SR" /F

:: HiveUploadTask
:: This task will automatically upload a roaming user profile's registry hive to its network location.
schtasks /Delete /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /F

:: ResolutionHost
:: The Windows Diagnostic Infrastructure Resolution host enables interactive resolutions for system problems detected by the Diagnostic Policy Service. It is triggered when necessary by the Diagnostic Policy Service in the appropriate user session. If the Diagnostic Policy Service is not running, the task will not run
schtasks /Delete /TN "Microsoft\Windows\WDI\ResolutionHost" /F

:: Windows Defender Cache Maintenance
:: Periodic maintenance task.
schtasks /Delete /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /F

:: Windows Defender Cleanup
:: Periodic cleanup task.
schtasks /Delete /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /F

:: Windows Defender Scheduled Scan
:: Periodic scan task.
schtasks /Delete /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /F

:: Windows Defender Verification
:: Periodic verification task.
schtasks /Delete /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /F

:: QueueReporting
:: Windows Error Reporting task to process queued reports.
schtasks /Delete /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /F

:: Automatic App Update
:: Automatically updates the user's Windows store applications.
schtasks /Delete /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /F

:: XblGameSaveTask
:: XblGameSave Standby Task
schtasks /Delete /TN "Microsoft\XblGameSave\XblGameSaveTask" /F

:: XblGameSaveTaskLogon
:: XblGameSave Logon Task
schtasks /Delete /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /F
