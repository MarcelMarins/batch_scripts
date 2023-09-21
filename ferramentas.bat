@echo off
color A
cls
:inicio

@echo 1 CRIAR DIRETORIO
@echo 2 CRIAR ARQUIVO
@echo 3 APAGAR DIRETORIO
@echo 4 APAGAR ARQUIVO
@echo 5 MOSTRAR CONTEUDO DO DIRETORIO 
@echo 6 MOSTRAR ARVORE DO DIRETORIO 
@echo 7 SAIR :D
set /p key="TECLE UM NUMERO: "

if "%key%"=="1" goto fun1
if "%key%"=="2" goto fun2
if "%key%"=="3" goto fun3
if "%key%"=="4" goto fun4
if "%key%"=="5" goto fun5
if "%key%"=="6" goto fun6
if "%key%"=="7" goto fun7

:fun1
set /p nome="NOME DO DIRETORIO: "
mkdir "%nome%"
goto inicio

:fun2
set /p nome2="NOME DO ARQUIVO: "
set /p exte="EXTENCAO DO ARQUIVO (SEM PONTO): "
copy nul "%nome2%.%exte%"
goto inicio

:fun3
set /p nome3="NOME DO DIRETORIO QUE DESEJA APAGAR: "
rd /s /q "%nome3%"
goto inicio

:fun4
set /p nome4="NOME DO ARQUIVO QUE DESEJA APAGAR: "
del "%nome4%"
goto inicio

:fun5
set /p nome5="NOME DO DIRETORIO QUE DESEJA VER O CONTEUDO: "
dir "%nome5%"
goto inicio

:fun6
set /p nome6="NOME DO DIRETORIO QUE DESEJA VER A ARVORE: "
tree "%nome6%"
goto inicio

:fun7
set /p simounaoso="DESEJA SAIR MESMO? (S/N): "
if /i "%simounaoso%"=="s" goto exit
if /i "%simounaoso%"=="n" goto exit2

:exit
exit

:exit2
goto inicio
