FROM ubuntu:20.10
LABEL maintainer="maksimpesko@gmail.com"

# Update and install nginx

RUN apt update && apt install -y \
    nginx && \
# Clean cashe apt    
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/* \
# Add configure to nginx
    echo "daemon off;" >> /etc/nginx/nginx.conf

# Open port 80, 443
EXPOSE 80 443

# Run NGINX
CMD ["nginx", "-g", "daemon off;"]