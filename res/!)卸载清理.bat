@ECHO OFF&(PUSHD "%~DP0")&(REG QUERY "HKU\S-1-5-19">NUL 2>&1)||(
powershell -Command "Start-Process '%~sdpnx0' -Verb RunAs"&&EXIT)

taskkill /f /im Typora.exe >NUL 2>NUL

rd/s/q "%AppData%\Typora"2>NUL

reg delete "HKCU\SOFTWARE\Typora" /f >NUL 2>NUL

reg delete "HKLM\SOFTWARE\Classes\.md" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\.mkd" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\.mmd" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\.text" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\.mdown" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\.markdown" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\Typora.md" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\Typora.mkd" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\Typora.mmd" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\Typora.text" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\Typora.mdown" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\Typora.markdown" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\Applications\Typora.exe" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Typora.exe" /f >NUL 2>NUL

ECHO.&ECHO Íê³É &TIMEOUT /t 3 >NUL&EXIT