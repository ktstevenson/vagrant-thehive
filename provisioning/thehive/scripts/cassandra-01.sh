#!/bin/bash
yum install -y python2
alternatives --set python /usr/bin/python2
mv /var/tmp/provision/cassandra.repo /etc/yum.repos.d/cassandra.repo
chown root:root /etc/yum.repos.d/cassandra.repo
chmod 644 /etc/yum.repos.d/cassandra.repo
yum install -y cassandra
service cassandra start
systemctl enable cassandra
echo "Sleeping 60 seconds for cassandra to start"
sleep 60
cqlsh localhost --execute "update system.local set cluster_name = 'thp' where key = 'local';"