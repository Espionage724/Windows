"%windir%\system32\Dism.exe" /online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%windir%\system32\sfc.exe" /scannow
"%windir%\system32\cleanmgr.exe" /sageset:65535
"%windir%\system32\cleanmgr.exe" /sagerun:65535
rmdir "%temp%" /S /Q
mkdir "%temp%"
rmdir "%windir%\temp" /S /Q
mkdir "%windir%\temp"
"%windir%\system32\dfrgui.exe"
