:: Dell Latitude 5591
:: 2026/07/21

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
:: Intel Processor Power and Thermal Controller
"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\PCI\VEN_8086&DEV_1903&SUBSYS_08191028&REV_07\3&11583659&1&20" /v "ConfigFlags" /t "REG_DWORD" /d "1" /f

:: Intel Dynamic Tuning service
"%SystemRoot%\System32\sc.exe" stop "esifsvc"
"%SystemRoot%\System32\sc.exe" config "esifsvc" "start=disabled"

:: Dell Touchpad
"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\HID\DELL0819&Col03\5&179f3b29&0&0002" /v "ConfigFlags" /t "REG_DWORD" /d "1" /f

:: AlpsAlpine HID Monitor Service
"%SystemRoot%\System32\sc.exe" stop "ApHidMonitorService"
"%SystemRoot%\System32\sc.exe" config "ApHidMonitorService" "start=disabled"

:: Intel Storage Middleware Service
"%SystemRoot%\System32\sc.exe" stop "RstMwService"
"%SystemRoot%\System32\sc.exe" config "RstMwService" "start=disabled"

:: Realtek Audio Universal Service
"%SystemRoot%\System32\sc.exe" stop "RtkAudioUniversalService"
"%SystemRoot%\System32\sc.exe" config "RtkAudioUniversalService" "start=disabled"

:: End
