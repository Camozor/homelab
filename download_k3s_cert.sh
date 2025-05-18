#!/usr/bin/env bash

scp root@homelab:/etc/rancher/k3s/k3s.yaml .
HOMELAB_IP=$(tailscale status | grep homelab | awk '{print $1}')
sed -i "s/127.0.0.1/$HOMELAB_IP/g" k3s.yaml
