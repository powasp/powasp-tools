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


## pdebug

Runs a bash script in debug mode

```
$ pdebug <command>
```

## pdvwa

Runs dvwa

```
$ pdvwa
```

## pgit

Installs a github repository based on shortcuts defined in `/powasp/etc/pgit.conf`

```
$ pgit <github-shortcut>
```

## pjuice

Runs juice

```
$ pjuice
```

## pmutill

Runs mutillidae

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

Runs the powasp docker image and opens a shell

```
$ pwn
```
