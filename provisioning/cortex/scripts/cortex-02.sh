#!/bin/bash
mv /var/tmp/provision/application.conf /etc/cortex/application.conf
chown root:cortex /etc/cortex/application.conf
chmod 640 /etc/cortex/application.conf
systemctl enable cortex
systemctl start cortex
rmdir /var/tmp/provision
echo "Cortex build complete."
echo "Wait a minute or two and point a browser at http://localhost:9001"