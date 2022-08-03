@echo off
color 0a
title Random password generator
echo random password generator
:Start
cls
echo.
echo 1 for Random Password
echo.
set /p input= Enter 1 to generate random password: 
if %input%==1 goto A if not goto Start

:A
cls
Setlocal EnableDelayedExpansion
set _RNDLength=12
set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
set _Str=%_Alphanumeric%987654321

:_LenLoop
if not "%_Str:~18%"=="" set _Str=%_Str:~9%& set /A _Len+=9& goto :_LenLoop
set _tmp=%_Str:~9,1%
set /A _Len=_Len+_tmp
set _count=0
set _RndAlphaNum=

:_loop
set /a _count+=1
set _RND=%Random%
set /A _RND=_RND%%%_Len%
set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
if !_count! lss %_RNDLength% goto _loop
echo.
echo Password i created: !_RndAlphaNum!
echo.
pause > nul
exit