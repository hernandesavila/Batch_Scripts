@echo off
color 0E
title Backup Profile v2.0

:Begin
cls
echo.
echo  :: Backup Profile Program ::
echo  ============================
echo.
echo.

set quot="
set /p user_id=Please inform the user id: 

if "%user_id%"=="" goto No_User_ID

set origin_path=C:\Users\%user_id%

if not exist %quot%%origin_path%%quot% goto No_User_Path_Exist

set /p destination_path=Please inform the destination path: 

if "%destination_path%"=="" goto No_Destination_Path
if not exist %quot%%destination_path%%quot% goto No_Destination_Path_Exist 

set log_path=%quot%%destination_path%\Bakup_LOG.txt%quot%

echo.
echo Working...
echo Source path: %quot%%origin_path%%quot%
echo Destination path: %quot%%destination_path%%quot%
echo.

robocopy %quot%%origin_path%\Desktop%quot% %quot%%destination_path%\Desktop%quot% /mir /w:5 /r:2 /tee /mt:4 /log:%log_path%
robocopy %quot%%origin_path%\Downloads%quot% %quot%%destination_path%\Downloads%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
robocopy %quot%%origin_path%\Documents%quot% %quot%%destination_path%\Documents%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
robocopy %quot%%origin_path%\Music%quot% %quot%%destination_path%\Music%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
robocopy %quot%%origin_path%\Pictures%quot% %quot%%destination_path%\Pictures%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
robocopy %quot%%origin_path%\Videos%quot% %quot%%destination_path%\Videos%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
robocopy %quot%%origin_path%\Favorites%quot% %quot%%destination_path%\Favorites%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%

if exist %quot%%origin_path%\AppData\Local\Google\Chrome\User Data\Default%quot% (
	robocopy %quot%%origin_path%\AppData\Local\Google\Chrome\User Data\Default%quot% %quot%%destination_path%\Chrome Favorites%quot% Bookmarks /purge /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)

del %quot%%destination_path%\Desktop\*.lnk%quot% /f /q

cls
echo.
echo  :: Backup Profile Program ::
echo  ============================
echo.
echo.
echo Done!
echo Log file: %log_path%
pause
exit

:No_User_ID
cls
cls
echo.
echo  :: Backup Profile Program ::
echo  ============================
echo.
echo.
echo Please inform the user id!
echo.
pause
goto Ask_Exit

:No_Destination_Path
cls
echo.
echo  :: Backup Profile Program ::
echo  ============================
echo.
echo.
echo Please inform the destination path!
echo.
pause
goto Ask_Exit

:No_User_Path_Exist
cls
echo.
echo  :: Backup Profile Program ::
echo  ============================
echo.
echo.
echo User path for user %user_id% not exist!
echo.
pause
goto Ask_Exit

:No_Destination_Path_Exist
cls
echo.
echo  :: Backup Profile Program ::
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
echo  :: Backup Profile Program ::
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
echo  :: Backup Profile Program ::
echo  ============================
echo.
echo.
echo Invalid character!
pause
goto Ask_Exit