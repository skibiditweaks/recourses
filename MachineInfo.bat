@echo off
chcp 65001 >nul
title Machine Info
cls


for /f "tokens=3" %%A in ('reg query "HKLM\SOFTWARE\Microsoft\Cryptography" /v MachineGuid ^| find "MachineGuid"') do (
    echo %%A
)
echo.

echo This is your machineguid. Please send it to us in ticket.
echo Press any key to close this app
pause >nul
exit

