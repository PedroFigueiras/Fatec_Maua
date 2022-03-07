@echo off
title Menu Principal
mode 90,40
color 0a
:inicio
cls
echo _/﹋\__
echo (҂`_´)
echo -,︻╦╤─ ҉ - - - - - - - - - - - 
echo _/﹋\_
echo --------------------------------
echo        Menu Principal
echo --------------------------------
echo --------------------------------
echo [P] PACOTE OFFICE
echo [R] SERVICOS DE REDE
echo [A] APLICATIVOS WINDOWS
echo [E] ENCERRAR SESSAO
echo [S] FINALIZAR PROGRAMA
echo -------------------------------- 
set /p op= Digite sua Opcao:

if /i %op% == p (call pacote.bat)
if /i %op% == r (call servicos.bat)
if /i %op% == a (call aplicativos.bat)
if /i %op% == e (call login.bat)
if /i %op% == s (goto:Sair) else (
	echo.
	echo ----------------
	echo OpCAO Invalida!
	echo ----------------
	echo.
	pause
	goto:inicio)
	
:Sair
set /p sai= Deseja Sair ? [S/N]
if /i %resp% == s (exit) else (goto:inicio)