bash install-Debian.sh -it WORKSPACE -ls true

wget https://download.onlyoffice.com/install/install-Debian/bootstrap.sh -O  install-Debian/bootstrap.sh


wget https://download.onlyoffice.com/install/install-Debian/tools.sh -O  install-Debian/tools.sh
wget https://download.onlyoffice.com/install/install-Debian/check-ports.sh -O install-Debian/check-ports.sh
wget https://download.onlyoffice.com/install/install-Debian/install-preq.sh -O install-Debian/install-preq.sh
wget https://download.onlyoffice.com/install/install-Debian/install-app.sh -O install-Debian/install-app.sh




source install-Debian/tools.sh
source install-Debian/check-ports.sh
source install-Debian/install-preq.sh
source install-Debian/install-app.sh

sudo systemctl stop nginx.service
sudo systemctl start postgresql.service 
sudo systemctl start rabbitmq-server.service
sudo systemctl start redis-server.service 