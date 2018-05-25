#!/bin/sh

set -x
set -e

vagrant_home=/home/vagrant
vagrant_pubkey_url="https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub"

mkdir ${vagrant_home}/.ssh

curl -o ${vagrant_home}/.ssh/authorized_keys ${vagrant_pubkey_url}

chown -R vagrant:vagrant ${vagrant_home}/.ssh
chmod -R 0700 ${vagrant_home}/.ssh
chmod 0644  ${vagrant_home}/.ssh/authorized_keys