:: Microsoft Build of OpenJDK 17
:: https://learn.microsoft.com/en-us/java/openjdk/download
:: java.exe

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles%\Microsoft\jdk-17.0.13.11-hotspot\bin\java.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f

:: End