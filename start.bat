@echo off
REM Serves the portfolio locally and opens it in the browser.
setlocal
title eyversgo.github.io
cd /d "%~dp0"
set PORT=5500
set URL=http://127.0.0.1:%PORT%/

echo.
echo   EYVERSGO.GITHUB.IO
echo   Server at %URL%
echo   Close this window to stop it.
echo.

start "" /b powershell -NoProfile -Command "Start-Sleep -Seconds 2; Start-Process '%URL%'"

where python >nul 2>nul
if %errorlevel%==0 (
    python -m http.server %PORT% --bind 127.0.0.1
    goto :eof
)
where node >nul 2>nul
if %errorlevel%==0 (
    npx --yes http-server -p %PORT% -a 127.0.0.1 -c-1
    goto :eof
)
echo   Neither Python nor Node.js was found. Install one of them and run this file again.
pause
