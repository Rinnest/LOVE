set madre=1
:mama
if %madre%==1 echo tu madre esta' viva
if %madre%==0 echo tu madre esta' muerta
if %madre% LEQ -1 echo has sacrificado no solo tu madre sino que tambie'n las de tus amigos.
echo que quieres hacer?
echo [1] matar a mama'
echo [2] suicidarme
echo [3] contemplar la realidad
set /p e=
if %e%==1 ( set /a madre=madre-1
	goto mama
)
if %e%==2 goto suicidio
if %e%==3 goto contemplacion
pause > NUL

:suicidio
cls
if %madre%==1 ( echo decides suicidarte.
	echo el simple hecho de haber considerado matar tu madre te hace sentir mal.
	echo THE END
	pause > NUL
	exit
)
echo has matado a tu madre, y quizas has hecho mas que eso.
echo decides que tu vida ya no vale
echo y te suicidas.
pause > NUL
exit

:contemplacion
echo contemplas.
echo sigues queriendo matar a madres.
goto mama