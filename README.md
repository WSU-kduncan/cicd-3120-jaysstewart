## pt1
# Project Overview
- Containerize  an application with Docker
- Automate the project pipeline with Github Actions
- Explore usage of webhooks to keep production up to date
# how to install docker 
- Set up docker reposity and add Dockers offical GPG key
- install Docker Engine using apt-get install
# how to build container
- Create Dockerfile 
- run "docker build  -t container-name"
# how to run the container
- run "docker run -p port:port container-name"
# how to view the project
- open browser and type "localhost:port"
## pt2
# Create DockerHub public repo
- creat docker hub account, and create a public repo on the account
# How to authenticate with DockerHub via CLI using DockHub credentials
- docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
# Configure Github Secrets
- go to github repo, settings, then secrets tab. 
- DockerHub username and password are needed.
- DOCKER_USERNAME and DOCKER_PASSWORD are the secret names
# Behavior of GitHub workflow
- pushes a new image to the docker repo when a Docker image is succesfully built
- Variable to change are the secret username and password, and the namespace and repo name.
