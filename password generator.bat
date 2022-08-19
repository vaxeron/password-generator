@echo off & setlocal EnableDelayedExpansion
color c
cls

echo "                                      "
echo " __   ____ ___  _____ _ __ ___  _ __  "
echo " \ \ / / _\` \ \/ / _ \ '__/ _ \| '_ \"
echo "  \ V / (_| |>  <  __/ | | (_) | | | |"
echo "   \_/ \__,_/_/\_\___|_|  \___/|_| |_|"
echo "                                      "

echo Welcome to the password-generator.
pause
set "alpha=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"
set alphaCnt=70

For /L %%j in (1,1,20) DO CALL :GEN %%j

pause
Goto :Eof
:GEN
Set "Password="
For /L %%j in (1,1,20) DO (
    Set /a i=!random! %% alphaCnt
    Call Set PASSWORD=!PASSWORD!%%alpha:~!i!,1%%
)
echo The password i generated: %1 [%PASSWORD%]
