#!/bin/bash

sed -i '1a 10.10.11.40 lxl1' /etc/hosts
sed -i '2a 10.10.11.55 lxl2' /etc/hosts
sed -i '3a 10.10.11.46 lxl3' /etc/hosts
