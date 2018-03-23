# These scripts are hardly tested. USE AT YOUR OWN RISK!!

It is recommended to dual boot your machine if you are running Windows.

**If you are serious about penetration testing and hacking, you need the right tools. Windows simply doesn't cut it in industry for these purposes. The pros use Linux machines or OSX because they are UNIX based systems that use Bash.**

## Windows 10 Bash Subsystem
If you must use Windows (so sorry), check out this link to get a *real* shell:
[Bash on Windows](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

Note: The bash subsystem has not been tested with any of the `powasp-tools` scripts

# Windows Installation Process

## Get the powasp-tools scripts
Download this repository as a zip file and extract it to any location using the link in the top right.


## Install Docker
For Windows 10 and above, use [Docker Community Edition](https://store.docker.com/editions/community/docker-ce-desktop-windows)

For Windows 7 and below, use [Docker Toolbox](https://docs.docker.com/toolbox/overview/)

After installation, run the Docker application and wait for it to start completely (it lives in the system tray). Verify that Docker is working using the following command:

```
docker run hello-world
```

This should output a statement that verifies that Docker is working correctly.

## Install Git
Now would be a great time to make a GitHub account and start contributing to open source projects!

[Git Website](https://git-scm.com/downloads)

## Set Up Docker
Double click the script located at `powasp-tools\win\docker-setup.bat` to set up the POWASP Docker environment. *This might take up to 20 minutes and requires at least 15GB of drive space!*

## Run the Docker
Double click the script located at `powasp-tools\win\pwn.bat` to open the Docker environment and get started!

*Save `pwn.bat` for later use!*
