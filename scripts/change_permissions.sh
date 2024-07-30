#!/bin/bash

# Set executable permissions for deployment scripts
chmod +x /home/ubuntu/app/scripts/*.sh

# Verify permissions
if [ $? -eq 0 ]; then
  echo "Permissions changed successfully."
else
  echo "Failed to change permissions."
  exit 1
fi
