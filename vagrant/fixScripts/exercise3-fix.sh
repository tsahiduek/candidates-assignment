#!/bin/bash
#add fix to exercise3 here

#changing deny to allow on apache2 default config file and reload the service
sed  -i  's/deny from all/Allow from all/i'  /etc/apache2/sites-available/default
service  apache2 reload
