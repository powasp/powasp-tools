#!/bin/bash

# Installs powasp-tools the first time

# Ensure bin files have execute permissions
# chmod -R +x /powasp/bin

# Add contents of powasp .bashrc to local .bashrc (so commands are available in non-login scripts too!)
echo "source /powasp/.bashrc" >> ~/.bashrc
