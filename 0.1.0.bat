@echo off
:GLOBAL
SETLOCAL EnableDelayedExpansion
set d=1
set t=1
set /a m=0
set s=0
set ex=0
set en=0
set RED=0
set resist=0

:PROLOGUE
color 04
echo :::::::::  :::::::::   ::::::::  :::        ::::::::   ::::::::  :::    :::: ::::::::: 
echo :+:    :+: :+:    :+: :+:    :+: :+:       :+:    :+: :+:    :+: :+:    :+: :+:        
echo +:+    +:+ +:+    +:+ +:+    +:+ +:+       +:+    +:+ +:+        +:+    +:+ +:+        
echo +#++:++#+  +#++:++#:  +#+    +:+ +#+       +#+    +:+ :#:        +#+    +:+ +#++:++#   
echo +#+        +#+    +#+ +#+    +#+ +#+       +#+    +#+ +#+   +#+# +#+    +#+ +#+        
echo #+#        #+#    #+# #+#    #+# #+#       #+#    #+# #+#    #+# #+#    #+# #+#        
echo ###        ###    ###  ########  #########  ########  #########   ########  ########## 
echo                                    I love you.
timeout /t 5 /nobreak > nul
cls
:INTRO
title RED.
color 04
echo We always liked the color red.
timeout /t 3 /nobreak > nul

:BEGIN0
CLS
color 0c
echo Your mom is washing the dishes.
echo The knives are clean.
echo [1] Resist
echo [2] Cede
set /p C=
if %C%==1 echo You smile at her and go to your bedroom.
if %C%==2 echo Not yet.
if %C% LEQ 0 echo You think you have more options?
if %C% GEQ 3 echo You think you have more options?
goto BEGIN1
timeout /t 3 /nobreak > nul

:BEGIN1
pause > NUL
color 04
cls
echo Everything's red.
echo Mom is sleeping in her room.
echo [1] Sleep 
echo [2] Cede
set /p C=
set /a C=%C%*1
if %C% LEQ 0 echo You're trying to be funny? Well then... let's be funny :)
if %C% LEQ 0 pause > NUL
if %C% GEQ 3 echo Oh, so you're not going to choose? How sweet of you... Then I will do it for you.
if %C% GEQ 3 pause > NUL
if %C%==1 echo You close your eyes with the intent of sleeping
if %C%==1 echo You can't control me.
if %C%==1 pause > nul
if %C%==1 echo But I can.
if %C%==1 pause > NUL
cls
echo You grab a knife.
timeout /t 3 /nobreak > nul
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
title Darkness
color 04
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                               you wake up.
timeout /t 4 /nobreak > NUL
goto MainO
pause > NUL

:: ##################################################
:: Modular checks and lines
:: ##################################################

:QCheck
if %m%==4 goto Detective1
if %m%==8 goto Detective2
if %m%==10 goto Detective3
if %m%==12 goto Detective4
if %m%==13 goto Detective5
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
if !%d%t!==44 echo Mom will take a long, long sleep...
goto MamaTBack

:: ###################################################
:: Actual Game here
:: ###################################################

:NEW
set /a t=t+1

:MainO
cls
echo     sSSs. d    d   sSSSs     sSSSs     sss. d sSSss
echo    S      S    S  S     S   S     S  d      S       
echo   S       S    S S       S S       S Y      S       
echo   S       S sSSS S       S S       S   ss.  S sSSs  
echo   S       S    S S       S S       S      b S       
echo    S      S    S  S     S   S     S       P S       
echo     "sss' P    P   "sss"     "sss"   ` ss'  P sSSss 
echo.
title Choices
color 07
if %m%==1 color 0c
if %m% GEQ 2 color 04
if %m% GEQ 4 goto QCheck
:QCheckBack
if %m%==0 goto MamaT
:MamaTBack
if %m%==1 Echo The house is silent.
if %m% LEQ -1 goto EmptyHouse
echo [1] Kill
echo [2] Contemplate
echo [3] Suicide
if %resist% LEQ 15 echo [4] Resist
set /p C=
if %C%==1 goto murder
if %C%==2 goto contemplate
if %C%==3 goto suicide
if %C%==4 (
	if %resist% LEQ 15 goto resist
	if %resist%==16 (
	if %m%==0 goto Ceded
	if %m% GEQ 1 echo It's useless now.
	)
)
pause > NUL

:: ###################################################
::                 MAIN MENU OPTIONS
:: ###################################################

:murder
if %m%==0 goto FirstTime
if %t%==4 ( set /a d=d+1
	set t=0
)
if %d%==5 ( set d=1)
set /a m=m+1
echo You take a knife.
echo ...Red is our favorite color.
pause
goto NEW

:resist
set /a resist=%resist%+1
echo You resist our urges.
timeout /t 3 /nobreak > NUL
echo I'm not satisfied.
timeout /t 1 /nobreak > NUL
goto NEW

:contemplate
echo You contemplate.
pause > nul
goto NEW

:suicide
title Suicide
echo You decide to end it all.

pause > nul
if %m%==0 goto Pure_Ending
if %m%==1 goto Regret_Ending
if %m% LEQ 11 goto LOVE_Ending
if %m% GEQ 12 goto Ego_Me_Absolvo


:: ###################################################
:: ###################################################
::                     EVENTS
::                     EVENTS
:: ###################################################
:: ###################################################



:: ###################################################
::               DETECTIVE STORYLINE
:: ###################################################

:Detective1

:Detective2

:Detective3

:Detective4

:Detective5

:: ###################################################
::            SPECIAL OVERWORLD EVENTS
:: ###################################################

:FirstTime
cls
color 0c
echo Mom is clueless.
echo She doesn't know you finally gave in to my requests.
echo.
timeout /t 5 /nobreak > NUL
color 04
echo You grab my favorite knife.
echo The blade is cold and clean, and it doesn't have a point... it wouldn't be a cleaver otherwise.
echo.
timeout /t 5 /nobreak > NUL
color 0c
echo Mom is in her room.
echo When you enter, she looks at you and asks you if you need something.
echo.
timeout /t 5 /nobreak > NUL
color 04
echo Her gentle, good-natured smile slowly fades as she sees the knife in your hands.
echo.
timeout /t 4 /nobreak > NUL
echo She's not as fast as us.
timeout /t 10 > NUL
cls
color f7
echo.
timeout /t 2 /nobreak > nul
cls
color f0
echo It' so beautiful!
timeout /t 3 /nobreak > nul
color f4
echo You did it just right...
timeout /t 4 /nobreak > nul
echo Now she won't bother us anymore!
timeout /t 4 /nobreak > nul
color 04
echo We'll be together forever.
timeout /t 4 /nobreak > nul
set AGUJWGS=0
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                A Game about L.O.V.E.
echo                          Written and Programmed by Rin Est
echo.                          
ECHO                 88          ,ad8888ba,  8b           d8 88888888888  
ECHO                 88         d8"'    `"8b `8b         d8' 88           
ECHO                 88        d8'        `8b `8b       d8'  88           
ECHO                 88        88          88  `8b     d8'   88aaaaa      
ECHO                 88        88          88   `8b   d8'    88"""""      
ECHO                 88        Y8,        ,8P    `8b d8'     88           
ECHO                 88         Y8a.    .a8P      `888'      88           
ECHO                 88888888888 `"Y8888Y"'        `8'       88888888888  
echo                              Chapter 1 - Life on Earth
echo              "There lived in an empty house, the Devil and his spouse."
set /a m=%m%+1
:LAGS
set /a AGUJWGS=%AGUJWGS%+1
if %AGUJWGS%==5 goto NEW
color 40
timeout /t 2 /nobreak > nul
color F4
timeout /t 2 /nobreak > nul
goto LAGS

:Ceded
title My turn
color 04
echo You keep resisting.
echo But every time you show a little bit of weakness, I become stronger.
echo.
timeout /t 5 /nobreak > NUL
color 0c
echo You think you can just... not cooperate?
echo.
timeout /t 3 /nobreak > NUL
color 04
echo I'm in charge here.
echo.
timeout /t 5 /nobreak > NUL
color 0c
echo I grab my favorite knife.
echo It's a nice old cleaver. It still cuts splendidly.
echo.
timeout /t 5 /nobreak > NUL
color 0c
echo Your mother is in her room.
echo When I enter, she looks at you and asks if you need something.
echo.
timeout /t 5 /nobreak > NUL
color 04
echo Her gentle, good-natured smile slowly fades as she looks into my eyes.
echo.
timeout /t 4 /nobreak > NUL
echo I strke first.
timeout /t 10 > NUL
cls
color f7
echo.
timeout /t 2 /nobreak > nul
cls
color f0
echo It' so beautiful!
timeout /t 3 /nobreak > nul
color f4
echo You didn't even try to stop me...
timeout /t 4 /nobreak > nul
echo Now she won't bother us anymore!
timeout /t 4 /nobreak > nul
color 04
echo We'll be together forever.
timeout /t 4 /nobreak > nul
set AGUJWGS=0
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                A Game about L.O.V.E.
echo                          Written and Programmed by Rin Est
echo.                          
ECHO                 88          ,ad8888ba,  8b           d8 88888888888  
ECHO                 88         d8"'    `"8b `8b         d8' 88           
ECHO                 88        d8'        `8b `8b       d8'  88           
ECHO                 88        88          88  `8b     d8'   88aaaaa      
ECHO                 88        88          88   `8b   d8'    88"""""      
ECHO                 88        Y8,        ,8P    `8b d8'     88           
ECHO                 88         Y8a.    .a8P      `888'      88           
ECHO                 88888888888 `"Y8888Y"'        `8'       88888888888  
echo                              Chapter 1 - Life on Earth
echo              "There lived in an empty house, the Devil and his spouse."
set /a m=%m%+1
:LAGS
set /a AGUJWGS=%AGUJWGS%+1
if %AGUJWGS%==5 goto NEW
color 40
timeout /t 2 /nobreak > nul
color F4
timeout /t 2 /nobreak > nul
goto LAGS

:: ###################################################
:: ###################################################
::                      ENDINGS
:: ###################################################
:: ###################################################

:Pure_Ending
title You resisted
cls
color 03
echo 888888888888 88                        88888888888                      88  
echo      88      88                        88                               88  
echo      88      88                        88                               88  
echo      88      88,dPPYba,   ,adPPYba,    88aaaaa     8b,dPPYba,   ,adPPYb,88  
echo      88      88P'    "8a a8P_____88    88"""""     88P'   `"8a a8"    `Y88  
echo      88      88       88 8PP"""""""    88          88       88 8b       88  
echo      88      88       88 "8b,   ,aa    88          88       88 "8a,   ,d88  
echo      88      88       88  `"Ybbd8"'    88888888888 88       88  `"8bbdP"Y8  
echo You ended your own life before your mother's.
timeout /t 3 /nobreak > NUL
echo You betrayed me.
timeout /t 2 /nobreak > NUL
echo How could you?
timeout /t 4 /nobreak > NUL
echo ...How could you?
timeout /t 1 /nobreak > NUL
echo You know I love you.
timeout /t 2 /nobreak > NUL
echo we were meant to be TOGETHER
timeout /t 2 /nobreak > NUL
echo You
timeout /t 1 /nobreak > NUL
echo RUINED
timeout /t 1 /nobreak > NUL
title YOU RUINED EVERYTHING
echo EVERYTHING
pause > NUL
color 02
echo.
echo.
echo [Pure Ending]
timeout /t 5 /nobreak > NUL
exit

:Regret_Ending
cls
title Regret
color 06
echo 888888888888 88                        88888888888                      88  
echo      88      88                        88                               88  
echo      88      88                        88                               88  
echo      88      88,dPPYba,   ,adPPYba,    88aaaaa     8b,dPPYba,   ,adPPYb,88  
echo      88      88P'    "8a a8P_____88    88"""""     88P'   `"8a a8"    `Y88  
echo      88      88       88 8PP"""""""    88          88       88 8b       88  
echo      88      88       88 "8b,   ,aa    88          88       88 "8a,   ,d88  
echo      88      88       88  `"Ybbd8"'    88888888888 88       88  `"8bbdP"Y8  
echo You killed your own mother.
timeout /t 1 /nobreak > NUL
echo We did it together.
timeout /t 3 /nobreak > NUL
echo I thought we could be something.
timeout /t 3 /nobreak > NUL
echo ...But I was wrong.
timeout /t 2 /nobreak > NUL
echo You were weak.
timeout /t 2 /nobreak > NUL
echo You regretted what we did together.
pause > NUL
color 0f
echo.
echo.
echo [Regret Ending]
timeout /t 5 /nobreak > NUL
exit

:LOVE_Ending
title The End
cls
color 04
echo 888888888888 88                        88888888888                      88  
echo      88      88                        88                               88  
echo      88      88                        88                               88  
echo      88      88,dPPYba,   ,adPPYba,    88aaaaa     8b,dPPYba,   ,adPPYb,88  
echo      88      88P'    "8a a8P_____88    88"""""     88P'   `"8a a8"    `Y88  
echo      88      88       88 8PP"""""""    88          88       88 8b       88  
echo      88      88       88 "8b,   ,aa    88          88       88 "8a,   ,d88  
echo      88      88       88  `"Ybbd8"'    88888888888 88       88  `"8bbdP"Y8  
echo We murdered %m% people.
timeout /t 2 /nobreak > NUL
echo Yet, even as we die, we don't feel regret
timeout /t 2 /nobreak > NUL
echo We loved every second of it
timeout /t 4 /nobreak > NUL
echo But YOU thought it was wrong.
timeout /t 3 /nobreak > NUL
title I hate you.
echo I hate you.
timeout /t 1 /nobreak > NUL
cls 
color 05
echo 888888888888 88                        88888888888                      88  
echo      88      88                        88                               88  
echo      88      88                        88                               88  
echo      88      88,dPPYba,   ,adPPYba,    88aaaaa     8b,dPPYba,   ,adPPYb,88  
echo      88      88P'    "8a a8P_____88    88"""""     88P'   `"8a a8"    `Y88  
echo      88      88       88 8PP"""""""    88          88       88 8b       88  
echo      88      88       88 "8b,   ,aa    88          88       88 "8a,   ,d88  
echo      88      88       88  `"Ybbd8"'    88888888888 88       88  `"8bbdP"Y8  
echo We murdered %ded% people.
echo Yet, even as we die, we don't feel regret
echo We loved every second of it
echo But YOU thought it was wrong.
title I love you.
echo I love you.
pause > NUL
title Level Of ViolencE
echo.
echo.
echo [LOVE Ending]
timeout /t 5 /nobreak > NUL
exit
