@echo off

TITLE Maintenance
CD "%Temp%"

:: Disk Cleanup Set-up
"%SystemRoot%\System32\cleanmgr.exe" /sageset:9999

:: System File Check, Cleanup, and Repair
"%SystemRoot%\System32\Dism.exe" /online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%SystemRoot%\System32\sfc.exe" /scannow

:: Disk Cleanup
"%SystemRoot%\System32\cleanmgr.exe" /sagerun:9999

:: Volume Shadow Copy
"%SystemRoot%\System32\vssadmin.exe" Delete Shadows /All

:: USN Change Journal
"%SystemRoot%\System32\fsutil.exe" usn deleteJournal /D "%SystemDrive%"

:: .NET Framework 4
"%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\ngen.exe" update /force /queue
"%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\ngen.exe" update /force /queue
"%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\ngen.exe" executequeueditems
"%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\ngen.exe" executequeueditems

ECHO Explorer close
PAUSE
"%SystemRoot%\System32\taskkill.exe" /F /IM "explorer.exe"
"%SystemRoot%\System32\timeout.exe" /T "2" /NOBREAK

:: Icon Cache
DEL /F /Q "%LocalAppData%\Microsoft\Windows\Explorer\"*".db"
DEL /F /Q "%UserProfile%\AppData\Local\IconCache.db"

:: Temp Dirs
DEL /F /Q "%LocalAppData%\Temp\*"
DEL /F /Q "%SystemRoot%\Temp\*"

TIMEOUT /T "2" /NOBREAK
START explorer.exe

:: Defrag/Trim
ECHO Defrag
PAUSE
"%SystemRoot%\System32\Defrag.exe" /AllVolumes /Defrag /TierOptimize /SlabConsolidate /Retrim /Optimize /PrintProgress /Verbose /NormalPriority

PAUSE

:: End
