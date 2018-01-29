# powasp-tools

The tools and configuration files for custom POWASP scripts.

To install:

```
$ sudo git clone https://github.com/powasp/powasp-tools/ /powasp
$ sudo bash /powasp/install.sh
$ source ~/.bashrc
```

To update:
```
$ sudo powasp-update
```

---

# Available Commands

*It is recommended to go through each file to see how it works. The scripts are all commented and short!*


## pconfirm

Confirms a user action

```
$ pconfirm [-y] [-n] [-q question]
```


## pdebug

Runs a bash script in debug mode

```
$ pdebug <command>
```


## pdock

Runs custom docker commands
```
# rmc   Removes all docker containers
# rmi   Removes all docker images

$ pdock <rmc | rmi>
```


## pdvwa

Pulls and runs dvwa

```
$ pdvwa
```


## pflag

Checks if a flag is present based on a getopts variable

```
# Uses getopts to check for -f flag
$ getopts f FLAG

# Parses $FLAG and runs command if successful
$ pflag "$FLAG" && echo "Success!"
```


## pgit

Installs a github repository based on shortcuts defined in `/powasp/etc/pgit.conf`

```
$ pgit <github-shortcut>
```


## phelp

Displays the relevant parts of the README

```
$ phelp <command>
```


## pjuice

Pulls and runs juice

```
$ pjuice
```


## pmutill

Pulls and runs mutillidae

```
$ pmutill
```


## popen

Open a port on localhost

```
$ popen <port>
```


## powasp-update

Updates powasp-tools to the latest version

```
$ sudo powasp-update
```


## pwn

Pulls and runs the powasp docker image and opens a shell

```
$ pwn
```
