@echo off
title Login
mode 90,40
color 0a
:inicio
cls
echo _/﹋\__
echo (҂`_´)
echo -,︻╦╤─ ҉ - - - - - - - - - - - 
echo _/﹋\_
echo --------------------------------
echo         Serviços de Redes
echo --------------------------------
echo --------------------------------
echo [N] NAVEGAR INTERNET
echo [S] TESTAR CONEXAO DE REDE
echo [O] OBTER O IP DA MAQUINA
echo [R] RETORNAR AO MENU
echo -------------------------------- 
set /p op= Digite sua Opcao:

if /i %op% == N (goto:web)
if /i %op% == S (goto:rede)
if /i %op% == O (goto:ip)
if /i %op% == R (call menuPrincipal.bat) else (
	echo.
	echo ----------------
	echo OpCAO Invalida!
	echo ----------------
	echo.
	pause
	goto:inicio)
	
:web
echo.
set /p site= Digite Algum Site: 
start %site%
goto:inicio

:rede
set /p conexao=Digite o IP da maquina ou endereco web:  
ping %conexao% -t
goto:inicio

:ip
start %ipconfig/all%
goto:inicio 