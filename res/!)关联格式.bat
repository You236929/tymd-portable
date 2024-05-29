@ECHO OFF&(PUSHD "%~dp0")&(REG QUERY "HKU\S-1-5-19">NUL 2>&1)||(
powershell -Command "Start-Process '%~sdpnx0' -Verb RunAs"&&EXIT)

reg add "HKLM\SOFTWARE\Classes\.markdown\OpenWithProgids" /v "Typora.markdown" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\.md\OpenWithProgids" /v "Typora.md" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\.mdown\OpenWithProgids" /v "Typora.mdown" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\.mkd\OpenWithProgids" /v "Typora.mkd" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\.mmd\OpenWithProgids" /v "Typora.mmd" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\.text\OpenWithProgids" /v "Typora.text" /d "" >NUL 2>NUL

reg add "HKLM\SOFTWARE\Classes\Typora.markdown" /f /ve /d "Markdown File" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.markdown" /v "AppUserModelID" /d "abnerworks.Typora" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.markdown\DefaultIcon" /f /ve /d "%~dp0app\resources\assets\file.ico" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.markdown\shell\open\command" /f /ve /d "\"%~dp0Typora-portable.exe\" \"%%1\"" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.md" /f /ve /d "Markdown File" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.md" /v "AppUserModelID" /d "abnerworks.Typora" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.md\DefaultIcon" /f /ve /d "%~dp0app\resources\assets\file.ico" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.md\shell\open\command" /f /ve /d "\"%~dp0Typora-portable.exe\" \"%%1\"" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mdown" /f /ve /d "Markdown File" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mdown" /v "AppUserModelID" /d "abnerworks.Typora" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mdown\DefaultIcon" /f /ve /d "%~dp0app\resources\assets\file.ico" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mdown\shell\open\command" /f /ve /d "\"%~dp0Typora-portable.exe\" \"%%1\"" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mkd" /f /ve /d "Markdown File" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mkd" /v "AppUserModelID" /d "abnerworks.Typora" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mkd\DefaultIcon" /f /ve /d "%~dp0app\resources\assets\file.ico" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mkd\shell\open\command" /f /ve /d "\"%~dp0Typora-portable.exe\" \"%%1\"" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mmd" /f /ve /d "Markdown File" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mmd" /v "AppUserModelID" /d "abnerworks.Typora" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mmd\DefaultIcon" /f /ve /d "%~dp0app\resources\assets\file.ico" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.mmd\shell\open\command" /f /ve /d "\"%~dp0Typora-portable.exe\" \"%%1\"" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.text" /f /ve /d "Text File" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.text" /v "AppUserModelID" /d "abnerworks.Typora" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.text\DefaultIcon" /f /ve /d "%~dp0app\resources\assets\file.ico" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Typora.text\shell\open\command" /f /ve /d "\"%~dp0Typora-portable.exe\" \"%%1\"" >NUL 2>NUL

reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe" /f /ve /d "Typora" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe\DefaultIcon" /f /ve /d "%~dp0app\resources\assets\file.ico" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe\shell\open\command" /f /ve /d "\"%~dp0Typora-portable.exe\" \"%%1\"" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe\SupportedTypes" /v ".markdown" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe\SupportedTypes" /v ".md" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe\SupportedTypes" /v ".mdown" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe\SupportedTypes" /v ".mkd" /d "" >NUL 2>NUL
reg add "HKLM\SOFTWARE\Classes\Applications\Typora.exe\SupportedTypes" /v ".mmd" /d "" >NUL 2>NUL

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Typora.exe" /f /ve /d "%~dp0Typora-portable.exe" >NUL 2>NUL

ECHO.&ECHO Íê³É &TIMEOUT /t 3 >NUL&EXIT