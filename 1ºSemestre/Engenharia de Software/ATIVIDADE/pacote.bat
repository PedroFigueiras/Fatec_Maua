@echo off
title Pacotes
mode 90,40
color 0a
:inicio
cls
echo --------------------------------
echo [W] WORD
echo [E] EXCEL
echo [A] ACESS
echo [P] POWER POINT
echo [R] RETORNAR AO MENU
echo -------------------------------- 
set /p op= Digite sua Opcao:

if /i %op% == W (goto:texto)
if /i %op% == E (goto:planilha)
if /i %op% == A (goto:acesso)
if /i %op% == P (goto:power)
if /i %op% == R (call menuPrincipal.bat) else (
	echo.
	echo ----------------
	echo OpCAO Invalida!
	echo ----------------
	echo.
	pause
	goto:inicio)
	
:texto
start winword.exe
goto:inicio
:planilha
start excel.exe
goto:inicio
:acesso
start msaccess.exe
goto:inicio
:power
start powerpnt.exe
goto:inicio