:: Xbox
:: https://www.microsoft.com/store/productId/9N201KQXS5BM
:: cod23-cod.exe

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%SystemDrive%\XboxGames\Call of Duty\Content\cod23\cod23-cod.exe" /t "REG_SZ" /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE DISABLEDWM DISABLETHEMES" /f

:: End