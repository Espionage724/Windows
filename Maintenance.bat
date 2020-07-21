"%windir%\microsoft.net\Framework\v4.0.30319\ngen.exe" update /force /queue
"%windir%\microsoft.net\Framework64\v4.0.30319\ngen.exe" update /force /queue
"%windir%\microsoft.net\Framework\v4.0.30319\ngen.exe" executequeueditems
"%windir%\microsoft.net\Framework64\v4.0.30319\ngen.exe" executequeueditems

"%windir%\system32\Dism.exe" /online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%windir%\system32\sfc.exe" /scannow

"%windir%\system32\cleanmgr.exe" /sageset:65535
"%windir%\system32\cleanmgr.exe" /sagerun:65535

"%windir%\system32\dfrgui.exe"
