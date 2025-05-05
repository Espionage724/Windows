TASKKILL /F /IM "explorer.exe"
TIMEOUT /NOBREAK /T "2"
DEL /F /Q "%LocalAppData%\Microsoft\Windows\Explorer\"*".db"
DEL /F /Q "%UserProfile%\AppData\Local\IconCache.db"
TIMEOUT /NOBREAK /T "2"
START explorer.exe

:: End
