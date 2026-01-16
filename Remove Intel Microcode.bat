TAKEOWN /F "%SystemRoot%\System32\mcupdate_GenuineIntel.dll"
ICACLS "%SystemRoot%\System32\mcupdate_GenuineIntel.dll" /grant "Administrators:F"
DEL /Q "%SystemRoot%\System32\mcupdate_GenuineIntel.dll"

PAUSE

:: End