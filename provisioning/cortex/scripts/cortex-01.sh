#!/bin/bash
mv /var/tmp/provision/thehive.repo /etc/yum.repos.d/thehive.repo
chown root:root /etc/yum.repos.d/thehive.repo
chmod 644 /etc/yum.repos.d/thehive.repo
rpm --import https://raw.githubusercontent.com/TheHive-Project/TheHive/master/PGP-PUBLIC-KEY
yum install -y cortex