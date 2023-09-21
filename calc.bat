@echo off
color A
cls
@echo CALCULADORA
@echo -----------
@echo Digite o primeiro valor
set /p op1=""
@echo Digite o segundo valor
set /p op2=""

@echo Digite um sinal de operacao (Ex.: /, *, +, -)
set /p var=""

set /a "resu=%op1%%var%%op2%"
@echo Resultado: %resu%
pause
