#!/bin/bash

# update system
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# install openssh-server
apt-get install -y openssh-server

# cleanup
apt-get autoremove -y
apt-get clean