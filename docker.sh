#!/bin/bash
apt-get update
apt-get install linux-image-extra-`uname -r`

apt-get install software-properties-common
# add the sources to your apt
add-apt-repository ppa:dotcloud/lxc-docker

# update
apt-get update

# install
apt-get install lxc-docker
echo '# Change: \
# DEFAULT_FORWARD_POLICY="DROP" \
# to \
DEFAULT_FORWARD_POLICY="ACCEPT"' >> /etc/default/ufw
nano /etc/default/ufw

ufw reload

ufw allow 4243/tcp

