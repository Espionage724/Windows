REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\FipsAlgorithmPolicy" /v "Enabled" /t "REG_DWORD" /d "1" /f

"powershell.exe" -Command "$md5 = New-Object -TypeName 'System.Security.Cryptography.MD5CryptoServiceProvider'"

PAUSE

:: End