FROM ubuntu:12.04

RUN apt-get update && apt-get install -y \
    python-software-properties

RUN apt-add-repository -y ppa:ondrej/php5-oldstable

RUN apt-get update && apt-get install -y \
    curl \
    git \
    libapache2-mod-php5 \
    mysql-client \
    php5 \
    php5-curl \
    php5-mcrypt \
    php5-mysql

RUN php5enmod curl
RUN php5enmod mcrypt
RUN php5enmod mysql

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer
