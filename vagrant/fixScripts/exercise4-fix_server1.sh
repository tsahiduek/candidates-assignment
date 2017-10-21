#!/bin/bash
#add fix to exercise4-server1 here
# without DNS server - creating ip hostname mapping on /etc/hosts file
sed '$ a 192.168.100.11 server2' /etc/hosts -i
