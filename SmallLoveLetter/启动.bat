@echo on
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
::�����ļ���
md D:\MyDocuments\Programmer\jelly
::�ص�������
copy /y "%~dp0xqs.vbs" D:\MyDocuments\Programmer\jelly\
start %SystemRoot%/System32/WScript.exe "%~dp0lnk.vbs"

::�ӳ�ִ��
choice /t 1 /d y /n >nul  
::��Ϊ������
copy /y "%userprofile%\Desktop\xqs.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
::ɾ�������ݷ�ʽ
del /f /s /q "%userprofile%\Desktop\xqs.lnk"
::ˢ������
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
pause