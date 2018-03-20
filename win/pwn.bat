@echo off

:: Runs the powasp docker image and opens a shell on windows
:: https://docs.docker.com/docker-for-windows/#shared-drives

set LOCALROOT=C:%homepath%\.powasp
set VOLUMEROOT=c:%homepath:\=/%/.powasp

:: Pull the docker image
echo:
echo "*** Pulling the latest version of powasp/powasp (docker) ... ***"
echo:
docker pull powasp/powasp
echo:
echo "*** Done ***"
echo:

:: Pull the latest powasp-tools to be used in the Docker
echo:
echo "*** Pulling the latest powasp/powasp-tools (github) ... ***"
echo:
cd /d %LOCALROOT%\powasp
git pull
echo:
echo "*** Done ***"
echo:

:: Run the docker image
:: Hostname (-h): powasp
: Container Name (--name) powaspcontainer
docker run -ti --rm -v %VOLUMEROOT%/powasp:/powasp -v %VOLUMEROOT%/persistent:/persistent -h powasp --name powaspcontainer powasp/powasp
