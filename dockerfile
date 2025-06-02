
FROM nginx:alpine

LABEL maintainer="NURLIAS" \
      email="iiishjj72@gmail.com" \
      version="1.0"
 

RUN apk update && apk add --no-cache apache2


RUN mkdir -p /var/www/localhost/htdocs

COPY index.html /usr/share/nginx/html/index.html

COPY icecream.html/ /usr/share/nginx/html/icecream.html/
COPY images/ /usr/share/nginx/html/images/
COPY services.html/ /usr/share/nginx/html/services.html/
COPY contact.html/ /usr/share/nginx/html/contact.html/

EXPOSE 8080

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
