:: Steam
:: https://store.steampowered.com/app/2791440/Brighter_Shores/

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles(x86)%\Steam\steamapps\common\Brighter Shores\x64\Brighter Shores.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Brighter Shores.exe" /v "UseLargePages" /t "REG_DWORD" /d "1" /f

:: End
