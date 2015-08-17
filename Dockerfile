FROM nginx
MAINTAINER Johannes Goslar
ADD nginx.conf /etc/nginx/nginx.conf
ADD ./passwd/ /etc/nginx/passwd
RUN mkdir -p /var/www/www.fish-shop.net/htdocs
ADD ./htdocs/ /var/www/www.fish-shop.net/htdocs
