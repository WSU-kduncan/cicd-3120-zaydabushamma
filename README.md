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
configured was my username and password.(workfile will have to be changed to adjust to custom variables)
```

## part 3 Deployment










