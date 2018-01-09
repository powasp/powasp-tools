#!/bin/bash

#Variables
BASEGITHUB="https://github.com/powasp/powasp-tools/"
TEMPDIR="/powasp_temp"

# Clone updated scripts
sudo git clone $BASEGITHUB $TEMPDIR

echo "* Update Started *"
echo
echo "!!! BE WARNED: This file (update.sh) is NOT updated by this script! It must be done manually with the following commands:"
echo "---------------"
echo "sudo git clone $BASEGITHUB $TEMPDIR"
echo "sudo rm -f /powasp/update.sh"
echo "sudo mv $TEMPDIR/update.sh /powasp/update.sh"
echo "---------------"
echo

# Remove old scripts and directories (NOT update.sh)
sudo rm -rf /powasp/bin
sudo rm -rf /powasp/etc
sudo rm -f /powasp/install.sh

sudo cp -R $TEMPDIR/bin /powasp/bin
sudo cp -R $TEMPDIR/etc /powasp/etc
sudo cp -R $TEMPDIR/install.sh /powasp/install.sh

echo "* Completing Update... *"
chmod -R +x /powasp/bin
sudo rm -rf $TEMPDIR


echo
echo "* Update complete! *"
echo
echo "----------------------------"
echo
echo "Be sure to run the following command for the changes to complete:"
echo "---------------"
echo "source ~/.bashrc"
echo "---------------"
echo
echo
