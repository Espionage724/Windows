"%SystemRoot%\System32\reg.exe" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\FipsAlgorithmPolicy" /v "Enabled" /t "REG_DWORD" /d "1" /f
