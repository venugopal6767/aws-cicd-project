#!/bin/bash

# Start the Docker container
echo "Starting the Docker container..."

# Define your container name and image URI
CONTAINER_NAME="awscicd"
IMAGE_URI=$(jq -r '.[0].imageUri' /home/ec2-user/deployment/imagedefinitions.json)

# Pull the latest image
docker pull $IMAGE_URI

# Run the new container
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_URI

echo "Container $CONTAINER_NAME started with image $IMAGE_URI."
