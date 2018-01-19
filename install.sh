#!/bin/bash

# Installs powasp-tools the first time

set -x

# Variables
RCPATH="~/.bashrc"
PROFILEPATH="~/.bash_profile"
RCSTR="[[ -f /powasp/.bashrc ]] && source /powasp/.bashrc"
PROFILESTR="[[ -f $PROFILEPATH ]] && source $PROFILEPATH"

# Ensure bin files have execute permissions
# chmod -R +x /powasp/bin

# Add contents of powasp .bashrc to local .bashrc (so commands are available in non-login scripts too!)
# Only if the line isn't already there!
if [[ $(grep "$RCSTR" "$RCPATH") ]]; then
  echo "$RCSTR" >> "$RCPATH"
fi

# Make sure .bash_profile pulls from .bashrc for cross-compatibility
# Only if it hasn't been sourced already!
if [[ $(grep "~/.bashrc" "$PROFILEPATH") ]]; then
  echo "$PROFILESTR" >> "$PROFILEPATH"
fi
