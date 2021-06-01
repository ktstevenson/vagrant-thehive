#!/bin/bash
mv /var/tmp/provision/thehive.repo /etc/yum.repos.d/thehive.repo
chown root:root /etc/yum.repos.d/thehive.repo
chmod 644 /etc/yum.repos.d/thehive.repo
rpm --import https://raw.githubusercontent.com/TheHive-Project/TheHive/master/PGP-PUBLIC-KEY
yum install -y thehive4
mkdir -p /opt/thp/thehive/index
chown thehive:thehive /opt/thp/thehive/index
chmod 700 /opt/thp/thehive/index
mkdir -p /opt/thp/thehive/files
chown thehive:thehive /opt/thp/thehive/files
chmod 700 /opt/thp/thehive/files
chmod 700 /opt/thp/thehive/database
mv /etc/thehive/application.conf /etc/thehive/application.conf.original