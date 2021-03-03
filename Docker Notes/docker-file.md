> FROM debian

RUN apt-get update && apt-get install -y apache2 && apt-get clean
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

ADD index.html /var/www/html/
#Pode ser COPY ou ADD, mas o ADD é bem melhor.

LABEL description="Webserver"
LABEL version="1.0.0"

USER www-data

WORKDIR /var/www/html

VOLUME /var/www/html
EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]

### Mais um FROM no arquivo.

> FROM golang AS buildando
ADD . /src
WORKDIR /src
RUN go build -o goapp

FROM alpine:3.1
WORKDIR /app
COPY --from=buildando /src/goapp /app
ENTRYPOINT ./goapp