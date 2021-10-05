@echo OFF
setlocal ENABLEDELAYEDEXPANSION

rem Collect the arguments and replace:
rem  '\' with '/'
rem  'c:' with 'mnt/c'
rem  '"' with '\"'
set v_params=%*
set v_params=%v_params:\=/%
set v_params=%v_params:C:=/mnt/c%
set v_params=%v_params%
set v_params=%v_params:"=\"%

rem Call the windows-php inside WSL.
rem windows-php is just a script which passes the arguments onto
rem the original php executable and converts its output from UNIX
rem syntax to Windows syntax.
C:\Windows\sysnative\bash.exe -l -c "windows-php %v_params%"