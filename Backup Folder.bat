@echo off
color 0E
title Backup Folder v1.0

:Begin
cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.

set quot="
set /p origin_path=Please inform the origin path: 

if "%origin_path%"=="" goto No_Origin_Path
if not exist %quot%%origin_path%%quot% goto No_Origin_Path_Exist 

set /p destination_path=Please inform the destination path: 

if "%destination_path%"=="" goto No_Destination_Path
if not exist %quot%%destination_path%%quot% goto No_Destination_Path_Exist 

set log_path=%quot%%destination_path%\Bakup_LOG.txt%quot%

echo.
echo Working...
echo Source path: %quot%%origin_path%%quot%
echo Destination path: %quot%%destination_path%%quot%
echo.

robocopy %quot%%origin_path%%quot% %quot%%destination_path%%quot% /mir /w:5 /r:2 /tee /mt:4 /log:%log_path%

cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.
echo Done!
echo Log file: %log_path%
pause
exit

:No_Origin_Path
cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.
echo Please inform the origin path!
echo.
pause
goto Ask_Exit

:No_Destination_Path
cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.
echo Please inform the destination path!
echo.
pause
goto Ask_Exit

:No_Origin_Path_Exist
cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.
echo Origin path not exist!
echo.
pause
goto Ask_Exit

:No_Destination_Path_Exist
cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.
echo Destination path not exist!
echo.
pause
goto Ask_Exit

:Ask_Exit
cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.
set /p yn=Want to quit? (Y/N): 

if "%yn%"=="Y" (
    exit
) else if "%yn%"=="y" (
    exit 
) else if "%yn%"=="N" (
    goto Begin
) else if "%yn%"=="n" (
    goto Begin
) else (
    goto Error_Close_Character
)

:Error_Close_Character
cls
echo.
echo  :: Backup Folder Program ::
echo  ============================
echo.
echo.
echo Invalid character!
pause
goto Ask_Exit