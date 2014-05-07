sudo apt-get -y install nginx

sudo cp /setupHost/nginx/proxy_buffers.conf /etc/nginx/conf.d/
sudo ln -s /setupHost/nginx/sandbox-proxy /etc/nginx/sites-enabled

sudo service nginx restart
