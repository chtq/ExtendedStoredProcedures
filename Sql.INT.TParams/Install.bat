ECHO OFF

REM �������� ������
copy "bin\Release\INT.TParams.dll" "\\BD-VM-DV-CIS\Programms\Extended Stored Procedures" /y
IF ERRORLEVEL 0 GOTO NEXT1
GOTO ERROR

:NEXT1
REM �������� ������ �� ������
REM Sqlcmd -S "BD-VM-DV-CIS" -d "BackOffice" -E -b -i "Install.sql"
REM if not ERRORLEVEL 1 goto :OK

:ERROR 
pause
GOTO EXIT

:OK

:EXIT