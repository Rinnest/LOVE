@echo off
:GLOBAL
SETLOCAL EnableDelayedExpansion
set d=1
set t=1
set m=1
set s=0
set ex=0
set en=0
set RED=0

:INTRO
title RED.
color 04
echo We always liked the color red.
pause > NUL

:BEGIN0
CLS
color 0c
echo Your mom is washing the dishes.
echo The knives are clean.
echo [1] Resist.
echo [2] RED.
set /p C=
if %C%==1 echo You smile at her and go to your bedroom.
if %C%==2 echo Not yet.
if %C% LEQ 0 echo You think you have more options?
if %C% GEQ 3 echo You think you have more options?
goto BEGIN1
pause > NUL

:BEGIN1
pause > NUL
color 04
cls
echo Everything's red.
echo Mom is sleeping in her room.
echo [1] Sleep 
echo [2] Cede
set /p C=
if %C% LEQ 0 echo You're trying to be funny? Well I'll show you how to be nice :)
if %C% GEQ 3 echo Oh? so you're not going to choose? How sweet of you... Then it's my turn.
if %C%==1 echo You close your eyes with the intent of sleeping
if %C%==1 echo You can't control me.
if %C%==1 pause > nul
if %C%==1 echo But I can.
pause > NUL
cls
echo You grab a knife.
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
title darkness
color 04
cls
echo            OOOOOOOOO
echo           OOOOOOOOOOO
echo          OOOOOOOOOOOOO
echo         OOOOOOOOOOOOOOO
echo         OOOOOOOOOOOOOOOO
echo        OOOO  OOOOOOOOOOO
echo        OOO    O    OOOOO
echo        OOO  H    H  OOOOO
echo       OOO   H    H  OO OO
echo       OOO   H    H  O  OO
echo       000             OOO
echo       OOO    H  H    OOOO
echo       OOOO    HH    OOOOO
echo       OOOOOO      OOOOOOO
echo        O  OOOOO  OOOOO O
echo               O  O   O
echo              OOOOOOO
echo           OOOIOOOOIOOO
echo          OIOIIIIIIIIOIO
echo         OIO         OOIO
echo         OIO          OIO
echo         OOOIIIIIIIIIIOOO
echo         O OOOOOOOOOOOO O
echo         OOOOOOOOOOOOOOOO
echo           OOOOOOOOOOOO
echo           OOOOO OOOOOO
echo           OOOOO OOOOOO
echo             OOO OOOO
echo            OOOO OOOOO
echo you wake up.
pause > NUL
goto MainO
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
if !%d%t!==14 echo Mom is sleeping.
if !%d%t!==21 echo Mom left your breakfast on the table, she's going to buy the groceries.
if !%d%t!==22 echo Mom is arguing with someone at the phone, you think it's dad.
if !%d%t!==23 echo Mom looks tired. The dinner isn't that good.
if !%d%t!==24 echo Mom is sleeping.
if !%d%t!==31 echo You hear your mother cry in her room.
if !%d%t!==32 echo Mom is hugging you out of nowhere.
if !%d%t!==33 echo Mom made your favorite fish tonight.
if !%d%t!==34 echo Mom is sleeping.
if !%d%t!==41 echo Mom is making breakfast
if !%d%t!==42 echo Mom is working on her laptop.
if !%d%t!==43 echo Mom made you a nice dinner.
if !%d%t!==44 echo Mom won't wake up from this sleep.

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
if %m%==0 Echo The house is silent.
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
pause > NUL

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