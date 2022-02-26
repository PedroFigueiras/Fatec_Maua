@echo off
title Aula 03 - ENG. SOFTWARE
mode 90,40
color 0a
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
echo [1] Execultar Word
echo [2] Execultar Excel
echo [3] Teclado Virtual
echo [4] Navegar na Web
echo [5] Windows Explorer
echo [6] Calculadora
echo [7] Testar Conexao de Rede
echo [C] Chamar Tela
echo [E] Encerrar Script
echo -------------------------------- 
set /p op= Digite sua Opcao:

if %op% == 1 (goto:texto)
if %op% == 2 (goto:planilha)
if %op% == 3 (goto:teclado)
if %op% == 4 (goto:web)
if %op% == 5 (goto:arquivos)
if %op% == 6 (goto:calculo)
if %op% == 7 (goto:teste)
if /i %op% == c (call tela2.bat)
if /i %op% == e (goto:sair) else (
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
:teclado
start osk.exe
goto:inicio
:web
echo.
set /p site= Digite Algum Site: 
start %site%
goto:inicio
:arquivos
start explorer.exe
goto:inicio
:calculo
start calc.exe
goto:inicio 
:teste
set /p conexao=Digite o IP da maquina ou endereco web:  
ping %conexao% -t
goto:inicio
:Sair
set /p sai= Deseja Sair ? [S/N]
if /i %resp% == s (exit) else (goto:inicio)
 