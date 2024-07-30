#!/bin/bash
  
# Variables
REPOSITORY_NAME="venuzs/venu"

# Get the latest image tag from Docker Hub
LATEST_TAG=$(curl -s "https://hub.docker.com/v2/repositories/$REPOSITORY_NAME/tags/?page_size=100" \
  | jq -r '.results[0].name')

# Check if LATEST_TAG is empty
if [ -z "$LATEST_TAG" ]; then
  echo "Error: Could not retrieve the latest tag."
  exit 1
fi
# Output the latest tag
echo "$REPOSITORY_NAME:$LATEST_TAG"

docker pull "$REPOSITORY_NAME:$LATEST_TAG"

docker run -d -p 5500:5500 "$REPOSITORY_NAME:$LATEST_TAG"