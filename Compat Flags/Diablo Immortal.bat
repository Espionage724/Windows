reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files (x86)\Diablo Immortal\Engine\Binaries\Win64\DiabloImmortal.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f
::reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DiabloImmortal.exe" /v "UseLargePages" /t "REG_DWORD" /d "1" /f