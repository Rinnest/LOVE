@echo off
:GLOBAL
SETLOCAL EnableDelayedExpansion
set d=1
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

:: ##################################################
:: Modular checks and lines
:: ##################################################

:QCheck
if %m%==-4 goto Detective1
if %m%==-8 goto Detective2
if %m%==-10 goto Detective3
if %m%==-12 goto Detective4
if %m%==-13 goto Detective5
goto QCheckBack

:MamaT
if !%d%t!==11 echo Mom is making breakfast.
if !%d%t!==12 echo Mom is working on her laptop. It's the only thing left of your father in the house.
if !%d%t!==13 echo Mom made you a nice dinner.
if !%d%t!==14
if !%d%t!==21
if !%d%t!==22
if !%d%t!==23
if !%d%t!==24
if !%d%t!==31
if !%d%t!==32
if !%d%t!==33
if !%d%t!==34
if !%d%t!==41
if !%d%t!==42
if !%d%t!==43
if !%d%t!==44
:: ###################################################
:: Actual Game here
:: ###################################################

:New
set /a t=t+1

:MainO
cls
color 07
if %m%==0 color 0c
if %m% LEQ -1 color 04
if %m% LEQ -4 goto QCheck
:QCheckBack
if %m%==1 goto MamaT
:MamaTBack
if %m%==0 The house is silent.
if %m% LEQ -1 goto EmptyHouse
echo What will you do?
echo [1] Kill
echo [2] Contemplate
echo [3] Suicide
if %r% LEQ 15 echo [4] Resist
set /p C=
if %C%==1 goto murder
if %C%==2 goto contemplate
if %C%==3 goto suicide

:murder
if %t%==4 ( set /a d=d+1
	set t=0
)
if %d%==5 ( set d=1)
set /a m=m+1
echo you take a knife.
echo Red is our favorite color.
pause
goto New