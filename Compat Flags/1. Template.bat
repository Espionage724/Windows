:: Remove ::'s (below), change executable names, and paths for AppCompatFlags\Layers

::reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files\devilutionx\devilutionx.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f
::reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\devilutionx.exe" /v "UseLargePages" /t "REG_DWORD" /d "1" /f
