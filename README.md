# DockerNGINX
NGINX in UBUNTU:20.10
# Run images
docker run -d -v $(pwd)/conf/:/etc/nginx/conf.d/ -v $(pwd)/logs/:/var/log/nginx/ -v $(pwd)/www/:/var/www/html/ --name=nginx -p 8080:80 nginx
#Connect to nginx (http://localhost:8080)
