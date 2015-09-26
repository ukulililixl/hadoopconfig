#!/bin/sh

chmod u+w /etc/sudoers
sed -i '19a hadoop ALL=(ALL:ALL) ALL ' /etc/sudoers
chmod u-w /etc/sudoers
