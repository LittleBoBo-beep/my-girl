@echo off
cd /d "%~dp0"

cacls.exe "%SystemDrive%\System Volume Information" >nul 2>nul

if %errorlevel%==0 goto Admin

if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"

echo Set RequestUAC = CreateObject^("Shell.Application"^)>"%temp%\getadmin.vbs"

echo RequestUAC.ShellExecute "%~s0","","","runas",1 >>"%temp%\getadmin.vbs"

echo WScript.Quit >>"%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" /f

if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"

exit


:Admin
::ɾ�����ڵ�������ļ�
del /f /s /q "D:\MyDocuments\Programmer\jelly"
::ɾ��������
del /f /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\xqs.lnk"
::ɾ����ǰ�ļ����µ��ļ�
del /f /s /q "%cd%"
