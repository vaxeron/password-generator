@echo off & setlocal EnableDelayedExpansion
color c
set "alpha=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"
set alphaCnt=70

For /L %%j in (1,1,10) DO CALL :GEN %%j

pause
Goto :Eof
:GEN
Set "Password="
For /L %%j in (1,1,10) DO (
    Set /a i=!random! %% alphaCnt
    Call Set PASSWORD=!PASSWORD!%%alpha:~!i!,1%%
)
echo Your Random Password %1 is [%PASSWORD%]
