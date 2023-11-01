@echo off
setlocal enabledelayedexpansion

REM Specify the folder to monitor
set "folder_to_monitor=C:\Users\adamp\Downloads\"

REM Initial size of the folder
set "initial_size=0"

:monitor_loop
REM Get the current size of the folder
set "current_size=0"
for /f %%A in ('dir /a-d /b /s "%folder_to_monitor%" ^| find /c ":"') do set "current_size=%%A"

REM Check if the size has changed
if %current_size% neq %initial_size% (
    rem Size has changed, execute your Python script
    C:\Windows\py.exe C:\Users\adamp\OneDrive\Desktop\Personal-Projects\python-file-organizer\main.py
    set "initial_size=%current_size%"
)

REM Delay for a few seconds before checking again
ping -n 6 127.0.0.1 > nul
goto monitor_loop
