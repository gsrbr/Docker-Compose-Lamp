# Docker Compose Lamp
Something like LAMP using Docker Compose, I've created this repository for help someone whos need a light for make a web server with docker composer, in this example I will show how to set up PHP with Apache and MySQL, both using official images from Docker Hub

## Requirements
- Docker
- Docker composer

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

### Acess URLs (Defined on docker compose)
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

## Testing
### PHP server (Apache)
Crete file _./www/index.php_ and write this coode below
``` php
<?php
phpinfo();
?>
```
now access the localhost:80, if the server is working you gonna see all the informations of the php server

### DB and PHPMyAdmin
Surf to localhost:3003, if the container is working you gonna se a login pange of the PHPMyAdmin 

Credentials defined on docker compose
| Input | Value |
| --- | --- |
| server | db | 
| username | root |
| password | toor |

If the db it's working you can make the login

### Obs
#### DB Connection
**You can only use db as a server thanks to the link tag in the docker compose** On the php script you must to use db for make the connection with the database
Eg.:
``` php
<?php
$servername = "db";
$username = "root";
$password = "toor";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
```
