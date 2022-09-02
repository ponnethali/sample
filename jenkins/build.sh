#!/bin/bash
cp /home/azureuser/index.html .
touch Dockerfile
echo "  
FROM nginx:alpine
COPY index.html /usr/share/nginx/html">>Dockerfile
docker build -t aliponneth/app:latest .
