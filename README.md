# Docker Compose Lamp
Something like LAMP using Docker Compose, I've created this repository for help someone whos need a light for make a web server with docker composer, in this example I will show how to set up PHP with Apache and MySQL, both using official images from Docker Hub

Clone or download this repository, go to the folder and use this command for start the Web Server 
```cmd
docker-compose -f "docker-compose.yml" up -d --build
```
An this command form down the Web Server
```cmd
docker-compose -f "docker-compose.yml" down
```
