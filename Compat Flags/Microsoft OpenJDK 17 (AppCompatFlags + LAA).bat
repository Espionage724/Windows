:: Microsoft Build of OpenJDK 17
:: java.exe
:: https://learn.microsoft.com/en-us/java/openjdk/download

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles%\Microsoft\jdk-17.0.13.11-hotspot\bin\java.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\java.exe" /v "UseLargePages" /t "REG_DWORD" /d "1" /f

:: End