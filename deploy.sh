#!/bin/bash

echo "Starting deployment..."

git pull origin main

sudo cp index.html /usr/share/nginx/html/index.html

sudo systemctl reload nginx

