@echo off
set /p id="Press [Enter] to sleep"
rundll32.exe powrprof.dll,SetSuspendState 0,1,0