ARG NGINX_VERSION=1.24.0
FROM nginx:${NGINX_VERSION}

COPY malock-site/ /usr/share/nginx/html/
