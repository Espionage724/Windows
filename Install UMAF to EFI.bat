DEL /Q "%UserProfile%\Downloads\UMAF_BETA.zip"
"%SystemRoot%\System32\curl.exe" --output "%UserProfile%\Downloads\UMAF_BETA.zip" --location "https://github.com/DavidS95/Smokeless_UMAF/raw/refs/heads/main/UMAF_BETA.zip"

RMDIR /S /Q "%UserProfile%\Downloads\UMAF_BETA"
MKDIR "%UserProfile%\Downloads\UMAF_BETA"
"%SystemRoot%\System32\tar.exe" xf "%UserProfile%\Downloads\UMAF_BETA.zip" -C "%UserProfile%\Downloads\UMAF_BETA"

MOVE /Y "%UserProfile%\Downloads\UMAF_BETA\EFI\Boot\BOOTX64.efi" "%UserProfile%\Downloads\UMAF_BETA\EFI\Boot\umaf.efi"

"%SystemRoot%\System32\mountvol.exe" Y:\ /S

MOVE /Y "%UserProfile%\Downloads\UMAF_BETA\*.efi" "Y:\"
MOVE /Y "%UserProfile%\Downloads\UMAF_BETA\SREP_Config.cfg" "Y:\"
MOVE /Y "%UserProfile%\Downloads\UMAF_BETA\EFI\Boot\umaf.efi" "Y:\EFI\Boot"

"%SystemRoot%\System32\mountvol.exe" Y:\ /D

DEL /Q "%UserProfile%\Downloads\UMAF_BETA.zip"
RMDIR /S /Q "%UserProfile%\Downloads\UMAF_BETA"
