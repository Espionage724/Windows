:: Dell Latitude 5591
:: 2026/01/15

:: Initial
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions" /v "DenyDeviceIDs" /t "REG_DWORD" /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions" /v "DenyDeviceIDsRetroactive" /t "REG_DWORD" /d "0" /f

:: Dell Touchpad
:: AlpsAlpine Virtual HID Device
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "1" /t "REG_SZ" /d "HID\VEN_DELL&DEV_0819&Col03" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "2" /t "REG_SZ" /d "HID\Vid_044E&Pid_1212&Col01" /f
"sc.exe" stop "ApHidMonitorService" & "sc.exe" config "ApHidMonitorService" "start=disabled"

:: Intel(R) Dynamic Tuning
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "3" /t "REG_SZ" /d "ACPI\VEN_INT&DEV_3400" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "4" /t "REG_SZ" /d "PCI\VEN_8086&DEV_1903&SUBSYS_08191028&REV_07" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "5" /t "REG_SZ" /d "ACPI\VEN_INT&DEV_3403" /f
"sc.exe" stop "esifsvc" & "sc.exe" config "esifsvc" "start=disabled"

:: Intel(R) HID Event Filter
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "6" /t "REG_SZ" /d "ACPI\VEN_INT&DEV_33D5" /f

:: Intel(R) 300 Series Chipset Family SATA AHCI Controller
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "7" /t "REG_SZ" /d "PCI\VEN_8086&DEV_A353&SUBSYS_08191028&REV_10" /f
"sc.exe" stop "RstMwService" & "sc.exe" config "RstMwService" "start=disabled"

:: End