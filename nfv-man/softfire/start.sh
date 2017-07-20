#!/bin/bash

export myIp=`hostname -I`
echo "Detected my ip address: $myIp"
# sed -i "s/nfvman/${myIp}/g" /etc/softfire/nfv-manager.ini
# cat /etc/softfire/nfv-manager.ini | grep ip

nfv-manager
