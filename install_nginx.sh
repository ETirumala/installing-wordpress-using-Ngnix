#PREPARE AND UPDATE UBUNTU
sudo apt update && sudo apt dist-upgrade && sudo apt autoremove
echo "*******Preparing and Updating ubuntu*******"
sleep 2s

#After updating Ubuntu, run the commands below to install Nginx HTTP Server.
sudo apt install nginx
echo "*******INstalling Nginx in done*******"
sleep 2s

#After installing Nginx, the commands below can be used to stop, start and enable Nginx service to always start up with the server boots.
#Stop Nginx Server
sudo systemctl stop nginx.service
echo "*******Stoped Nginx Server in done*******"
sleep 2s

#Starting Nginx server
sudo systemctl start nginx.service
echo "**********Started Nginx Server**********"
sleep 2s

#Checking Status server
sudo systemctl status nginx.service
echo "**********Checked Status of Nginx Server**********"
sleep 2s

#enabling Nginx server
sudo systemctl enable nginx.service
echo "**********Enabled the nginx.service************"
sleep 2s

#INSTALL MARIADB DATABASE SERVER
#MariaDB is the default database server on majority of Linux distributions… and WordPress requires a database server.. run the commands below to install MariaDB.
sudo apt install mariadb-server mariadb-client
echo "**********MARIADB DATABASE IS INSTALLED************"
sleep 2s

#After installing, the commands below can be used to stop, start and enable MariaDB service to always start up when the server boots.
sudo systemctl stop mariadb.service
echo "**********MARIADB DATABASE IS Stoped************"
sleep 2s
sudo systemctl start mariadb.service
echo "**********MARIADB DATABASE IS STARTED************"
sleep 2s
sudo systemctl status mariadb.service
echo "**********MARIADB DATABASE IS STATUS CHECKED ************"
sleep 2s
sudo systemctl enable mariadb.service
echo "**********MARIADB DATABASE IS ENABLED************"
sleep 2s

#After that, run the commands below to secure MariaDB server and create a new root password.
sudo mysql_secure_installation
echo "**********MYSQL SECURE INSTALLED************"
sleep 2s

#INSTALL PHP-FPM AND RELATED MODULES
sudo apt install php-fpm php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl
echo "**********PHP-FPM AND RELATED MODULES ARE INSTALLED************"
sleep 2s

cd /etc/php/7.2/fpm/
echo "**********Changing to fpm directory************"
sleep 2s

vim php.ini
