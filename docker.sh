#!/bin/bash
echo 'deb https://apt.dockerproject.org/repo debian-stretch main' >> /etc/apt/sources.list
apt update
apt install apt-transport-https ca-certificates curl gnupg2 lsb-release software-properties-common bash socat jq
curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/debian/gpg | apt-key add -
echo "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/debian stretch stable" >>/etc/apt/sources.list
apt update
apt install docker-ce
systemctl start docker
systemctl enable docker
