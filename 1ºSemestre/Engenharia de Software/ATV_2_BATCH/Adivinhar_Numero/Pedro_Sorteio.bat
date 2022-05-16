@echo off
title Gerenciamento de arquivos
mode 60,30
color 0f

:init
set /a numero=(%random% %%50)+1
set /a cont=5
goto:sorteio

:sorteio
cls
echo Este e o numero sorteado:%numero%
cls

echo.
echo -----------------------------------------------------
echo                    BEM VINDO 
echo -----------------------------------------------------
echo                     SORTEIO
echo -----------------------------------------------------
echo        	     Quantidade sorteios: %cont%
echo -----------------------------------------------------
echo.    
echo.

set /p numsort=Digite um Numero de 1 a 50: 
if %numsort% gtr 50 (goto:erro)
if %numero% equ %numsort% (goto:acertou)
if %numero% lss %numsort% (goto:menor)
if %cont% lss 1 (goto:tentativas)
if %numero% gtr %numsort% (goto:maior) else (
echo.
echo 	Digite numeros de 1 a 50
echo.)
pause
goto:sorteio


:acertou
echo.
echo 		Voce acertou 
echo    Seu Numero sorteado foi o : %numero%
echo.
set /p resp=novo sorteio?[S/N]
if /i %resp% equ s (goto:init) else (exit) 

:menor
echo.
echo Digite um Numero Menor
echo.
set /a cont=%cont%-1
pause
goto:sorteio

:maior
echo.
echo Digite um Numero Maior
echo.
set /a cont=%cont%-1
pause
goto:sorteio


:tentativas
echo.
echo Acabaram suas tentativas
echo Seu Numero sorteado foi o : %numero% 
set /p resp=Deseja Realizar um Novo Sorteio? [S/N]
if /i %resp% equ s (goto:init) else (exit) 

:erro
echo.
echo  Insira um numero menor que 50
set /a cont=%cont%-1
pause
goto:sorteio