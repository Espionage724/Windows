@echo off

CD "%Temp%"

:: Intel Dynamic Tuning Generic Participant
"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\INT3403\Skin" /v "ConfigFlags" /t "REG_DWORD" /d "1" /f

:: Intel Dynamic Tuning Generic Participant
"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\INT3403\NGFF" /v "ConfigFlags" /t "REG_DWORD" /d "1" /f

:: Intel Dynamic Tuning Generic Participant
"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\INT3403\TMEM" /v "ConfigFlags" /t "REG_DWORD" /d "1" /f

:: Intel Dynamic Tuning Manager
"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\INT3400\2&daba3ff&1" /v "ConfigFlags" /t "REG_DWORD" /d "1" /f

:: Intel Dynamic Tuning Processor Participant
"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\PCI\VEN_8086&DEV_1903&SUBSYS_08191028&REV_07\3&11583659&1&20" /v "ConfigFlags" /t "REG_DWORD" /d "1" /f

:: End