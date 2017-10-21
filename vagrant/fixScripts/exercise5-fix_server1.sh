#!/bin/bash
#add fix to exercise5-server1 here

# ignore host key checking by setting user config file for ssh
cat <<EOT >> /home/vagrant/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
EOT

# create key pair
su - vagrant -c "ssh-keygen -t rsa -N '""' -f /home/vagrant/.ssh/id_rsa"
# authenticate server1 to itself (this will be used for server2 to ssh passwordless to server1 using the same id_rsa private key)
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
# copy private and public key for use of server2
mkdir /vagrant/.ssh
cp /home/vagrant/.ssh/id_rsa* /vagrant/.ssh/
