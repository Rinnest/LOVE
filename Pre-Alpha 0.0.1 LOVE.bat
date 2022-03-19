@echo off
:GLOBAL
SETLOCAL EnableDelayedExpansion
set t=1
set m=0
set s=0
set ex=0
set en=0
set RED=0

:INTRO
title RED.
color 04
echo I always liked the color red.
pause > NUL

:BEGIN0
CLS
color 0c
echo My mom is washing the dishes
echo The knives are clean.
echo [1] Resist.
echo [2] RED.
set /p C=
if %C%==1 echo You smile at her and go to your bedroom.
if %C%==2 echo not yet.
if %C% LEQ 0 goto RE1
if %C% GEQ 3 goto RE1
goto BEGIN1

:RE1
color 0b
echo invalid input.
pause > NUL
goto BEGIN0

:BEGIN1
pause > NUL
color 04
cls
echo Everything's red.
echo Mom is sleeping in her room.
echo [1] Sleep 
echo [2] Cede
set /p C=
if %C%==1 echo You close your eyes with the intent of sleeping
if %C%==1 echo Yet, your body moves by itself
if %C%==1 pause > NUL
echo You grab a knife
pause > NUL
CLS

:RED
COLOR 40
IF %RED%==100 ( pause > NUL
	goto BEGIN2
)
echo RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED 
set /a RED=RED+1
goto RED

:BEGIN2
title darkness.
color 04
cls
echo you wake up
pause > NUL