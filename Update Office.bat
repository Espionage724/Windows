@echo off

CD "%Temp%"

START "" /D "%Temp%" "%CommonProgramFiles%\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update "user" forceappshutdown="True" displaylevel="True"

:: End
