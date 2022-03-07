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
echo     Aplicativos Windows
echo --------------------------------
echo --------------------------------
echo [C] CALCULADORA
echo [T] TECLADO VIRTUAL
echo [W] WINDOWS EXPLORER
echo [P] PAINT
echo [B] BLOCO DE NOTAS
echo [R] RETORNAR AO MENU
echo -------------------------------- 
set /p op= Digite sua Opcao:

if /i %op% == c (goto:cal)
if /i %op% == t (goto:tcl)
if /i %op% == w (goto:windows)
if /i %op% == p (goto:paint)
if /i %op% == b (goto:bln)
if /i %op% == R (call menuPrincipal.bat) else (
	echo.
	echo ----------------
	echo OpCAO Invalida!
	echo ----------------
	echo.
	pause
	goto:inicio)
	
:cal
start calc.exe
goto:inicio
:tcl
start osk.exe
goto:inicio
:windows
start explorer.exe
goto:inicio
:paint
start mspaint.exe
goto:inicio
:bln
start notepad.exe
goto:inicio