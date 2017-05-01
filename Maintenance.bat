"%windir%\system32\Dism.exe" /online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%windir%\system32\sfc.exe" /scannow
"%windir%\system32\cleanmgr.exe"
"%windir%\system32\dfrgui.exe"
