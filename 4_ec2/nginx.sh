#!/bin/bash

sudo yum update -y
sudo yum install -y nginx
echo "<h1>Menino do Rappi</h1>" | sudo tee /usr/share/nginx/html/index.html
sudo /etc/init.d/nginx start