#!/bin/bash

# prin userul vagrant aplicam cateva modificari la setarile SSH
sudo sed -i 's|#PubkeyAuthentication|PubkeyAuthentication|g' /etc/ssh/sshd_config
sudo sed -i 's|#AuthorizedKeysFile|AuthorizedKeysFile|g' /etc/ssh/sshd_config
sudo sed -i 's|#PasswordAuthentication yes|PasswordAuthentication no|g' /etc/ssh/sshd_config
sudo systemctl restart sshd

# copiem pub key-ul pe server pentru a putea fi accesat folosind private key
sudo mkdir /root/.ssh
echo "pub_key...." > authorized_keys
chmod 600 authorized_keys && sudo chown root: authorized_keys && sudo mv authorized_keys /root/.ssh/
