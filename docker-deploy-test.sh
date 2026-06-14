#!/bin/bash

echo "Building Docker image..."
sudo docker build -f dockerfile.test -t employee-portal:test .

echo "Starting container..."
sudo docker run -d -p 8082:80 --name employee-portal-test2 employee-portal:test

echo "Deployment completed."

sudo docker ps
