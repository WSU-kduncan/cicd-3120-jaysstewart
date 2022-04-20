#!/bin/sh
# Pull latest image
sudo docker pull jaysstewart/ceg3120-docker
#remove unused images
sudo docker image prune -f
# stop container
sudo docker stop ceg3120-docker
# remove container
sudo docker remove ceg3120-docker
# recreate container
docker run -p 80:80 -d --name ceg3120-docker jaysstewart/ceg3120
