#!/bin/bash

# Installs powasp-tools the first time

# Ensure bin files have execute permissions
# chmod -R +x /powasp/bin

# Add export path command to bashrc (so commands are available in non-login scripts too!)
echo 'export PATH="$PATH:/powasp/bin"' >> ~/.bashrc
