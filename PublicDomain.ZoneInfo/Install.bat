ECHO OFF

REM �������� ������
copy "bin\Release\PublicDomain.ZoneInfo.dll" "\\SRV-DEV02\d$\Programms\Extended Stored Procedures\" /y
IF ERRORLEVEL 0 GOTO NEXT1
GOTO ERROR

:NEXT1
REM �������� ������ �� ������
REM Sqlcmd -S "SRV-DEV01" -d "BackOffice" -E -b -i "Install.sql"
if not ERRORLEVEL 1 goto :OK

:ERROR 
pause
GOTO EXIT

:OK

:EXIT