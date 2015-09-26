#!/bin/bash

now=`pwd`
echo 'export http_proxy=http://proxy.cse.cuhk.edu.hk:8000' >> $now/.bashrc
echo 'export https_proxy=$http_proxy' >> $now/.bashrc
echo 'export ftp_proxy=$http_proxy' >> $now/.bashrc
echo 'export rsync_proxy=$http_proxy' >> $now/.bashrc
echo 'export socks_proxy=socks.cse.cuhk.edu.hk:1080' >> $now/.bashrc
echo 'export no_proxy="localhost,127.0.0.0/8,127.0.1.1,127.0.1.1*,local.home, 137.189.88.0/22, 192.168.0.0/16"' >> $now/.bashrc


sudo chmod u+w /etc/sudoers
sudo sed -i '$a Defaults env_keep += "http_proxy https_proxy socks_proxy ftp_proxy no_proxy"' /etc/sudoers
sudo chmod u-w /etc/sudoers


