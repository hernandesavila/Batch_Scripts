@echo off
color 0E
title Ping Batch v1.0

:start
cls
echo.
echo  :: Ping Batch Program ::
echo  ========================
echo.
echo.
set t=
set s=
set c=
set /p t=Target HOST ADDRESS or IP: 
set /p s=Size Package (1-65500): 
set /p c=Number of requests: 

ping %t% -l %s% -n %c%
echo.

:verify_close
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
    goto error
)

:error
cls
echo.
echo  :: Ping Batch Program ::
echo  ========================
echo.
echo.
echo Invalid character!
echo.
goto verify_close

:end
cls
echo.
echo  :: Ping Batch Program ::
echo  ========================
echo.
echo.
echo  Closing...
timeout /t 2 /nobreak > NUL
exit