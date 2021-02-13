#!/bin/bash

add-apt-repository ppa:ondrej/php
apt-get update

# PHP 8
apt install -y php-dev php-curl php-xml php-gd php-imagick php-zip php-mysql php-sqlite3 php-pgsql
# PHP 8
apt install -y php8.0-dev php8.0-curl php8.0-xml php8.0-gd php8.0-imagick php8.0-zip php8.0-mysql php8.0-sqlite3 php8.0-pgsql
# PHP 7.4
apt install -y php7.4-dev php7.4-curl php7.4-xml php7.4-gd php7.4-imagick php7.4-zip php7.4-mysql php7.4-sqlite3 php7.4-pgsql
# PHP 7.3
apt install -y php7.3-dev php7.3-curl php7.3-xml php7.3-gd php7.3-imagick php7.3-zip php7.3-mysql php7.3-sqlite3 php7.3-pgsql
# PHP 7.2
apt install -y php7.2-dev php7.2-curl php7.2-xml php7.2-gd php7.2-imagick php7.2-zip php7.2-mysql php7.2-sqlite3 php7.2-pgsql

# Composer
apt install -y unzip
curl -sS https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php

# Symfony
wget https://get.symfony.com/cli/installer -O - | bash
mv ~/.symfony/bin/symfony /usr/local/bin/symfony
