FROM ubuntu:20.10
LABEL maintainer="maksimpesko@gmail.com"

# Update and install nginx
RUN apt update && \
    apt install -y nginx && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    chown -R www-data:www-data /var/www/html

# Clean cashe apt
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Open port 80
EXPOSE 80

# Run NGINX
CMD ["/usr/sbin/nginx"]