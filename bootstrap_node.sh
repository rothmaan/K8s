#!/bin/bash

echo "[TASK 1] Join node to Kubernetes Cluster"
export DEBIAN_FRONTEND=noninteractive
apt-get install -qq -y sshpass >/dev/null
sshpass -p "kubeadmin" scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@master.example.com:/tmp/joincluster.sh /tmp/joincluster.sh >/dev/null 2>&1
if [ -f "/tmp/joincluster.sh" ]; then
  sudo /tmp/joincluster.sh
else
  echo "Failed to copy joincluster.sh from master node."
  exit 1
fi
#


