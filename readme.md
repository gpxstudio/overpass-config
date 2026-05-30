This repository contains the scripts and config files that are running the Overpass instance for [gpx.studio](https://github.com/gpxstudio/gpx.studio).

### Docker

Install Docker on the server by following the instructions here: https://docs.docker.com/engine/install/ubuntu/.
Then, add user to the docker group:
```
sudo usermod -a -G docker $USER
```
and log out and log in.

### Launch the Overpass API

Then, simply run the Docker image created by [wiktorn/Overpass-API](https://github.com/wiktorn/Overpass-API).
```
./run.sh
```

### NGINX

Install Nginx:
```
sudo apt install nginx
```
Then, replace the default configuration and reload the service.
```
sudo rm /etc/nginx/sites-enabled/default
sudo cp overpass.conf /etc/nginx/sites-enabled/
sudo nginx -s reload
```

### Certbot

Use certbot to enable HTTPS, follow instructions here: https://certbot.eff.org/instructions.

### Infrastructure

1 server with 128GB of RAM and 2 960GB SSD.
