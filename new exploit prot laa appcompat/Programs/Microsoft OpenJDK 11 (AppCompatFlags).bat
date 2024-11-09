:: Microsoft Build of OpenJDK 11
:: https://learn.microsoft.com/en-us/java/openjdk/download
:: javaw.exe

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles%\Microsoft\jdk-11.0.25.9-hotspot\bin\javaw.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f

:: End