@echo off

TITLE Native NVMe
CD "%Temp%"

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides" /v "1176759950" /t "REG_DWORD" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides" /v "156965516" /t "REG_DWORD" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides" /v "1853569164" /t "REG_DWORD" /d "1" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides" /v "735209102" /t "REG_DWORD" /d "1" /f

:: End