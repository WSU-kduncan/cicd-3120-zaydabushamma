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
![Screenshot 2022-12-04 030656](https://user-images.githubusercontent.com/77698851/205480639-703b6f85-53b4-43d1-b15b-1d8090602b42.png)








