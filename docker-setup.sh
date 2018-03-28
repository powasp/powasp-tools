#!/bin/bash

# Pulls the docker images and sets up persistent storage

# set -x

# Set $USER_HOME to the original user's directory
# Avoids problems with sudo placing files in /root
USER_HOME=$(bash /powasp/bin/phome "$SUDO_USER")

# Variables
LOCALROOT="$USER_HOME/.powasp"
GITGET="sudo git clone https://github.com/powasp/powasp-tools/ /powasp"

# Pull the Docker image
echo "*** Pulling the POWASP Docker image ***"
docker pull powasp/powasp


# Create the needed directories if they don't exist
echo "*** Creating directories at $LOCALROOT ***"
if [ ! -d "$LOCALROOT" ]; then
	mkdir "$LOCALROOT"
	mkdir "$LOCALROOT/powasp"
	mkdir "$LOCALROOT/persistent"
else
	echo "Directories already exist! Skipping..."
fi

# Update the Github so it's ready to go!
echo "*** Installing POWASP tools ***"
docker run -d --rm -v $LOCALROOT/powasp:/powasp -v $LOCALROOT/persistent:/persistent powasp/powasp /bin/bash -c "$GITGET; exit"

echo
echo "*** Done! ***"
echo
