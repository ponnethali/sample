#!/bin/bash
touch Dockerfile
echo "  
FROM nginx:alpine
COPY sample/index.html /usr/share/nginx/html">>Dockerfile
docker build -t aliponneth/app:latest .
