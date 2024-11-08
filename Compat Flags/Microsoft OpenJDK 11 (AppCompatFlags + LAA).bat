:: Microsoft Build of OpenJDK 11
:: javaw.exe
:: https://learn.microsoft.com/en-us/java/openjdk/download

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles%\Microsoft\jdk-11.0.25.9-hotspot\bin\javaw.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe" /v "UseLargePages" /t "REG_DWORD" /d "1" /f

:: End