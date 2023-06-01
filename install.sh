#!/bin/bash

add-apt-repository ppa:ondrej/php
apt-get update
apt install -y libnode72
apt install -y sudo

# PHP default latest
apt install -y php-dev php-curl php-xml php-gd php-imagick php-zip php-mysql php-sqlite3 php-pgsql php-intl php-xdebug php-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php -i | grep /.+/php.ini -oE)
# PHP 8.2
apt install -y php8.2-dev php8.2-curl php8.2-xml php8.2-gd php8.2-imagick php8.2-zip php8.2-mysql php8.2-sqlite3 php8.2-pgsql php8.2-intl php8.2-xdebug php8.2-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php -i | grep /.+/php.ini -oE)
# PHP 8.1
apt install -y php8.1-dev php8.1-curl php8.1-xml php8.1-gd php8.1-imagick php8.1-zip php8.1-mysql php8.1-sqlite3 php8.1-pgsql php8.1-intl php8.1-xdebug php8.1-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php8.1 -i | grep /.+/php.ini -oE)
# PHP 8
apt install -y php8.0-dev php8.0-curl php8.0-xml php8.0-gd php8.0-imagick php8.0-zip php8.0-mysql php8.0-sqlite3 php8.0-pgsql php8.0-intl php8.0-xdebug php8.0-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php8.0 -i | grep /.+/php.ini -oE)
# PHP 7.4
apt install -y php7.4-dev php7.4-curl php7.4-xml php7.4-gd php7.4-imagick php7.4-zip php7.4-mysql php7.4-sqlite3 php7.4-pgsql php7.4-intl php7.4-xdebug php7.4-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php7.4 -i | grep /.+/php.ini -oE)

# Composer
apt install -y unzip
apt install -y curl
curl -sS https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php

# Symfony
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
sudo apt update
sudo apt install symfony-cli -y

# Nodejs
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&
sudo apt-get install -y nodejs

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt update
apt install -y yarn

# SASS
yarn global add sass
