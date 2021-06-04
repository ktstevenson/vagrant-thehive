#!/bin/bash
mv /var/tmp/provision/elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo
chown root:root /etc/yum.repos.d/elasticsearch.repo
chmod 644 /etc/yum.repos.d/elasticsearch.repo
yum install --enablerepo=elasticsearch -y elasticsearch
systemctl enable elasticsearch.service