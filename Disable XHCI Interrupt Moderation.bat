@echo off

:: Portable
"Rw.exe" /Min /NoLogo /Stdout /Command="W32 0xC1222024 0x00000000"

:: Installed
::"%ProgramFiles%\RW-Everything\Rw.exe" /Min /NoLogo /Stdout /Command="W32 0xC1222024 0x00000000"

::Auto-start
::SCHTASKS /Create /SC "ONLOGON" /TN "XHCI IMOD" /TR "'%ProgramFiles%\RW-Everything\Rw.exe' /Min /NoLogo /Stdout /Command='W32 0xC1222024 0x00000000'" /F

:: End