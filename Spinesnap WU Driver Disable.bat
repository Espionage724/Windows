:: Initial
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions" /v "DenyDeviceIDs" /t "REG_DWORD" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions" /v "DenyDeviceIDsRetroactive" /t "REG_DWORD" /d "0" /f

:: Intel(R) HD Graphics 530
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "1" /t "REG_SZ" /d "PCI\VEN_8086&DEV_191B&SUBSYS_105B1025&REV_06" /f

:: NVIDIA GeForce GTX 970M
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "2" /t "REG_SZ" /d "PCI\VEN_10DE&DEV_13D8&SUBSYS_105B1025&REV_A1" /f

:: Realtek High Definition Audio
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "3" /t "REG_SZ" /d "HDAUDIO\FUNC_01&VEN_10EC&DEV_0255&SUBSYS_1025105B&REV_1000" /f

::Lift Restrictions
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "1" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "2" /f
::reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs" /v "3" /f