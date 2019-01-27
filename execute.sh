#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
cp fix-hdmi-audio.sh /usr/local/bin/
cp fix-hdmi-audio.service /etc/systemd/system/
chmod +x /usr/local/bin/fix-hdmi-audio.sh
systemctl enable fix-hdmi-audio.service
