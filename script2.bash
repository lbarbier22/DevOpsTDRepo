#!/bin/bash

# Install the cron package
sudo apt-get install cron

# Start the cron service
sudo service cron start

#Recreate the root folder "personnages" at your user home each 5 min with a suffix number
cron_tab="*/5 * * * * /bin/bash /script1.bash /personnages-\$(date +\%Y-\%m-\%d)"

(crontab -l; echo "$cron_tab" ) | crontab -