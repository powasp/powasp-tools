@echo off

:: Pulls the docker images and sets up persistent storage

:: https://stackoverflow.com/questions/37527888/docker-commands-fails-in-windows

:: Variables
set GITGET=sudo git clone https://github.com/powasp/powasp-tools/ /powasp
:: For directory creation
set LOCALROOT=%systemdrive%%homepath%\.powasp
:: For volume linking
:: Drive letter (C) to lowercase, replace \ with /
set VOLUMEROOT=%systemdrive:C=c%%homepath:\=/%/.powasp

:: Pull the Docker image
echo "*** Pulling the POWASP Docker image ***"
docker pull powasp/powasp

:: Create the needed directories if they don't exist
echo "*** Creating directories at %LOCALROOT% ***"
if not exist %LOCALROOT% (
	mkdir "%LOCALROOT%"
	mkdir "%LOCALROOT%\powasp"
	mkdir "%LOCALROOT%\persistent"
) else (
	echo "Directories already exist! Skipping..."
)

:: Clone the Github so it's ready to go!
echo "*** Installing POWASP tools ***"
docker run -d --rm -v %VOLUMEROOT%/powasp:/powasp -v %VOLUMEROOT%/persistent:/persistent powasp/powasp /bin/bash -c "%GITGET%; exit"

echo:
echo "*** Done! ***"
echo:

pause
