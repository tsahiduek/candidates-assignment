#!/bin/bash
#add fix to exercise5-server2 here

# ignore host key checking by setting user config file for ssh
cat <<EOT >> /home/vagrant/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
EOT

# authenticate server2 to ssh passowrdless from server1
cat /vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
# use the same private key of server1 to autenticate server2 to ssh passwordless to server1
mv /vagrant/.ssh/id_rsa /home/vagrant/.ssh/

rm -rf /vagrant/.ssh
