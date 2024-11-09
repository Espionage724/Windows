:: https://forum.flightgear.org/viewtopic.php?f=42&t=42564
:: https://github.com/The-Fl3dd0x/flightgear/releases
:: 2024.2
:: fgfs.exe

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles%\FlightGear 2024.2\bin\fgfs.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f

:: End