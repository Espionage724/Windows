:: Dell Latitude 5591
:: 2024/04/27

:: Initial
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions" /v "DenyDeviceIDs" /t "REG_DWORD" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions" /v "DenyDeviceIDsRetroactive" /t "REG_DWORD" /d "0" /f

:: Dell Touchpad
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "1" /t "REG_SZ" /d "HID\VEN_DELL&DEV_0819&Col03" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "1" /f

:: AlpsAlpine Virtual HID Device
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "2" /t "REG_SZ" /d "HID\Vid_044E&Pid_1212&Col01" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "2" /f
sc stop "ApHidMonitorService"
sc config "ApHidMonitorService" start="disabled"

:: Intel(R) Dynamic Tuning Manager
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "3" /t "REG_SZ" /d "ACPI\VEN_INT&DEV_3400" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "3" /f
sc stop "esifsvc"
sc config "esifsvc" start="disabled"

:: Intel(R) Dynamic Tuning Processor Participant
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "4" /t "REG_SZ" /d "PCI\VEN_8086&DEV_1903&SUBSYS_08191028&REV_07" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "4" /f

:: Intel(R) Dynamic Tuning Generic Participant
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "5" /t "REG_SZ" /d "ACPI\VEN_INT&DEV_3403" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "5" /f

:: Intel(R) HID Event Filter
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "6" /t "REG_SZ" /d "ACPI\VEN_INT&DEV_33D5" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "6" /f

:: Intel(R) 300 Series Chipset Family SATA AHCI Controller
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "7" /t "REG_SZ" /d "PCI\VEN_8086&DEV_A353&SUBSYS_08191028&REV_10" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "7" /f

:: Intel(R) Wireless Manageability
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "8" /t "REG_SZ" /d "SWC\842ADBFC-7499-407B-BD91-A52842585D0B" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "8" /f

:: Realtek Audio Universal Service
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "9" /t "REG_SZ" /d "SWC\VEN_10EC&SID_0001" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "9" /f
sc stop "RtkAudioUniversalService"
sc config "RtkAudioUniversalService" start="disabled"

:: STMicroelectronics 3-Axis Digital Accelerometer
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "10" /t "REG_SZ" /d "ACPI\VEN_SMO&DEV_8810" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "10" /f
