@echo off
color 0E
title TaskManager v1.0

:start
cls
echo.
echo  :: TaskManager Program ::
echo  =========================
echo.
echo.
echo  Select an operation:
echo  [1] Task List
echo  [2] Task Kill
echo  [3] Exit
echo.
set o=
set /p o=Type: 
IF %o%==1 (
    goto tasklist
) ELSE IF %o%==2 (
    goto taskkill
) ELSE IF %o%==3 (
    goto close
) ELSE (
    goto error_type_operation
)

:tasklist
cls
echo.
echo  :: TaskManager Program ::
echo  =========================
echo.
echo  List of tasks no this host:
echo.
tasklist
echo.
pause
goto start

:taskkill
cls
echo.
echo  :: TaskManager Program ::
echo  =========================
echo.
echo.
set t=
set /p t=Inform the process name (process.exe): 
taskkill /F /IM %t%
echo.
pause
goto start

:close
cls
echo.
echo  :: TaskManager Program ::
echo  =========================
echo.
echo.
set yn=
set /p yn=Want to quit? (y/n): 
IF %yn%==Y (
    goto end
) ELSE IF %yn%==y (
    goto end
) ELSE IF %yn%==N (
    goto start
) ELSE IF %yn%==n (
    goto start
) ELSE (
    goto error_close
)

:error_type_operation
cls
echo.
echo  :: TaskManager Program ::
echo  =========================
echo.
echo.
echo Invalid character!
echo.
pause
goto start

:error_close
cls
echo.
echo  :: TaskManager Program ::
echo  =========================
echo.
echo.
echo Invalid character!
echo.
pause
goto close

:end
cls
echo.
echo  :: TaskManager Program ::
echo  =========================
echo.
echo.
echo  Closing...
timeout /t 2 /nobreak > NUL
exit