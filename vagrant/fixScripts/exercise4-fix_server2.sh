#!/bin/bash
#add fix to exercise4-server2 here
# without DNS server - creating ip hostname mapping on /etc/hosts file
sed '$ a 192.168.100.10 server1' /etc/hosts -i
