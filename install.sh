#!/bin/bash

# Installs powasp-tools the first time

# set -x

# Variables
RCPATH="$HOME/.bashrc"
PROFILEPATH="$HOME/.bash_profile"
RCSTR="[[ -f /powasp/.bashrc ]] && source /powasp/.bashrc # Loads POWASP .bashrc"
PROFILESTR="[[ -f ~/.bashrc ]] && source ~/.bashrc # Loads .bashrc"

# Ensure bin files have execute permissions
# chmod -R +x /powasp/bin


echo "-----------"
echo "Beginning installation..."
echo

# Add contents of powasp .bashrc to local .bashrc (so commands are available in non-login scripts too!)
# Only if the line isn't already there!
echo "Adding powasp/bin to ~/.bashrc..."
if [[ -z $(grep "$RCSTR" "$RCPATH") ]]; then
  # Error handling
  echo "$RCSTR" >> "$RCPATH" && echo "Added!" || echo "ERROR: Failed to add line to .bashrc! Try adding manually"
else
  echo "Already added! Skipping..."
fi

echo

echo "Adding ~/.bashrc to ~/.bash_profile..."
# Make sure .bash_profile pulls from .bashrc for cross-compatibility
# Only if it hasn't been sourced already!
if [[ -z $(grep "~/.bashrc" "$PROFILEPATH") ]]; then
  # Error handling
  echo "$PROFILESTR" >> "$PROFILEPATH" && echo "Added!" || echo "ERROR: Failed to add line to .bash_profile! Try adding manually"
else
  echo "Already added! Skipping..."
fi

echo
echo "-----------"
echo "Installation Complete!"
echo "-----------"
