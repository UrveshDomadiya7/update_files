#! /bin/bash


# This will build docker image from Dockerfile
sudo docker build -t react-app:latest .

# This will run container on defined port
sudo docker run -d -p 8088:80 --name react-app react-app:latest 

# To see the output with curl
curl localhost:8088
