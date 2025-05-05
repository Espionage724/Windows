:: Dell Latitude 5591

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

:: End
