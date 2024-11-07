:: 2024.2

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles%\FlightGear 2024.2\bin\fgfs.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fgfs.exe" /v "UseLargePages" /t "REG_DWORD" /d "1" /f

:: End
