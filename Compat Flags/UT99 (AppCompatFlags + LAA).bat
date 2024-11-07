:: Steam
:: https://store.steampowered.com/app/13240/Unreal_Tournament_Game_of_the_Year_Edition/

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%ProgramFiles(x86)%\Steam\steamapps\common\Unreal Tournament\System\UnrealTournament.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\UnrealTournament.exe" /v "UseLargePages" /t "REG_DWORD" /d "1" /f

:: End
