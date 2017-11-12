#lamp

echo "installing lamp.."
sudo apt update
sudo apt install apache2
sudo apache2ctl configtest

echo "Adjust the Firewall to Allow Web Traffic"
sudo ufw app list
sudo ufw app info "Apache Full"

echo "Allow incoming traffic for this profile"
sudo ufw allow in "Apache Full"

echo "installing mysql.."
sudo apt install mysql-server

echo "installing php.."
sudo apt install php libapache2-mod-php php-mcrypt php-mysql

sudo systemctl status apache2

