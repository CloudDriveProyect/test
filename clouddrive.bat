@echo off
title clouddrive
color 97
:menu
echo.
echo Bienvenid@ a clouddrive
echo.
echo 1.- registrarse
echo 2.- iniciar sesion
echo 3.- configuracion automatica de envio
echo 4.- enviar archivo
echo 5.- descargar archivo
echo.

set /p Respuesta= escribe el numero de la opcion que quieres usar: 
if %Respuesta%==1 goto registrarse
if %Respuesta%==2 goto iniciarsesion
if %Respuesta%==3 goto CADE
if %Respuesta%==4 goto enviararchivo
if %Respuesta%==5 goto descargararchivo

:registrarse
cls
echo.
set /p username2= Nombre de usuario: 
set /p pass= Contrasena: 
md %username2%
cd %username2%
echo %pass% >> pass.cdpass
cd..
git init
git add %username2%
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/CloudDriveProyect/test.git
git push -u origin main

:iniciarsesion
set /p username= Nombre de usuario: 
set /p pass= Contrasena: 


:CADE
git config --global user.name "%username%"
git config --global user.email "clouddrive@gmail.com"
cls
echo.
echo la configuracion automatica ha terminado
echo .
echo presione una tecla para volver al menu de inicio...
pause>nul
goto menu