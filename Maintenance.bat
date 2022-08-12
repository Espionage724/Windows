:: .NET Framework 4
:: Option 1 from "Easy Ngen (.NET Framework) Runner v5.cmd" by Burf
"%windir%\Microsoft.NET\Framework\v4.0.30319\ngen.exe" update /force
"%windir%\Microsoft.NET\Framework\v4.0.30319\ngentask.exe" /runtimewide
"%windir%\Microsoft.NET\Framework64\v4.0.30319\ngen.exe" update /force
"%windir%\Microsoft.NET\Framework64\v4.0.30319\ngentask.exe" /runtimewide

:: System File Check, Cleanup, and Repair
"%windir%\system32\Dism.exe" /Online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%windir%\system32\sfc.exe" /SCANNOW

:: Classic Disk Cleanup
"%windir%\system32\cleanmgr.exe" /sageset:65535
"%windir%\system32\cleanmgr.exe" /sagerun:65535

:: VSS
vssadmin Delete Shadows /All

:: Defrag/Trim
"%windir%\system32\dfrgui.exe"