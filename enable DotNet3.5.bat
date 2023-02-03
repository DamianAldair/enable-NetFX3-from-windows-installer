@ECHO OFF

:: Basic GUI
title ".NET Framework 3.5 Installer"
color 71
cls

echo.
echo              ######        ####    ############    ############          ##########      ###########
echo              #######       ####    ############    ############         ############     ###########
echo              ########      ####    ####                ####             ####    ####     ####
echo              ##### ###     ####    ####                ####                     ####     ####
echo              #####  ###    ####    ##########          ####                 #######      #########
echo              #####   ###   ####    ##########          ####                 #######       ##########
echo              #####    ###  ####    ####                ####                     ####             ####
echo              #####     ########    ####                ####             ####    ####     ####    ####
echo         ###  #####      #######    ############        ####             ############ ### ###########
echo         ###  #####       ######    ############        ####              ##########  ###  #########
echo.
echo         ######                                                         #
echo         #      # ###  #####  # ### ###   #####  #     #   ###   # ###  #  #
echo         #      ##         #  ##   #   #  #   #  #  #  #  #   #  ##     # #
echo         ###    #      #####  #    #   #  #####  #  #  #  #   #  #      ####
echo         #      #      #   #  #    #   #  #      #  #  #  #   #  #      #   #
echo         #      #      #####  #    #   #  #####   ## ##    ###   #      #   #
echo.
echo         Script by Damian Aldair
echo.

:: Installation
:Q
echo.
echo  Recuarde que si el proceso falla puede deberse a que este script
echo         debe abrirse con permisos de administrador.
echo.
set /p inst=  Instalar/Activar .NET Framework 3.5 en este ordenador? (S/N): 
if /i {%inst%}=={s} (goto install)
if /i {%inst%}=={n} (goto exit)
echo.
echo Respuesta incorrecta! Utilice S/N o s/n
goto Q

:install
cls
echo.
echo              ######        ####    ############    ############          ##########      ###########
echo              #######       ####    ############    ############         ############     ###########
echo              ########      ####    ####                ####             ####    ####     ####
echo              ##### ###     ####    ####                ####                     ####     ####
echo              #####  ###    ####    ##########          ####                 #######      #########
echo              #####   ###   ####    ##########          ####                 #######       ##########
echo              #####    ###  ####    ####                ####                     ####             ####
echo              #####     ########    ####                ####             ####    ####     ####    ####
echo         ###  #####      #######    ############        ####             ############ ### ###########
echo         ###  #####       ######    ############        ####              ##########  ###  #########
echo.
echo         ######                                                         #
echo         #      # ###  #####  # ### ###   #####  #     #   ###   # ###  #  #
echo         #      ##         #  ##   #   #  #   #  #  #  #  #   #  ##     # #
echo         ###    #      #####  #    #   #  #####  #  #  #  #   #  #      ####
echo         #      #      #   #  #    #   #  #      #  #  #  #   #  #      #   #
echo         #      #      #####  #    #   #  #####   ## ##    ###   #      #   #
echo.
echo         Script by Damian Aldair
echo.
for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\sources\install.wim" set setupdrv=%%I
if defined setupdrv (
	echo  Unidad enconrada: %setupdrv%
	echo  ... Instalando ...
	Dism /online /enable-feature /featurename:NetFX3 /Source:%setupdrv%:\sources\sxs /All /LimitAccess
	echo.
	echo  .NET Framework 3.5 should be installed
	echo.
	echo  El proceso debe haber terminado.
) else (
	echo  No se he encontrado una unidad
	echo  Inserte un DVD, un USB o monte un ISO y pruebe de nuevo.
)
echo.
:exit
echo.
echo.
echo  Presione una tecla para salir...
pause>nul
echo.
