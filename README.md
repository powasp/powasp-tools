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
# Usage:

$ pconfirm [-y | -Y <Confirmation message>] [-n | -N <Rejection message>] [-q <Question>]



Flags
--------------
-y  Display default confirmation message when the user confirms
-Y  Display custom <Confirmation message> when the user confirms
-n  Display default rejection message when the user does not confirm
-N  Display custom <Rejection message> when the user does not confirm
-q  Ask a user-defined confirmation question


Default Values
--------------
<Confirmation message>  "Operation confirmed"
<Rejection message>     "Operation cancelled"
<Question>              "Are you sure?"
```

## pdebug

Runs a bash script in debug mode

```
Usage:

$ pdebug <command>


# Equivalent to:
bash -x <command>
```


## pdock

Runs custom docker commands
```
# rmc   Removes all docker containers
# rmi   Removes all docker images

# Usage:
$ pdock <rmc | rmi>
```


## pdvwa

Pulls and runs dvwa

```
# To start
$ pdvwa

# To stop
$ pdvwa stop
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

*Note: this is not currently used or maintained*

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
# To start
$ pjuice

# To stop
$ pjuice stop
```


## pmutill

Pulls and runs mutillidae

```
# To start
$ pmutill

# To stop
$ pmutill stop
```


## popen

Open a port on localhost in the default browser

```
$ popen <port>
```


## powasp-update

Updates powasp-tools to the latest version

*Note: `sudo` must be used if updating `/powasp`*

```
# Default base directory is /powasp

$ powasp-update [-d <Base directory>]
```


## pwn

Pulls and runs the powasp docker image and opens a shell

```
$ pwn
```
