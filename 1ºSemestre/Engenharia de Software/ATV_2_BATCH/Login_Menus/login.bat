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
echo            LOGIN
echo --------------------------------
echo.
set /p usu= Usuario:
set /p senha= Senha:
if /i %usu% == fatec (goto:Senha) else (
echo.
	echo ----------------
	echo Usuario InvalidO!
	echo ----------------
	echo.
	pause
	goto:inicio)
	
:Senha	
if %senha% == 123 (call menuPrincipal.bat) else (
echo.
	echo ----------------
	echo Senha Invalida!
	echo ----------------
	echo.
	pause
	goto:inicio)	