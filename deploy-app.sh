#!/bin/bash

git pull

sudo docker build -t employee-portal:v1 .

sudo docker stop employee-portal-container

sudo docker rm employee-portal-container

sudo docker run -d --name employee-portal-container -p 8084:80 employee-portal:v1
