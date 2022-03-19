@echo off
:GLOBAL
setlocal EnableDelayedExpansion
set d=1
set t=1
set /a m=0
set s=0
set ex=0
set en=0
set RED=0
set resist=0

:: #########################################################################################
:: #########################################################################################
::                                         PROLOGUE
:: #########################################################################################
:: #########################################################################################

:PROLOGUE
title Prologue - I Love You
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
color 04
echo We always liked the color red.
timeout /t 3 > nul

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
timeout /t 3 > nul

:BEGIN1
pause > NUL
color 04
cls
echo Everything's red.
echo Mom is sleeping in her room.
echo [1] Sleep 
echo [2] Cede
set /p C=
if %C% LEQ 0 echo You're trying to be funny? Well then... let's be funny :)
if %C% LEQ 0 timeout /t 3 > NUL
if %C% GEQ 3 echo Oh, so you're not going to choose? How sweet of you... Then I will do it for you.
if %C% GEQ 3 timeout /t 3 > NUL
if %C%==1 echo You close your eyes with the intent of sleeping
if %C%==1 echo You can't control me.
if %C%==1 timeout /t 3 > NUL
if %C%==1 echo But I can.
if %C%==1 timeout /t 3 > NUL
cls
echo You grab a knife.
timeout /t 3 > nul
CLS

:RED
COLOR 40
IF %RED%==100 ( timeout /t 2 > NUL
	goto BEGIN2
)
echo RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED RED 
set /a RED=RED+1
goto RED

:BEGIN2
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
timeout /t 5 > NUL
goto PrologueMenu
pause > NUL

:: ###################################################
::                   Prologue Menu
:: ###################################################

:NEWP
set /a t=t+1
if %t%==5 ( set /a d=d+1
	set t=0
)
if %d%==5 ( set d=1)

:PrologueMenu
cls
echo     sSSs. d    d   sSSSs     sSSSs     sss. d sSSss
echo    S      S    S  S     S   S     S  d      S       
echo   S       S    S S       S S       S Y      S       
echo   S       S sSSS S       S S       S   ss.  S sSSs  
echo   S       S    S S       S S       S      b S       
echo    S      S    S  S     S   S     S       P S       
echo     "sss' P    P   "sss"     "sss"   ` ss'  P sSSss 
echo.
color 07
if %m%==0 goto MamaT
:MamaTBack
echo [1] Kill
echo [2] Contemplate
echo [3] Suicide
if %resist% LEQ 16 echo [4] Resist
set /p C=
if %C%==1 goto FirstTime
if %C%==2 goto contemplate
if %C%==3 goto suicide
if %C%==4 (
	if %resist% LEQ 15 goto resist
	if %resist%==16 goto Ceded
	if %MAMA%==44 goto Ceded
)
pause > NUL

:: ###################################################
::               PROLOGUE MENU OPTIONS
:: ###################################################

:resist
set /a resist=%resist%+1
echo You resist our urges.
timeout /t 2 /nobreak > NUL
echo I'm not satisfied.
timeout /t 3 > NUL
goto NEWP

:contemplate
echo You contemplate.
timeout /t 3 > NUL
if %MAMA%==44 goto Ceded
if %resist%==16 goto Ceded
goto NEWP

:suicide
echo You decide to end it all.
timeout /t 3 > NUL
if %m%==0 goto Pure_Ending




:FirstTime
cls
color 0c
echo Mom is clueless.
echo She doesn't know you finally gave in to my requests.
echo.
timeout /t 5 > NUL
color 04
echo You grab my favorite knife.
echo The blade is cold and clean, and it doesn't have a pointy end... it wouldn't be a cleaver otherwise.
echo.
timeout /t 5 > NUL
color 0c
echo Mom is in her room.
echo When you enter, she looks at you and asks if you need something.
echo.
timeout /t 5 > NUL
color 04
echo Her gentle, good-natured smile slowly fades as she sees the knife in your hands.
echo.
timeout /t 4 > NUL
echo She's not as fast as us.
timeout /t 10 > NUL
cls
color f7
echo.
timeout /t 2 > nul
cls
color f0
echo It' so beautiful!
timeout /t 3 > nul
color f4
echo You did it just right...
timeout /t 4 > nul
echo Now she won't bother us anymore!
timeout /t 4 > nul
color 04
echo We'll be together forever.
timeout /t 4 > nul
title LOVE
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
if %AGUJWGS%==5 goto Uhm
color 40
timeout /t 2 /nobreak > nul
color F4
timeout /t 2 /nobreak > nul
goto LAGS

:Ceded
cls
color 04
echo You keep resisting.
echo But every time you show a little bit of weakness, I become stronger.
echo.
timeout /t 5 > NUL
color 0c
echo You think you can just... not cooperate?
echo.
timeout /t 3 > NUL
color 04
echo I'm in charge here.
echo.
timeout /t 5 > NUL
color 0c
echo I grab my favorite knife.
echo It's a nice old cleaver. It still cuts splendidly.
echo.
timeout /t 5 > NUL
color 0c
echo Your mother is in her room.
echo When I enter, she looks at you and asks if you need something.
echo.
timeout /t 5 > NUL
color 04
echo Her gentle, good-natured smile slowly fades as she looks into my eyes.
echo.
timeout /t 4 > NUL
echo I strke first.
timeout /t 7 > NUL
cls
color f7
echo.
timeout /t 2 > nul
cls
color f0
echo It' so beautiful!
timeout /t 3 > nul
color f4
echo You didn't even try to stop me...
timeout /t 4 > nul
echo Now she won't bother us anymore!
timeout /t 4 > nul
color 04
echo We'll be together forever.
timeout /t 4 > nul
title LOVE
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
if %AGUJWGS%==5 goto Uhm
color 40
timeout /t 2 /nobreak > nul
color F4
timeout /t 2 /nobreak > nul
goto LAGS


:: ##################################################################################################
:: ##################################################################################################
::                                   Modular checks and lines
:: ##################################################################################################
:: ##################################################################################################

:Hints
echo WIP
pause
goto OBack

:QCheck
if %m%==4 goto Detective1
if %m%==8 goto Detective2
if %m%==10 goto Detective3
if %m%==12 goto Detective4
if %m%==13 goto Detective5
goto QCheckBack

:MamaT
set MAMA=%d%%t%
if %MAMA%==11 echo Mom is making breakfast.
if %MAMA%==12 echo Mom is working on her laptop. It's the only thing left of your father in the house.
if %MAMA%==13 echo Mom made you a nice dinner.
if %MAMA%==14 echo Mom is sleeping.
if %MAMA%==21 echo Mom left your breakfast on the table, she's going to buy the groceries.
if %MAMA%==22 echo Mom is arguing with someone at the phone, you think it's dad.
if %MAMA%==23 echo Mom looks tired. The dinner isn't that good.
if %MAMA%==24 echo Mom is sleeping.
if %MAMA%==31 echo You hear your mother cry in her room.
if %MAMA%==32 echo Mom is hugging you out of nowhere.
if %MAMA%==33 echo Mom made your favorite dish tonight.
if %MAMA%==34 echo Mom is sleeping.
if %MAMA%==41 echo Mom is making breakfast
if %MAMA%==42 echo Mom is working on her laptop.
if %MAMA%==43 echo Mom made you a nice dinner.
if %MAMA%==44 echo Mom will take a long, long sleep...
goto MamaTBack

:EmptyHouse
set /a RandomText=(%RANDOM%*10/32768)+1
if %RandomText%==1 echo We're home alone.
if %RandomText%==2 echo Playing chess in two with one body is hard.
if %RandomText%==3 echo You realized I can see you doing naughty things.
if %RandomText%==4 echo Washing blood takes some time.
if %RandomText%==5 echo You think for a while about a name for me. I keep saying you can call me honey, sweetheart, dear, darling...
if %RandomText%==6 echo I love you.
if %RandomText%==7 echo Most of the people we've seen on the streets in front of our house today were cops.
if %RandomText%==8 echo I wish I could hug you.
if %RandomText%==9 echo I'll always be here for you.
if %RandomText%==10 echo Sharing a body is only nice when the owner is as perfect as you are...
goto HouseBack


:: ###############################################################################################################
:: ###############################################################################################################
::                          CHAPTER ONE
:: ###############################################################################################################
:: ###############################################################################################################

:Uhm
cls
color 07
echo :)
timeout /t 1 /nobreak > nul

:Menu
cls
echo     sSSs. d    d   sSSSs     sSSSs     sss. d sSSss
echo    S      S    S  S     S   S     S  d      S       
echo   S       S    S S       S S       S Y      S       
echo   S       S sSSS S       S S       S   ss.  S sSSs  
echo   S       S    S S       S S       S      b S       
echo    S      S    S  S     S   S     S       P S       
echo     "sss' P    P   "sss"     "sss"   ` ss'  P sSSss 
echo.
title Chapter 1 - Life on Earth
color 0c
if %m% GEQ 2 color 04
if %m% GEQ 4 goto QCheck
:QCheckBack
if %m%==1 Echo The house is silent.
if %m% GEQ 2 goto EmptyHouse
:HouseBack
echo [1] Kill
echo [2] Contemplate
echo [3] Suicide
set /p C=
if %C%==1 goto kill
if %C%==2 goto contemplate
if %C%==3 goto suicide
pause > NUL

:: ###################################################
::              CHAPTER 1 MENU OPTIONS
:: ###################################################

:kill
title We Once Again Kill
set /a m=%m%+1
goto %m%M
pause > nul
goto Menu

:contemplate
echo You contemplate.
timeout /t 5 > NUL
goto Hints
:OBack
goto Menu

:suicide
echo You decide to end it all.
timeout /t 5 > NUL
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
::                     MURDERS
:: ###################################################

:2M
color 04
echo I love how firm your hand is on the grip of the knife.
timeout /t 5 > NUL
cls
echo We haven't done enough yet.
timeout /t 3 > NUL
echo I want more.
timeout /t 4 > NUL
echo I want to feel your heart beating fast again...
timeout /t 5 > NUL
cls
color f0
echo ...
timeout /t 3 > NUL
cls
echo It's cold outside.
timeout /t 3 > NUL
echo ...That's probably because it's winter.
timeout /t 5 > NUL
cls
color 70
echo You approach the doorstep of your neighbours and knock.
timeout /t 3 > NUL
echo A woman opens the door, she's friendly even though you don't quite recall her name.
timeout /t 5 > NUL
echo She lives alone, so even if she dies it'll be days before anyone finds out.
timeout /t 5 > NUL
cls
color 04
echo You easily find a way to get inside the house.
timeout /t 3 > NUL
echo At the first chance you get, we strike.
timeout /t 3 > NUL
echo Once.
timeout /t 1 > NUL
echo Twice.
timeout /t 1 > NUL
echo Thrice.
timeout /t 3 > NUL
echo.
echo.
echo.
echo.
echo           ...She couldn't even scream.
timeout /t 5 > NUL
goto Menu


:3M
echo You're beautiful.
timeout /t 5 > nul
cls
color f0
echo The neighbourhood has been quiet lately.
timeout /t 3 > nul
echo But I know it's not because of us, otherwise we'd have heard the police at some point.
timeout /t 5 > nul
echo Nonetheless, we have a job to do.
timeout /t 3 > nul
color f4
echo More hot, fresh blood on your hands.
timeout /t 4 > nul
echo I love it almost as much as you...
timeout /t 3 > nul
echo ...and that's why I love it on your hands.
timeout /t 5 > nul
cls
color 70
echo Once again, we stand in front of someone's door.
timeout /t 3 > nul
echo Who opens is a young woman, not older than 25, with bags under her eyes. Yet an upbeat smile is painted on her face as she greets you.
timeout /t 5 > nul
echo bitch.
timeout /t 1 > nul 
cls
echo Once again, we stand in front of someone's door.
echo Who opens is a young woman, not older than 25, with bags under her eyes. Yet an upbeat smile is painted on her face as she greets you.
echo You make up an excuse to get inside and she lets you in.
timeout /t 4 > nul
cls 
color 0f
echo Finally, you're inside.
timeout /t 3 > nul
echo And,
timeout /t 1 > nul
echo Oh, how easily she turns around.
timeout /t 3 > nul
color 0c
echo Her frail neck exposed...
timeout /t 3 > nul
echo And with a marvellous hit from you...
timeout /t 3 > nul
cls
color 04
echo She's on the ground.
timeout /t 2 > nul
echo Lifeless.
timeout /t 3 > nul
echo Oh, how I wish I could kiss you right now. 
timeout /t 3 > nul
echo You have made me the happiest person on earth.
timeout /t 3 > nul
echo.
echo.
echo            Never stop.
timeout /t 5 > nul
goto Menu


:4M

:5M

:6M

:7M

:8M

:9M

:10M

:11M

:12M

:13M


:: ###################################################
:: ###################################################
::                      ENDINGS
:: ###################################################
:: ###################################################

:Pure_Ending
title The End
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
timeout /t 5 > NUL
color 02
echo.
echo.
echo [Pure Ending]
timeout /t 5 > NUL
exit

:Regret_Ending
cls
title The End
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
timeout /t 5 > NUL
color 0f
echo.
echo.
echo [Regret Ending]
timeout /t 5 > NUL
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
echo But YOU decided it wasn't right.
timeout /t 3 /nobreak > NUL
echo ...You believed it was cruel.
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
echo We murdered %m% people.
echo Yet, even as we die, we don't feel regret
echo We loved every second of it
echo But YOU decided it wasn't right.
echo ...You believed it was cruel.
title I love you.
echo I love you.
timeout /t 5 > NUL
title LOVE
echo.
echo.
echo [LOVE Ending]
timeout /t 5 > NUL
exit