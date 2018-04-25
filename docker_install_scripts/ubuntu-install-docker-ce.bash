#!/bin/bash

# update system
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# install docker requirements
apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# add docker repository GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add docker repository into apt-get source list
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# install docker community edition
apt-get update
apt-get install -y docker-ce

# remove old packages & clear cache
apt-get autoremove -y
apt-get clean
reboot
