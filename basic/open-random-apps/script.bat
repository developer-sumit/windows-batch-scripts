@echo off

REM List of applications to open
set "apps=notepad.exe calc.exe"

REM Select a random application from the list
setlocal enabledelayedexpansion
set /a "index=(%random% %% 2) + 1"
for /f "tokens=1* delims= " %%a in ('echo !apps!') do (
    if !index! equ 1 (
        set "app=%%a"
        goto :open_app
    )
    set /a "index-=1"
)

:open_app
REM Open the selected application
start "" "%app%"

REM End of script
exit /b