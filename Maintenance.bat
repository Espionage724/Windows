"%windir%\system32\Dism.exe" /online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%windir%\system32\sfc.exe" /scannow
"%windir%\system32\cleanmgr.exe"
"%ProgramFiles%\CCleaner\CCEnhancer-4.4.2.exe"
"%ProgramFiles%\CCleaner\CCleaner64.exe"
"%windir%\system32\dfrgui.exe"