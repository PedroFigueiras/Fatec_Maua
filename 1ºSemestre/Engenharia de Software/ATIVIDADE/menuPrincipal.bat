@echo off
title Login
mode 90,40
color 0a
:inicio
cls
echo --------------------------------
echo [P] PACOTE OFFICE
echo [S] SERVICOS DE REDE
echo [A] APLICATIVOS WINDOWS
echo [E] ENCERRAR SESSAO
echo [S] FINALIZAR PROGRAMA
echo -------------------------------- 
set /p op= Digite sua Opcao:

if /i %op% == p (call pacote.bat)
if /i %op% == s (call servicos.bat)
if /i %op% == a (call aplicativos.bat)
if /i %op% == e (call tela2.bat)
if /i %op% == s (call tela2.bat)