#!/bin/bash

# Installs powasp-tools the first time


# Variables
RCPATH="~/.bashrc"
PROFILEPATH="~/.bash_profile"
RCSTR="[[ -f /powasp/.bashrc ]] && source /powasp/.bashrc"
PROFILESTR="[[ -f $PROFILEPATH ]] && source $PROFILEPATH"

function checkfile () {
  # Checks a file for a string
  # Usage: checkfile <file> <string>

  if [[ $(grep "$2" "$1)" ]]; then
    # String found
    return 0;
  else
    # String not found
    return 1;
}



# Ensure bin files have execute permissions
# chmod -R +x /powasp/bin

# Add contents of powasp .bashrc to local .bashrc (so commands are available in non-login scripts too!)
# Only if the line isn't already there!
if [[ $(grep $RCSTR $RCPATH) ]]; then
  echo "$RCSTR" >> "$RCPATH"
fi

# Make sure .bash_profile pulls from .bashrc for cross-compatibility
# Only if it hasn't been sourced already!
if [[ $(grep "~/.bashrc" $PROFILEPATH) ]]; then
  echo "$PROFILESTR" >> "$PROFILEPATH"
fi
