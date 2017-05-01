Invoke-WebRequest "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" -OutFile "C:\Windows\System32\drivers\etc\hosts"
ipconfig /flushdns
reg add "HKLM\SYSTEM\CurrentControlSet\services\Dnscache\Parameters" /v "MaxNegativeCacheTtl" /t "REG_DWORD" /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\Dnscache\Parameters" /v "MaxCacheTtl" /t "REG_DWORD" /d "1" /f