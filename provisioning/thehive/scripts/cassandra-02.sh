#!/bin/bash
mv /var/tmp/provision/cassandra.yaml /etc/cassandra/conf/cassandra.yaml
chown root:root /etc/cassandra/conf/cassandra.yaml
chmod 644 /etc/cassandra/conf/cassandra.yaml