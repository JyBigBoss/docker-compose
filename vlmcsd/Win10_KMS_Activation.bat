@echo off&setlocal EnableDelayedExpansion&color 5e
title KMS_Activation for Windows 10 - (BigBoss)

echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::        自动检查 Win10 的版本，导入相应的 KMS 密钥 		 ::
echo ::                                            				 ::
echo ::            然后连接指定的 KMS 服务器激活 Win10     		 ::
echo ::                                            				 ::
echo ::                      BigBoss  	                         ::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.&echo.

:: 如果激活失败，可能是因为连不到KMS服务器了，
:: 你仅需修改下面的KMS服务器地址

 
set /p KMS_Sev=请输入KMS服务器地址:
echo.
::set KMS_Sev=

::======================= 以下内容无需更改 ======================
call :verchk
call :adminchk

set Core=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
set CoreCountrySpecific=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
set CoreN=3KHY7-WNT83-DGQKR-F7HPR-844BM
set CoreSingleLanguage=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
set Professional=W269N-WFGWX-YVC9B-4J6C9-T83GX
set ProfessionalN=MH37W-N47XK-V7XM9-C7227-GCQG9
set Enterprise=NPPR9-FWDCX-D2C8J-H872K-2YT43
set EnterpriseN=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
set Education=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
set EducationN=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
set EnterpriseS=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
set EnterpriseSN=2F77B-TNFGY-69QQF-B8YKP-D69TJ

for /f "tokens=3 delims= " %%i in ('reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID"') do set EditionID=%%i

if defined %EditionID% (
	cscript //Nologo %windir%\system32\slmgr.vbs /ipk !%EditionID%!
	cscript //Nologo %windir%\system32\slmgr.vbs /skms %KMS_Sev%
	cscript //Nologo %windir%\system32\slmgr.vbs /ato
) else (
	echo.&echo Not found DEFINED Key: "%EditionID%".
	echo.
)
pause
exit

:verchk
ver | find "10.0." >nul 2>nul && (goto :EOF)
echo.&echo The current OS is NOT Windows 10.
echo.&pause
exit

:adminchk
reg query "HKU\S-1-5-19" >nul 2>nul || (
cls&echo.&echo Run as ADMINISTRATOR, Pls.
echo.&echo Press any key to exit.
echo.&pause>nul
exit)
goto :EOF
