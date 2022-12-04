docker stop site
docker ps -a
docker rm site
docker ps -a
docker pull zaydabushamma/ceg3120:latest
docker images
docker run -d -p 8080:80 --name site zaydabushamma/ceg3120
