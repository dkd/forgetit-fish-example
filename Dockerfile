FROM nginx
MAINTAINER Johannes Goslar
ADD nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/www/www.fish-shop.net/htdocs
ADD index.html /var/www/www.fish-shop.net/htdocs/index.html
