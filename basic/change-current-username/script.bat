@echo off
setlocal enabledelayedexpansion

echo Current username: %username%
set /p new_username=Enter new username: 

net user "%username%" "%new_username%"

if %errorlevel% equ 0 (
    echo Username changed successfully!
) else (
    echo Failed to change username.
)

pause