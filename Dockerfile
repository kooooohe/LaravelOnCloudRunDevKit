FROM composer:latest as build
WORKDIR /app
COPY ./app /app

FROM php:7.3-apache

EXPOSE 8080
COPY --from=build /app /var/www/
COPY apache-config/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY apache-config/ports.conf /etc/apache2/ports.conf
RUN chmod 777 -R /var/www
RUN chown -R www-data:www-data /var/www
