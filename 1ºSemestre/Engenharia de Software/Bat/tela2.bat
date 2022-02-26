@echo off
title Aula 03 - ENG. SOFTWARE
mode 90,40
color 0d
:inicio
cls
echo                    ..    d$P              $$      `$b
echo                    z$"   $$F               4$$      $$L
echo                    $$   4$$                 $$.     4$$    ,z$P
echo                    $$   $$'                 $$F      $$   $$$P
echo                   $$$   $$                  $$f      $$   ""`
echo                  $'$$; 4$F      .,_         $$'      $$
echo                .$' $L 4$'   .d$" `?    zee $$   ,ec $F  d$F z$$   ,ce,.
echo              .d$ee. $$ 4$'  d$"   z$  $$"  .$f.d$"  4$  4$$ 4$$P z$P?$$$
echo             d$" "$$d$,`$  $$F   z$f,$$    $$.$$    $P  $$% $$$4$"   4$$
echo.$"%.     ,p$"        $$ $ J$$  z$$$ $$"  .$$ $$"  .$$C 4$P  $$$"     $$f
echo `$.     ,d$bq,     $.$ $$$$$P $$.$$b.$P4$ $$L.$P4$F $P  4$P     .$$"
echo  `$$g$P"        "     `b' `"   ""^?F"   $$`PF"  $$ "   P'     eF
echo.
echo --------------------------------
echo [r] Retornar ao Menu

echo -------------------------------- 
set /p op= Digite sua Opcao:
if /i %op% == r (call menu.bat) else (
	echo.
	echo ----------------
	echo OpCAO Invalida!
	echo ----------------
	echo.
	pause
	goto:inicio)