@echo off
TITLE INSTINCT AI — Production Console & Telemetry Server
COLOR 0A
cls
echo ===============================================================================
echo                       INSTINCT AI — PRODUCTION LAUNCH
echo                       "AI that notices what you don't."
echo ===============================================================================
echo.
echo  Workspace Directory: %~dp0
echo.

netstat -ano | findstr :3000 >nul 2>&1
if %errorlevel%==0 (
    echo  [!] Server is ALREADY RUNNING on http://localhost:3000
    echo  [!] Opening browser window automatically...
    echo.
    start http://localhost:3000
    goto :END
)

echo  [1/2] Node.js version check:
node -v
echo.
echo  [2/2] Launching INSTINCT AI Next.js server...
echo.
start http://localhost:3000
npm run dev

:END
echo.
echo ===============================================================================
echo  Dashboard:    http://localhost:3000
echo  Landing Page: http://localhost:3000/landing
echo ===============================================================================
echo.
pause
