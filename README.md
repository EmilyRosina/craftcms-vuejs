Craft CMS & Vue
===============

### Getting Started

  #### Setup Steps
  - 1️⃣ add your chosen: `database`, `user`, and `password`
  - 2️⃣ add your chosen `MYSQL_DATABASE`, `MYSQL_USER` and `MYSQL_PASSWORD`

### Files to configure
    ├── craft
    │   └── config
    │     └ db.php 2️⃣
    │
    └ docker-compose.yml 1️⃣

### Docker Commands

  #### to BUILD from docker file
  _If you change a service’s Dockerfile or the contents of its build directory, run the cmd below to rebuild it._

    docker-build

  ##### to LAUNCH the container (keep in foreground)
    docker-compose up

  ##### to LAUNCH the container (keep in background)
    docker-compose up -d

  ##### to stop the container (but keep db data)
    docker-compose stop

  ##### to START the container

  ##### to stop and remove containers (inc. delete db data)
    docker-compose down