#!/bin/bash

add-apt-repository ppa:ondrej/php
apt-get update
apt install -y libnode72

# PHP default latest
apt install -y php-dev php-curl php-xml php-gd php-imagick php-zip php-mysql php-sqlite3 php-pgsql php-intl php-xdebug php-mbstring
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
# PHP 7.3
apt install -y php7.3-dev php7.3-curl php7.3-xml php7.3-gd php7.3-imagick php7.3-zip php7.3-mysql php7.3-sqlite3 php7.3-pgsql php7.3-intl php7.3-xdebug php7.3-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php7.3 -i | grep /.+/php.ini -oE)
# PHP 7.2
apt install -y php7.2-dev php7.2-curl php7.2-xml php7.2-gd php7.2-imagick php7.2-zip php7.2-mysql php7.2-sqlite3 php7.2-pgsql php7.2-intl php7.2-xdebug php7.2-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php7.2 -i | grep /.+/php.ini -oE)
# PHP 7.0
apt install -y php7.0-dev php7.0-curl php7.0-xml php7.0-gd php7.0-imagick php7.0-zip php7.0-mysql php7.0-sqlite3 php7.0-pgsql php7.0-intl php7.0-xdebug php7.1-mbstring
echo -e "\n\nxdebug.mode=debug" | tee -a $(php7.0 -i | grep /.+/php.ini -oE)

# Composer
apt install -y unzip
apt install -y curl
curl -sS https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php

# Symfony
wget https://get.symfony.com/cli/installer -O - | bash
mv ~/.symfony/bin/symfony /usr/local/bin/symfony

# Nodejs
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
bash nodesource_setup.sh
rm nodesource_setup.sh
apt install -y libnode72 nodejs # After nodejs is installed it removes libnode72 package

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt update
apt install -y yarn

# SASS
yarn global add sass
