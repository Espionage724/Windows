taskkill /IM "OneDrive.exe" /F
%windir%\SysWOW64\OneDriveSetup.exe /uninstall
rmdir "%UserProfile%\OneDrive" "%ProgramData%\Microsoft OneDrive" "%LocalAppData%\Microsoft\OneDrive" "C:\OneDriveTemp" /S /Q
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f