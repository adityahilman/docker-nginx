# Simple Nginx + HHVM Docker Image 
OS version : Ubuntu 16.04 <br />
Nginx Version : 1.10.0 <br />
HHVM Version : 3.11.1 <br />

# How To
* Build docker image with docker-compose <br />
`docker-compose build`

* Run docker container as daemon or background <br />
`docker-compose up -d`

* Verify docker container is running <br />
`docker-compose ps` <br />
```
   Name                  Command               State          Ports         
---------------------------------------------------------------------------
nginx_web_1   /bin/sh -c service hhvm st ...   Up      0.0.0.0:8000->80/tcp 
```

* Verify docker container is accessible from browser using port 8000
