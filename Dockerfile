FROM php:8.3-apache-bullseye

RUN apt update && \
    apt upgrade -y && \
    apt install -y iputils-ping default-mysql-client

RUN docker-php-ext-install mysqli
