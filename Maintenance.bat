:: .NET Framework 4
"%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\ngen.exe" update /force /queue
"%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\ngen.exe" update /force /queue
"%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\ngen.exe" executequeueditems
"%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\ngen.exe" executequeueditems

:: System File Check, Cleanup, and Repair
"%SystemRoot%\System32\Dism.exe" /online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%SystemRoot%\System32\sfc.exe" /scannow

:: Classic Disk Cleanup
"%SystemRoot%\System32\cleanmgr.exe" /sageset:65535
"%SystemRoot%\System32\cleanmgr.exe" /sagerun:65535

:: Volume Shadow Copy
"%SystemRoot%\System32\vssadmin.exe" Delete Shadows /All

PAUSE

:: Defrag/Trim
"%SystemRoot%\System32\Defrag.exe" /AllVolumes /Defrag /TierOptimize /SlabConsolidate /Retrim /Optimize /PrintProgress /Verbose /NormalPriority

PAUSE

:: End
