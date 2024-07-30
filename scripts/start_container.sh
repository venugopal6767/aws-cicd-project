#!/bin/bash

# Define container name and image URI
CONTAINER_NAME="web-app"
IMAGE_DEFINITION_FILE="/tmp/imagedefinitions.json"

# Read image URI from imagedefinitions.json
IMAGE_URI=$(jq -r '.[] | select(.name == "'"$CONTAINER_NAME"'") | .imageUri' $IMAGE_DEFINITION_FILE)

# Check if the image URI is present
if [ -z "$IMAGE_URI" ]; then
    echo "Image URI not found in $IMAGE_DEFINITION_FILE"
    exit 1
fi

# Pull the new Docker image
echo "Pulling new image $IMAGE_URI..."
docker pull $IMAGE_URI

# Run the Docker container with the new image
echo "Starting container $CONTAINER_NAME with image $IMAGE_URI..."
docker run -d --name $CONTAINER_NAME $IMAGE_URI
