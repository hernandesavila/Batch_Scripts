@echo off
color 0E
title Backup Profile v1.0

:Begin
cls
echo.
echo  :: Restore Backup Profile Program ::
echo  ====================================
echo.
echo.

set quot="
set origin_path=
set /p origin_path=Please inform the origin path: 

if "%origin_path%"=="" goto No_origin_path
if not exist %quot%%origin_path%%quot% goto No_origin_path_Exist 

set log_path=%quot%c:\Restore_Bakup_LOG.txt%quot%

echo.
echo Working...
echo Source path: %quot%%origin_path%%quot%
echo Destination path: %quot%%USERPROFILE%%quot%
echo.

if exist %quot%%origin_path%\Desktop%quot% (
	robocopy %quot%%origin_path%\Desktop%quot% %quot%%USERPROFILE%\Desktop%quot% /mir /w:5 /r:2 /tee /mt:4 /log:%log_path%
)
if exist %quot%%origin_path%\Downloads%quot% (
	robocopy %quot%%origin_path%\Downloads%quot% %quot%%USERPROFILE%\Downloads%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)
if exist %quot%%origin_path%\Documents%quot% (
	robocopy %quot%%origin_path%\Documents%quot% %quot%%USERPROFILE%\Documents%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)
if exist %quot%%origin_path%\Music%quot% (
	robocopy %quot%%origin_path%\Music%quot% %quot%%USERPROFILE%\Music%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)
if exist %quot%%origin_path%\Pictures%quot% (
	robocopy %quot%%origin_path%\Pictures%quot% %quot%%USERPROFILE%\Pictures%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)
if exist %quot%%origin_path%\Videos%quot% (
	robocopy %quot%%origin_path%\Videos%quot% %quot%%USERPROFILE%\Videos%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)
if exist %quot%%origin_path%\Favorites%quot% (
	robocopy %quot%%origin_path%\Favorites%quot% %quot%%USERPROFILE%\Favorites%quot% /mir /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)
if exist %quot%%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default%quot% (
	robocopy %quot%%origin_path%\Chrome Favorites%quot% %quot%%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default%quot% Bookmarks /purge /w:5 /r:2 /tee /mt:4 /log+:%log_path%
)

echo.
echo Done!
echo Log file: %log_path%
pause
exit

:No_origin_path
cls
echo.
echo  :: Restore Backup Profile Program ::
echo  ====================================
echo.
echo.
echo Please inform the origin path!
echo.
pause
goto Ask_Exit

:No_origin_path_Exist
cls
echo.
echo  :: Restore Backup Profile Program ::
echo  ====================================
echo.
echo.
echo Origin path not exist!
echo.
pause
goto Ask_Exit

:Ask_Exit
cls
echo.
echo  :: Restore Backup Profile Program ::
echo  ====================================
echo.
echo.
set /p yn=Want to quit? (y/n): 

if %yn%==Y (
    exit
) else if %yn%==y (
    exit 
) else if %yn%==N (
    goto Begin
) else if %yn%==n (
    goto Begin
) else (
    goto Error_Close_Character
)

:Error_Close_Character
cls
echo.
echo  :: Restore Backup Profile Program ::
echo  ====================================
echo.
echo.
echo Invalid character!
pause
goto Ask_Exit
