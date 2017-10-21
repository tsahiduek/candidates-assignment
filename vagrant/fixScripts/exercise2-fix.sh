#!/bin/bash
#add fix to exercise2 here

# remove directing www.ascii-art.de ot localhost
sed -i '/ascii/d' /etc/hosts
