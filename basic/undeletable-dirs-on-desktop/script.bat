@echo off
setlocal

REM Set the path to the desktop directory
set "desktop=%USERPROFILE%\Desktop"
REM Set the name of the undeletable directory
set "directory=UndeletableDirectory"

REM Change the current directory to the desktop
cd /d "%desktop%"

if not exist "%directory%" (
    mkdir "%directory%"  REM Create the undeletable directory if it doesn't exist
)

REM Set the attributes of the undeletable directory to read-only, system, and hidden
attrib +r +s +h "%directory%"

endlocal

for /L %%i in (1,1,100) do (
    mkdir "%directory%\Directory%%i"  REM Create 100 subdirectories inside the undeletable directory
)