# Docker Compose Lamp
Something like LAMP using Docker Compose, I've created this repository for help someone whos need a light for make a web server with docker composer, in this example I will show how to set up PHP with Apache and MySQL, both using official images from Docker Hub

## Get Start
### Commands
Clone or download this repository, go to the folder and use this command for start the Web Server (If you are using windows you need to use the powershell) 
```cmd
docker-compose -f "docker-compose.yml" up -d --build
```
An this command form down the Web Server
```cmd
docker-compose -f "docker-compose.yml" down
```

### Acess URLs
| URL | Description |
| --- | --- |
| localhost:80 | HTTP from PHP container |
| localhost:443 | HTTPS from PHP container |
| localhost:3003 | PHPMyAdmin Panel |

### File structure
```
.
├── db                      # Database persistence files
│   └── ...                 # etc....
├── www                     # PHP-Apache persistence files
│   └── ...                 # etc.... Your Web Project go here
└── Dockerfile              # PHP-Apache image customization
└── docker-compose.yml      # Docker compose file
```
