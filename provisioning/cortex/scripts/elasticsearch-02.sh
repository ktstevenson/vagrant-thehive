#!/bin/bash
mv /var/tmp/provision/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
chown root:elasticsearch /etc/elasticsearch/elasticsearch.yml
chmod 660 /etc/elasticsearch/elasticsearch.yml
systemctl start elasticsearch
echo "Sleeping 30 seconds for elasticsearch to start"
sleep 30