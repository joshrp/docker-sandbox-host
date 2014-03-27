#!/bin/bash

sudo apt-get update
sudo apt-get -y install linux-image-extra-name -r

mount -M /mnt /var/lib/docker

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get -y install lxc-docker

sudo apt-get update && sudo apt-get -y install cgroup-lite

sudo apt-get install nginx

cp /setupHost/nginx/proxy_buffers.conf /etc/nginx/conf.d/
ln -s /setupHost/nginx/sandbox-proxy /etc/nginx/sites-enabled

service nginx restart


