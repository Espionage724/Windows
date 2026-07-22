@echo off

TITLE ScriptTiger Hosts (fakenews + gambling)
CD "%Temp%"

"%SystemRoot%\System32\curl.exe" --output "%Temp%\blacklist-fg.txt" --location "https://scripttiger.github.io/alts/compressed/blacklist-fg.txt" --progress-bar
MOVE /Y "%Temp%\blacklist-fg.txt" "%SystemRoot%\System32\drivers\etc\hosts"

"%SystemRoot%\System32\ipconfig.exe" /flushdns
"%SystemRoot%\System32\ipconfig.exe" /registerdns

:: End