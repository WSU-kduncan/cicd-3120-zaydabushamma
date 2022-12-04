## part 1 Dockerize it

- install docker
```
- installed with docker docs
- uninstall old versions- sudo apt-get remove docker docker-engine docker.io
- sudo apt-get update
- sudo apt install docker.io
- sudo snap install docker
- docker --version
- sudo docker run hello-world
```
- Create a container image and docker file
```
- run --sudo apt install gnome-terminal-- to build the container
- run --docker run -dit --name my_apache2_container -p 8080:80 my_apache2_image-- the run the container
- to view the homepage running go to a browser and visit --http://localhost:8080/--
-  /usr/local/apache2/htdocs/ is directory for websites stored
```
## part 2 GitHub Actions and DockerHub
- how to create public repo in dockerHub
```
- click on repositories on the top and click create repository as shown in the image below
```
![Screenshot 2022-12-04 030656](https://user-images.githubusercontent.com/77698851/205480639-703b6f85-53b4-43d1-b15b-1d8090602b42.png)

- How to authenticate with DockerHub via CLI using Dockerhub credentials
```
- use command sudo docker login -u zaydabu(will be prompted for password if not root)
```
- How to push container to Dockerhub
```
- sudo docker push zaydabushamma/ceg3120
```
- Configuring GitHub Secrets
```
- navigate to github repository settings and choose secrets, then actions and finally new repository secret.
- create secret for your dockerHub username and anotherone for your password using the Docker_token.
```
- Behavior of GitHub workflow
```
Workflow will build and push images to your DockerHub, it will do this by verifying your username and DockerHub access token.
the workflow will be triggered when a git push is ran for this repository.
configured was my username and password.(workflowfile will have to be changed to adjust to custom variables)
```

## part 3 Deployment

- Description of container restart script
```
- docker stop site- stops the current active image
- docker rm site- remove conatiner image and free up port 8080
- docker pull momankhoney/my-first-repo:latest- pull the new image to your machine
- docker run -d --restart unless-stopped -p 8080:80 --name site zaydabu/my-first-repo- run container on port 80 in detached mode.
```
- Setting up a webhook on the server
```
a listener was created by telling file to listen for any github action, such as a push.
---wget https://dl.google.com/go/go1.19.3.linux-amd64.tar.gz--- will download and install Go
---sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz---  
---export PATH=$PATH:/usr/local/go/bin--- 
---go version--- 

---go install github.com/adnanh/webhook@latest--- install webhook
---vim hooks.json--- and modify to 
[
  {
    "id": "potato",
    "execute-command": "/home/ubuntu/cicd-3120-zaydabushamma/refresh.sh",
    "command-working-directory": "/var/webhook"
  }
]
---/home/ubuntu/go/bin/webhook -hooks /home/ubuntu/hooks.json -verbose--- To run
```
- Description of Webhook task definition file
```
This file creates the parameters of the link for the webhook. This means defining the hook id, the start 
script, as well as defining a personal key for authentication.
```
- Steps to set up a notifier in GitHub or DockerHub
```
- login to Dockerhub
- click on the Repositories tab.
- Click on your repository
- click Webhooks tab
- enter a Webhook name and URL to create
```









