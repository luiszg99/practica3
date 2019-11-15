#!/bin/bash
#actualizamos 
apt-get update
#instalamos apache
apt-get install apache2 -y
#instalar librerias de apache
apt-get install php libapache2-mod-php php-mysql -y
#instalar adminer
cd /var/www/html
mkdir adminer
cd adminer
wget https://github.com/vrana/adminer/releases/download/v4.7.3/adminer-4.7.3-mysql.php
mv adminer-4.7.3-mysql.php index.php
#instalar git
apt-get install git -y
cd /var/www/html
rm -rf iaw-practica-lamp
git clone https://github.com/josejuansanchez/iaw-practica-lamp.git
sudo chown www-data:www-data iaw-practica-lamp * -R
#cambiar el archivo config.php
cd /var/www/html/iaw-practica-lamp/src/
sudo sed -i "s/localhost/54.146.53.16/" config.php
cat config.php
#conectar con mysql
telnet 54.146.53.16 3306 