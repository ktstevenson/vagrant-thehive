#!/bin/bash
mv /var/tmp/provision/application.conf /etc/thehive/application.conf
chown thehive:thehive /etc/thehive/application.conf
chmod 640 /etc/thehive/application.conf
systemctl enable thehive
systemctl start thehive
rmdir /var/tmp/provision
echo "Build complete."
echo "Wait a minute or two and point a browser at http://localhost:9000"