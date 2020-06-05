#!/usr/bin/env bash

sudo apt install -y privoxy
sudo bash -c "echo 'forward-socks5 / 127.0.0.1:2333 127.0.0.1:8118' >> /etc/privoxy/config"
service privoxy restart
echo privoxy install success
